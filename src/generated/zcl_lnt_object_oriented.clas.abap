* TS: src/abap/5_syntax/_object_oriented.ts:18:1 ObjectOriented
CLASS zcl_lnt_object_oriented DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA scope TYPE REF TO zcl_lnt_current_scope.
    METHODS constructor IMPORTING i_scope TYPE REF TO zcl_lnt_current_scope.
    METHODS from_interface_by_name IMPORTING i_name TYPE string i_ignore TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS add_aliased_attributes IMPORTING i_class_definition_ad05 TYPE REF TO zif_lnt_class_definition.
    METHODS add_aliased_types IMPORTING i_class_definition_ad05 TYPE REF TO zif_lnt_class_definition.
    METHODS find_method_in_interface IMPORTING i_interface_name TYPE string i_method_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_a38e878f.
    METHODS find_method_via_alias IMPORTING i_method_name TYPE string i_def TYPE REF TO zif_lnt_interface_definition RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_a38e878f.
    METHODS method_reference_extras IMPORTING i_found_def TYPE REF TO zif_lnt_interface_definition i_oo_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ireference_extras.
    METHODS find_class_name IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE string.
    METHODS find_interfaces IMPORTING i_cd TYPE REF TO zif_lnt_interface_definition RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS has_friendship IMPORTING i_cd TYPE REF TO zif_lnt_class_definition i_friend_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS search_event IMPORTING i_def TYPE REF TO zif_lnt_interface_definition i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_event_definition.
    METHODS search_attribute_name IMPORTING i_def TYPE REF TO zif_lnt_interface_definition i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_class_attribute.
    METHODS search_type_name IMPORTING i_def TYPE REF TO zif_lnt_interface_definition i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS search_constant_name IMPORTING i_def TYPE REF TO zif_lnt_interface_definition i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_class_constant.
    METHODS search_method_name IMPORTING i_def TYPE REF TO zif_lnt_interface_definition i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_a38e878f.
    METHODS find_method IMPORTING i_def TYPE REF TO zif_lnt_interface_definition i_method_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definition.
    METHODS find_method_in_super IMPORTING i_child TYPE REF TO zif_lnt_interface_definition i_method_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definition.
    METHODS find_super_definition IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_class_definition.
    METHODS frm_spr_clsss_and_intrfcs IMPORTING i_child TYPE REF TO zif_lnt_class_definition.
    METHODS from_super_classes IMPORTING i_child TYPE REF TO zif_lnt_class_definition RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS list_interfaces_recursive IMPORTING i_definition TYPE REF TO zif_lnt_interface_definition RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS from_interfaces IMPORTING i_definition TYPE REF TO zif_lnt_interface_definition i_skip_34cc TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS fn_is_friend IMPORTING i_cd TYPE REF TO zif_lnt_class_definition i_friends TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_object_oriented IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_scope.
    DATA(t2) = t1.
    me->scope = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `scope`.
  ENDMETHOD.

  METHOD from_interface_by_name.
    DATA(t1) = i_name.
    DATA(t2) = i_ignore.
    DATA t3 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA(t6) = me->scope.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA(t10) = t1.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t10.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t8 = t12.
    ENDIF.
    t7 = t8.
    DATA t13 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = t7.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t15.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ELSEIF t20->has = abap_false.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
      DATA t21 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t21.
      t13 = t21.
    ELSE.
      DATA t22 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t26 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t27) = t5.
      t26 = t27->current.
      t25 = t26.
      DATA t28 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t25.
      IF t30 IS INITIAL.
        t29 = abap_true.
      ENDIF.
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t31.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zif_lnt_interface_definition.
        DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t34) = t25.
        t33 = t34.
        DATA t35 TYPE string.
        DATA(t36) = t7.
        t35 = t36->value.
        t32 = t33->find_interface_definition( i_name = t35 ).
        t28 = t32.
      ENDIF.
      t24 = t28.
      t23 = t24.
      DATA t37 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t37.
      DATA t38 TYPE abap_bool.
      DATA(t39) = t23.
      t38 = xsdbool( t39 IS BOUND ).
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t40.
        DATA(t41) = abap_true.
        IF t41 = abap_true.
          DATA t42 TYPE REF TO zif_lnt_interface_definition.
          DATA(t43) = t23.
          t42 = t43.
          t40 = t42.
        ELSE.
          DATA t44 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t44.
          t40 = t44.
        ENDIF.
        t37 = t40.
      ELSE.
        DATA t45 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t45.
        DATA t46 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t47.
        DATA t48 TYPE REF TO zif_lnt_object.
        CLEAR t48.
        DATA t49 TYPE REF TO zif_lnt_registry.
        DATA(t50) = t5.
        t49 = t50->reg.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        DATA(t52) = abap_true.
        IF t52 = abap_true.
          DATA(t53) = |INTF|.
          DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t54->has = abap_true.
          t54->value = t53.
          t51 = t54.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t55.
          t51 = t55.
        ENDIF.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA t58 TYPE string.
          DATA(t59) = t7.
          t58 = t59->value.
          DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t60->has = abap_true.
          t60->value = t58.
          t56 = t60.
        ELSE.
          DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t61.
          t56 = t61.
        ENDIF.
        t48 = t49->get_object( i_type_9913 = t51 i_name = t56 ).
        DATA t62 TYPE REF TO object.
        t62 = t48.
        t47 ?= t62.
        t46 = t47.
        DATA t63 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t63.
        DATA t64 TYPE abap_bool.
        DATA(t65) = t46.
        t64 = xsdbool( t65 IS BOUND ).
        IF t64 = abap_true.
          DATA t66 TYPE REF TO zif_lnt_interface_definition.
          DATA t67 TYPE REF TO zcl_lnt_ob_interface.
          DATA t68 TYPE REF TO zcl_lnt_ob_interface.
          DATA(t69) = t46.
          t68 = t69.
          t67 = t68.
          DATA t70 TYPE REF TO zif_lnt_interface_definition.
          DATA(t71) = t67.
          t70 = t71->def.
          t66 = t70.
          t63 = t66.
        ELSE.
          DATA t72 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t72.
          t63 = t72.
        ENDIF.
        t45 = t63.
        t37 = t45.
      ENDIF.
      t22 = t37.
      t13 = t22.
    ENDIF.
    t4 = t13.
    t3 = t4.
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = VALUE abap_bool( ).
    DATA t75 TYPE REF TO zif_lnt_interface_definition.
    DATA(t76) = t3.
    t75 = t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    t77 = t78.
    DATA(t79) = VALUE abap_bool( ).
    DATA(t80) = t75.
    IF t80 IS INITIAL.
      t79 = abap_true.
    ENDIF.
    t74 = t79.
    t73 = t74.
    IF t74 = abap_false.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t2.
      DATA t83 TYPE string.
      DATA(t84) = t1.
      DATA(t85) = strlen( t84 ).
      t83 = t84.
      IF t83 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t83 TO UPPER CASE.
      ELSE.
        t83 = zlnt_runtime_uppe_91169605024d=>full( t83 ).
      ENDIF.
      t81 = t82->includes( p0 = t83 ).
      t73 = t81.
    ENDIF.
    IF t73 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t86.
      result = t86.
      RETURN.
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t90.
    t89 = t90.
    DATA(t91) = t89.
    DATA t92 TYPE string.
    DATA(t93) = t1.
    DATA(t94) = strlen( t93 ).
    t92 = t93.
    IF t92 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t92 TO UPPER CASE.
    ELSE.
      t92 = zlnt_runtime_uppe_91169605024d=>full( t92 ).
    ENDIF.
    t91->load( ).
    APPEND t92 TO t91->items.
    t91->save( ).
    DATA(t95) = t89.
    t88 = t95.
    t87 = t88.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t97 TYPE REF TO zif_lnt_type_definitions.
    DATA t98 TYPE REF TO zif_lnt_interface_definition.
    DATA(t99) = t3.
    t98 = t99.
    t97 = t98->get_type_definitions( ).
    t96 = t97->get_all( ).
    DATA t100 TYPE REF TO zcl_lnt_type_definitions_entry.
    CLEAR t100.
    DATA t101 TYPE REF TO object.
    CLEAR t101.
    DATA(t102) = VALUE i( ).
    DO.
      t96->load( ).
      IF t102 >= lines( t96->items ).
        EXIT.
      ENDIF.
      CLEAR t101.
      READ TABLE t96->items INDEX t102 + 1 INTO t101.
      t102 = t102 + 1.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      CLEAR t100.
      IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t103 ?= t101.
        DATA t104 TYPE REF TO object.
        t104 = t103->as_ref( ).
        t100 ?= t104.
      ELSE.
        t100 ?= t101.
      ENDIF.
      DATA(t105) = VALUE string( ).
      DATA(t106) = VALUE string( ).
      DATA t107 TYPE string.
      DATA(t108) = t1.
      DATA(t109) = |~|.
      DATA(t110) = strlen( t108 ).
      t107 = |{ t108 }{ t109 }|.
      DATA(t111) = VALUE string( ).
      DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t114) = t100.
      t113 = t114->type_cba0.
      t112 = t113.
      DATA(t115) = VALUE string( ).
      DATA t116 TYPE string.
      DATA t117 TYPE string.
      DATA t118 TYPE REF TO zcl_lnt_abstract_token.
      DATA t119 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t120) = t112.
      t119 = t120->token.
      t118 = t119.
      DATA t121 TYPE string.
      DATA(t122) = t118.
      t121 = t122->str.
      t117 = t121.
      t116 = t117.
      DATA(t123) = VALUE abap_bool( ).
      DATA(t124) = VALUE string( ).
      DATA(t125) = t116.
      DATA(t126) = 0.
      DATA(t127) = 1.
      DATA(t128) = strlen( t125 ).
      IF t126 < 0.
        t126 = t126 + t128.
        IF t126 < 0.
          t126 = 0.
        ENDIF.
      ENDIF.
      IF t126 > t128 OR t127 <= 0.
        CLEAR t124.
      ELSE.
        IF t127 > t128 - t126.
          t127 = t128 - t126.
        ENDIF.
        t124 = t125+t126(t127).
      ENDIF.
      DATA(t129) = |!|.
      t123 = xsdbool( t124 = t129 ).
      IF t123 = abap_true.
        DATA(t130) = VALUE string( ).
        DATA t131 TYPE string.
        DATA(t132) = t116.
        t131 = t132.
        DATA(t133) = VALUE string( ).
        DATA(t134) = t131.
        DATA(t135) = 1.
        DATA t136 TYPE i.
        DATA(t137) = t131.
        DATA(t138) = strlen( t137 ).
        t136 = t138.
        DATA(t139) = strlen( t134 ).
        IF t135 < 0.
          t135 = t135 + t139.
          IF t135 < 0.
            t135 = 0.
          ENDIF.
        ENDIF.
        IF t135 > t139 OR t136 <= 0.
          CLEAR t133.
        ELSE.
          IF t136 > t139 - t135.
            t136 = t139 - t135.
          ENDIF.
          t133 = t134+t135(t136).
        ENDIF.
        t130 = t133.
        t116 = t130.
      ENDIF.
      DATA(t140) = t116.
      t115 = t140.
      t111 = t115.
      DATA(t141) = strlen( t107 ).
      t106 = |{ t107 }{ t111 }|.
      t105 = t106.
      DATA(t142) = me->scope.
      DATA(t143) = t105.
      DATA t144 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t144.
      DATA(t145) = abap_true.
      IF t145 = abap_true.
        DATA t146 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t147) = t100.
        t146 = t147->type_cba0.
        t144 = t146.
      ELSE.
        DATA t148 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t148.
        t144 = t148.
      ENDIF.
      t142->add_type_named( i_name = t143 i_type_9913 = t144 ).
    ENDDO.
    DATA(t149) = me->scope.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t151 TYPE REF TO zif_lnt_attributes.
    DATA t152 TYPE REF TO zif_lnt_interface_definition.
    DATA(t153) = t3.
    t152 = t153.
    t151 = t152->get_attributes( ).
    t150 = t151->get_constants( ).
    DATA t154 TYPE string.
    DATA(t155) = t1.
    DATA(t156) = |~|.
    DATA(t157) = strlen( t155 ).
    t154 = |{ t155 }{ t156 }|.
    t149->add_list_prefix( i_identifiers = t150 i_prefix = t154 ).
    DATA(t158) = me->scope.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zif_lnt_attributes.
    DATA t161 TYPE REF TO zif_lnt_interface_definition.
    DATA(t162) = t3.
    t161 = t162.
    t160 = t161->get_attributes( ).
    t159 = t160->get_static( ).
    DATA t163 TYPE string.
    DATA(t164) = t1.
    DATA(t165) = |~|.
    DATA(t166) = strlen( t164 ).
    t163 = |{ t164 }{ t165 }|.
    t158->add_list_prefix( i_identifiers = t159 i_prefix = t163 ).
    DATA(t167) = me->scope.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t169 TYPE REF TO zif_lnt_attributes.
    DATA t170 TYPE REF TO zif_lnt_interface_definition.
    DATA(t171) = t3.
    t170 = t171.
    t169 = t170->get_attributes( ).
    t168 = t169->get_instance( ).
    DATA t172 TYPE string.
    DATA(t173) = t1.
    DATA(t174) = |~|.
    DATA(t175) = strlen( t173 ).
    t172 = |{ t173 }{ t174 }|.
    t167->add_list_prefix( i_identifiers = t168 i_prefix = t172 ).
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t177 TYPE REF TO zif_lnt_interface_definition.
    DATA(t178) = t3.
    t177 = t178.
    t176 = t177->get_implementing( ).
    DATA t179 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t179.
    DATA t180 TYPE REF TO object.
    CLEAR t180.
    DATA(t181) = VALUE i( ).
    DO.
      t176->load( ).
      IF t181 >= lines( t176->items ).
        EXIT.
      ENDIF.
      CLEAR t180.
      READ TABLE t176->items INDEX t181 + 1 INTO t180.
      t181 = t181 + 1.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      CLEAR t179.
      IF t180 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t182 ?= t180.
        DATA t183 TYPE REF TO object.
        t183 = t182->as_ref( ).
        t179 ?= t183.
      ELSE.
        t179 ?= t180.
      ENDIF.
      DATA(t184) = VALUE abap_bool( ).
      DATA(t185) = t2.
      DATA t186 TYPE string.
      DATA t187 TYPE string.
      DATA(t188) = t179.
      t187 = t188->name.
      DATA(t189) = strlen( t187 ).
      t186 = t187.
      IF t186 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t186 TO UPPER CASE.
      ELSE.
        t186 = zlnt_runtime_uppe_91169605024d=>full( t186 ).
      ENDIF.
      t184 = t185->includes( p0 = t186 ).
      IF t184 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t190) = VALUE i( ).
      DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t192 TYPE string.
      DATA(t193) = t179.
      t192 = t193->name.
      DATA(t194) = t2.
      t191 = me->from_interface_by_name( i_name = t192 i_ignore = t194 ).
      DATA(t195) = VALUE string( ).
      t191->dense( ).
      DATA(t196) = VALUE i( ).
      DO.
        t191->load( ).
        IF t196 >= lines( t191->items ).
          EXIT.
        ENDIF.
        CLEAR t195.
        READ TABLE t191->items INDEX t196 + 1 INTO t195.
        IF t191->has( t196 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t196 = t196 + 1.
        DATA(t197) = t87.
        DATA(t198) = t195.
        t197->load( ).
        APPEND t198 TO t197->items.
        t197->save( ).
      ENDDO.
      DATA t199 TYPE i.
      DATA(t200) = t87.
      t200->load( ).
      t199 = lines( t200->items ).
      t190 = t199.
      DATA(t201) = t2.
      DATA t202 TYPE string.
      DATA t203 TYPE string.
      DATA(t204) = t179.
      t203 = t204->name.
      DATA(t205) = strlen( t203 ).
      t202 = t203.
      IF t202 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t202 TO UPPER CASE.
      ELSE.
        t202 = zlnt_runtime_uppe_91169605024d=>full( t202 ).
      ENDIF.
      t201->load( ).
      APPEND t202 TO t201->items.
      t201->save( ).
      DATA(t206) = t87.
      DATA t207 TYPE string.
      DATA t208 TYPE string.
      DATA(t209) = t179.
      t208 = t209->name.
      DATA(t210) = strlen( t208 ).
      t207 = t208.
      IF t207 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t207 TO UPPER CASE.
      ELSE.
        t207 = zlnt_runtime_uppe_91169605024d=>full( t207 ).
      ENDIF.
      t206->load( ).
      APPEND t207 TO t206->items.
      t206->save( ).
    ENDDO.
    DATA(t211) = t87.
    result = t211.

  ENDMETHOD.

  METHOD add_aliased_attributes.
    DATA(t1) = i_class_definition_ad05.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    t4 = t5->get_aliases( ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t3.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA(t9) = t3.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      t6 = t10.
    ENDIF.
    t2 = t6.
    DATA t11 TYPE REF TO zcl_lnt_alias.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t2->load( ).
      IF t13 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t2->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE string.
      DATA t17 TYPE string.
      DATA t18 TYPE REF TO zcl_lnt_alias.
      DATA(t19) = t11.
      t18 = t19.
      DATA t20 TYPE string.
      DATA(t21) = t18.
      t20 = t21->component.
      t17 = t20.
      t16 = t17.
      DATA t22 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_current_scope.
      DATA(t25) = me->scope.
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t29) = t16.
      DATA(t30) = |~|.
      DATA(t31) = strlen( t29 ).
      DATA t32 TYPE i.
      DATA(t33) = VALUE i( ).
      DATA(t34) = VALUE i( ).
      DATA t35 TYPE i.
      DATA(t36) = VALUE string( ).
      CREATE OBJECT t28.
      t35 = strlen( t30 ).
      t32 = 0.
      IF t35 = 0.
        WHILE t32 < t31.
          t36 = t29+t32(1).
          APPEND t36 TO t28->items.
          t32 = t32 + 1.
        ENDWHILE.
      ELSE.
        WHILE t32 <= t31.
          FIND FIRST OCCURRENCE OF t30 IN SECTION OFFSET t32 OF t29 MATCH OFFSET t33.
          IF sy-subrc = 0.
            t34 = t33 - t32.
          ELSE.
            t33 = -1.
            t34 = t31 - t32.
          ENDIF.
          CLEAR t36.
          IF t34 > 0.
            t36 = t29+t32(t34).
          ENDIF.
          APPEND t36 TO t28->items.
          IF t33 < 0.
            EXIT.
          ENDIF.
          t32 = t33 + t35.
        ENDWHILE.
      ENDIF.
      DATA(t37) = 0.
      t27 = t28->get( p0 = t37 ).
      t26 = t27.
      DATA t38 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t38.
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t41) = t26.
      t40 = t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      t42 = t43.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = t40.
      IF t45 IS INITIAL.
        t44 = abap_true.
      ELSEIF t45->has = abap_false.
        t44 = abap_true.
      ENDIF.
      t39 = t44.
      IF t39 = abap_true.
        DATA t46 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t46.
        t38 = t46.
      ELSE.
        DATA t47 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t47.
        DATA t48 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t48.
        DATA t49 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t49.
        DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t51 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t52) = t24.
        t51 = t52->current.
        t50 = t51.
        DATA t53 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = t50.
        IF t55 IS INITIAL.
          t54 = abap_true.
        ENDIF.
        IF t54 = abap_true.
          DATA t56 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t56.
          t53 = t56.
        ELSE.
          DATA t57 TYPE REF TO zif_lnt_interface_definition.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t59) = t50.
          t58 = t59.
          DATA t60 TYPE string.
          DATA(t61) = t26.
          t60 = t61->value.
          t57 = t58->find_interface_definition( i_name = t60 ).
          t53 = t57.
        ENDIF.
        t49 = t53.
        t48 = t49.
        DATA t62 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t62.
        DATA t63 TYPE abap_bool.
        DATA(t64) = t48.
        t63 = xsdbool( t64 IS BOUND ).
        IF t63 = abap_true.
          DATA t65 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t65.
          DATA(t66) = abap_true.
          IF t66 = abap_true.
            DATA t67 TYPE REF TO zif_lnt_interface_definition.
            DATA(t68) = t48.
            t67 = t68.
            t65 = t67.
          ELSE.
            DATA t69 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t69.
            t65 = t69.
          ENDIF.
          t62 = t65.
        ELSE.
          DATA t70 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t70.
          DATA t71 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t72.
          DATA t73 TYPE REF TO zif_lnt_object.
          CLEAR t73.
          DATA t74 TYPE REF TO zif_lnt_registry.
          DATA(t75) = t24.
          t74 = t75->reg.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t77) = abap_true.
          IF t77 = abap_true.
            DATA(t78) = |INTF|.
            DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t79->has = abap_true.
            t79->value = t78.
            t76 = t79.
          ELSE.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            t76 = t80.
          ENDIF.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA(t82) = abap_true.
          IF t82 = abap_true.
            DATA t83 TYPE string.
            DATA(t84) = t26.
            t83 = t84->value.
            DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t85->has = abap_true.
            t85->value = t83.
            t81 = t85.
          ELSE.
            DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t86.
            t81 = t86.
          ENDIF.
          t73 = t74->get_object( i_type_9913 = t76 i_name = t81 ).
          DATA t87 TYPE REF TO object.
          t87 = t73.
          t72 ?= t87.
          t71 = t72.
          DATA t88 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t88.
          DATA t89 TYPE abap_bool.
          DATA(t90) = t71.
          t89 = xsdbool( t90 IS BOUND ).
          IF t89 = abap_true.
            DATA t91 TYPE REF TO zif_lnt_interface_definition.
            DATA t92 TYPE REF TO zcl_lnt_ob_interface.
            DATA t93 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t94) = t71.
            t93 = t94.
            t92 = t93.
            DATA t95 TYPE REF TO zif_lnt_interface_definition.
            DATA(t96) = t92.
            t95 = t96->def.
            t91 = t95.
            t88 = t91.
          ELSE.
            DATA t97 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t97.
            t88 = t97.
          ENDIF.
          t70 = t88.
          t62 = t70.
        ENDIF.
        t47 = t62.
        t38 = t47.
      ENDIF.
      t23 = t38.
      t22 = t23.
      DATA t98 TYPE abap_bool.
      DATA(t99) = t22.
      t98 = xsdbool( t99 IS BOUND ).
      IF t98 = abap_true.
        DATA t100 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t100.
        DATA t101 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t101.
        DATA t102 TYPE REF TO zif_lnt_attributes.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        DATA(t104) = t22.
        t103 = t104.
        t102 = t103->get_attributes( ).
        DATA(t105) = VALUE string( ).
        DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t107) = t16.
        DATA(t108) = |~|.
        DATA(t109) = strlen( t107 ).
        DATA t110 TYPE i.
        DATA(t111) = VALUE i( ).
        DATA(t112) = VALUE i( ).
        DATA t113 TYPE i.
        DATA(t114) = VALUE string( ).
        CREATE OBJECT t106.
        t113 = strlen( t108 ).
        t110 = 0.
        IF t113 = 0.
          WHILE t110 < t109.
            t114 = t107+t110(1).
            APPEND t114 TO t106->items.
            t110 = t110 + 1.
          ENDWHILE.
        ELSE.
          WHILE t110 <= t109.
            FIND FIRST OCCURRENCE OF t108 IN SECTION OFFSET t110 OF t107 MATCH OFFSET t111.
            IF sy-subrc = 0.
              t112 = t111 - t110.
            ELSE.
              t111 = -1.
              t112 = t109 - t110.
            ENDIF.
            CLEAR t114.
            IF t112 > 0.
              t114 = t107+t110(t112).
            ENDIF.
            APPEND t114 TO t106->items.
            IF t111 < 0.
              EXIT.
            ENDIF.
            t110 = t111 + t113.
          ENDWHILE.
        ENDIF.
        IF t106->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t106->load( ).
        CLEAR t105.
        READ TABLE t106->items INDEX 2 INTO t105.
        t101 = t102->find_by_name( i_name = t105 ).
        t100 = t101.
        DATA t115 TYPE abap_bool.
        DATA(t116) = t100.
        t115 = xsdbool( t116 IS BOUND ).
        IF t115 = abap_true.
          DATA(t117) = me->scope.
          DATA(t118) = VALUE string( ).
          DATA t119 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t120) = t11.
          t119 = t120.
          DATA(t121) = VALUE string( ).
          DATA t122 TYPE string.
          DATA t123 TYPE string.
          DATA t124 TYPE REF TO zcl_lnt_abstract_token.
          DATA t125 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t126) = t119.
          t125 = t126->token.
          t124 = t125.
          DATA t127 TYPE string.
          DATA(t128) = t124.
          t127 = t128->str.
          t123 = t127.
          t122 = t123.
          DATA(t129) = VALUE abap_bool( ).
          DATA(t130) = VALUE string( ).
          DATA(t131) = t122.
          DATA(t132) = 0.
          DATA(t133) = 1.
          DATA(t134) = strlen( t131 ).
          IF t132 < 0.
            t132 = t132 + t134.
            IF t132 < 0.
              t132 = 0.
            ENDIF.
          ENDIF.
          IF t132 > t134 OR t133 <= 0.
            CLEAR t130.
          ELSE.
            IF t133 > t134 - t132.
              t133 = t134 - t132.
            ENDIF.
            t130 = t131+t132(t133).
          ENDIF.
          DATA(t135) = |!|.
          t129 = xsdbool( t130 = t135 ).
          IF t129 = abap_true.
            DATA(t136) = VALUE string( ).
            DATA t137 TYPE string.
            DATA(t138) = t122.
            t137 = t138.
            DATA(t139) = VALUE string( ).
            DATA(t140) = t137.
            DATA(t141) = 1.
            DATA t142 TYPE i.
            DATA(t143) = t137.
            DATA(t144) = strlen( t143 ).
            t142 = t144.
            DATA(t145) = strlen( t140 ).
            IF t141 < 0.
              t141 = t141 + t145.
              IF t141 < 0.
                t141 = 0.
              ENDIF.
            ENDIF.
            IF t141 > t145 OR t142 <= 0.
              CLEAR t139.
            ELSE.
              IF t142 > t145 - t141.
                t142 = t145 - t141.
              ENDIF.
              t139 = t140+t141(t142).
            ENDIF.
            t136 = t139.
            t122 = t136.
          ENDIF.
          DATA(t146) = t122.
          t121 = t146.
          t118 = t121.
          DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t148 TYPE REF TO zif_lnt_union_a346537f.
          DATA(t149) = t100.
          t148 = t149.
          t147 ?= t148.
          t117->add_named_identifier( i_name = t118 i_identifier = t147 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t152) = t1.
    t151 = t152->get_super_class( ).
    t150 = t151.
    DATA(t153) = VALUE abap_bool( ).
    DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t155) = t150.
    t154 = t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    t156 = t157.
    DATA(t158) = VALUE abap_bool( ).
    DATA(t159) = VALUE abap_bool( ).
    DATA(t160) = t154.
    IF t160 IS INITIAL.
      t159 = abap_true.
    ELSEIF t160->has = abap_false.
      t159 = abap_true.
    ENDIF.
    t158 = xsdbool( t159 = abap_false ).
    t153 = t158.
    IF t153 = abap_true.
      DATA t161 TYPE REF TO zif_lnt_class_definition.
      CLEAR t161.
      DATA t162 TYPE REF TO zif_lnt_class_definition.
      CLEAR t162.
      DATA t163 TYPE REF TO zcl_lnt_current_scope.
      DATA(t164) = me->scope.
      t163 = t164.
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t165.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t166.
      DATA(t167) = abap_true.
      IF t167 = abap_true.
        DATA t168 TYPE string.
        DATA(t169) = t150.
        t168 = t169->value.
        DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t170->has = abap_true.
        t170->value = t168.
        t166 = t170.
      ELSE.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        t166 = t171.
      ENDIF.
      t165 = t166.
      DATA t172 TYPE REF TO zif_lnt_class_definition.
      CLEAR t172.
      DATA(t173) = VALUE abap_bool( ).
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t175) = t165.
      t174 = t175.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      t176 = t177.
      DATA(t178) = VALUE abap_bool( ).
      DATA(t179) = t174.
      IF t179 IS INITIAL.
        t178 = abap_true.
      ELSEIF t179->has = abap_false.
        t178 = abap_true.
      ENDIF.
      t173 = t178.
      IF t173 = abap_true.
        DATA t180 TYPE REF TO zif_lnt_class_definition.
        CLEAR t180.
        t172 = t180.
      ELSE.
        DATA t181 TYPE REF TO zif_lnt_class_definition.
        CLEAR t181.
        DATA t182 TYPE REF TO zif_lnt_class_definition.
        CLEAR t182.
        DATA t183 TYPE REF TO zif_lnt_class_definition.
        CLEAR t183.
        DATA t184 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t185 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t186) = t163.
        t185 = t186->current.
        t184 = t185.
        DATA t187 TYPE REF TO zif_lnt_class_definition.
        CLEAR t187.
        DATA(t188) = VALUE abap_bool( ).
        DATA(t189) = t184.
        IF t189 IS INITIAL.
          t188 = abap_true.
        ENDIF.
        IF t188 = abap_true.
          DATA t190 TYPE REF TO zif_lnt_class_definition.
          CLEAR t190.
          t187 = t190.
        ELSE.
          DATA t191 TYPE REF TO zif_lnt_class_definition.
          DATA t192 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t193) = t184.
          t192 = t193.
          DATA t194 TYPE string.
          DATA(t195) = t165.
          t194 = t195->value.
          t191 = t192->find_class_definition( i_name = t194 ).
          t187 = t191.
        ENDIF.
        t183 = t187.
        t182 = t183.
        DATA t196 TYPE REF TO zif_lnt_class_definition.
        CLEAR t196.
        DATA t197 TYPE abap_bool.
        DATA(t198) = t182.
        t197 = xsdbool( t198 IS BOUND ).
        IF t197 = abap_true.
          DATA t199 TYPE REF TO zif_lnt_class_definition.
          CLEAR t199.
          DATA(t200) = abap_true.
          IF t200 = abap_true.
            DATA t201 TYPE REF TO zif_lnt_class_definition.
            DATA(t202) = t182.
            t201 = t202.
            t199 = t201.
          ELSE.
            DATA t203 TYPE REF TO zif_lnt_class_definition.
            CLEAR t203.
            t199 = t203.
          ENDIF.
          t196 = t199.
        ELSE.
          DATA t204 TYPE REF TO zif_lnt_class_definition.
          CLEAR t204.
          DATA t205 TYPE REF TO zcl_lnt_class.
          CLEAR t205.
          DATA t206 TYPE REF TO zcl_lnt_class.
          CLEAR t206.
          DATA t207 TYPE REF TO zif_lnt_object.
          CLEAR t207.
          DATA t208 TYPE REF TO zif_lnt_registry.
          DATA(t209) = t163.
          t208 = t209->reg.
          DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t210.
          DATA(t211) = abap_true.
          IF t211 = abap_true.
            DATA(t212) = |CLAS|.
            DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t213->has = abap_true.
            t213->value = t212.
            t210 = t213.
          ELSE.
            DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t214.
            t210 = t214.
          ENDIF.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          DATA(t216) = abap_true.
          IF t216 = abap_true.
            DATA t217 TYPE string.
            DATA(t218) = t165.
            t217 = t218->value.
            DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t219->has = abap_true.
            t219->value = t217.
            t215 = t219.
          ELSE.
            DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t220.
            t215 = t220.
          ENDIF.
          t207 = t208->get_object( i_type_9913 = t210 i_name = t215 ).
          DATA t221 TYPE REF TO object.
          t221 = t207.
          t206 ?= t221.
          t205 = t206.
          DATA t222 TYPE REF TO zif_lnt_class_definition.
          CLEAR t222.
          DATA t223 TYPE abap_bool.
          DATA(t224) = t205.
          t223 = xsdbool( t224 IS BOUND ).
          IF t223 = abap_true.
            DATA t225 TYPE REF TO zif_lnt_class_definition.
            DATA t226 TYPE REF TO zcl_lnt_class.
            DATA(t227) = t205.
            t226 = t227.
            t225 = t226->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t222 = t225.
          ELSE.
            DATA t228 TYPE REF TO zif_lnt_class_definition.
            CLEAR t228.
            t222 = t228.
          ENDIF.
          t204 = t222.
          t196 = t204.
        ENDIF.
        t181 = t196.
        t172 = t181.
      ENDIF.
      t162 = t172.
      t161 = t162.
      DATA t229 TYPE abap_bool.
      DATA(t230) = t161.
      t229 = xsdbool( t230 IS BOUND ).
      IF t229 = abap_true.
        DATA t231 TYPE REF TO zif_lnt_class_definition.
        DATA(t232) = t161.
        t231 = t232.
        me->add_aliased_attributes( i_class_definition_ad05 = t231 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD add_aliased_types.
    DATA(t1) = i_class_definition_ad05.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    t4 = t5->get_aliases( ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t3.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA(t9) = t3.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      t6 = t10.
    ENDIF.
    t2 = t6.
    DATA t11 TYPE REF TO zcl_lnt_alias.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t2->load( ).
      IF t13 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t2->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE string.
      DATA t17 TYPE string.
      DATA t18 TYPE REF TO zcl_lnt_alias.
      DATA(t19) = t11.
      t18 = t19.
      DATA t20 TYPE string.
      DATA(t21) = t18.
      t20 = t21->component.
      t17 = t20.
      t16 = t17.
      DATA t22 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_current_scope.
      DATA(t25) = me->scope.
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t29) = t16.
      DATA(t30) = |~|.
      DATA(t31) = strlen( t29 ).
      DATA t32 TYPE i.
      DATA(t33) = VALUE i( ).
      DATA(t34) = VALUE i( ).
      DATA t35 TYPE i.
      DATA(t36) = VALUE string( ).
      CREATE OBJECT t28.
      t35 = strlen( t30 ).
      t32 = 0.
      IF t35 = 0.
        WHILE t32 < t31.
          t36 = t29+t32(1).
          APPEND t36 TO t28->items.
          t32 = t32 + 1.
        ENDWHILE.
      ELSE.
        WHILE t32 <= t31.
          FIND FIRST OCCURRENCE OF t30 IN SECTION OFFSET t32 OF t29 MATCH OFFSET t33.
          IF sy-subrc = 0.
            t34 = t33 - t32.
          ELSE.
            t33 = -1.
            t34 = t31 - t32.
          ENDIF.
          CLEAR t36.
          IF t34 > 0.
            t36 = t29+t32(t34).
          ENDIF.
          APPEND t36 TO t28->items.
          IF t33 < 0.
            EXIT.
          ENDIF.
          t32 = t33 + t35.
        ENDWHILE.
      ENDIF.
      DATA(t37) = 0.
      t27 = t28->get( p0 = t37 ).
      t26 = t27.
      DATA t38 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t38.
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t41) = t26.
      t40 = t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      t42 = t43.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = t40.
      IF t45 IS INITIAL.
        t44 = abap_true.
      ELSEIF t45->has = abap_false.
        t44 = abap_true.
      ENDIF.
      t39 = t44.
      IF t39 = abap_true.
        DATA t46 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t46.
        t38 = t46.
      ELSE.
        DATA t47 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t47.
        DATA t48 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t48.
        DATA t49 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t49.
        DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t51 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t52) = t24.
        t51 = t52->current.
        t50 = t51.
        DATA t53 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = t50.
        IF t55 IS INITIAL.
          t54 = abap_true.
        ENDIF.
        IF t54 = abap_true.
          DATA t56 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t56.
          t53 = t56.
        ELSE.
          DATA t57 TYPE REF TO zif_lnt_interface_definition.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t59) = t50.
          t58 = t59.
          DATA t60 TYPE string.
          DATA(t61) = t26.
          t60 = t61->value.
          t57 = t58->find_interface_definition( i_name = t60 ).
          t53 = t57.
        ENDIF.
        t49 = t53.
        t48 = t49.
        DATA t62 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t62.
        DATA t63 TYPE abap_bool.
        DATA(t64) = t48.
        t63 = xsdbool( t64 IS BOUND ).
        IF t63 = abap_true.
          DATA t65 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t65.
          DATA(t66) = abap_true.
          IF t66 = abap_true.
            DATA t67 TYPE REF TO zif_lnt_interface_definition.
            DATA(t68) = t48.
            t67 = t68.
            t65 = t67.
          ELSE.
            DATA t69 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t69.
            t65 = t69.
          ENDIF.
          t62 = t65.
        ELSE.
          DATA t70 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t70.
          DATA t71 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t72.
          DATA t73 TYPE REF TO zif_lnt_object.
          CLEAR t73.
          DATA t74 TYPE REF TO zif_lnt_registry.
          DATA(t75) = t24.
          t74 = t75->reg.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t77) = abap_true.
          IF t77 = abap_true.
            DATA(t78) = |INTF|.
            DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t79->has = abap_true.
            t79->value = t78.
            t76 = t79.
          ELSE.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            t76 = t80.
          ENDIF.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA(t82) = abap_true.
          IF t82 = abap_true.
            DATA t83 TYPE string.
            DATA(t84) = t26.
            t83 = t84->value.
            DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t85->has = abap_true.
            t85->value = t83.
            t81 = t85.
          ELSE.
            DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t86.
            t81 = t86.
          ENDIF.
          t73 = t74->get_object( i_type_9913 = t76 i_name = t81 ).
          DATA t87 TYPE REF TO object.
          t87 = t73.
          t72 ?= t87.
          t71 = t72.
          DATA t88 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t88.
          DATA t89 TYPE abap_bool.
          DATA(t90) = t71.
          t89 = xsdbool( t90 IS BOUND ).
          IF t89 = abap_true.
            DATA t91 TYPE REF TO zif_lnt_interface_definition.
            DATA t92 TYPE REF TO zcl_lnt_ob_interface.
            DATA t93 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t94) = t71.
            t93 = t94.
            t92 = t93.
            DATA t95 TYPE REF TO zif_lnt_interface_definition.
            DATA(t96) = t92.
            t95 = t96->def.
            t91 = t95.
            t88 = t91.
          ELSE.
            DATA t97 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t97.
            t88 = t97.
          ENDIF.
          t70 = t88.
          t62 = t70.
        ENDIF.
        t47 = t62.
        t38 = t47.
      ENDIF.
      t23 = t38.
      t22 = t23.
      DATA t98 TYPE abap_bool.
      DATA(t99) = t22.
      t98 = xsdbool( t99 IS BOUND ).
      IF t98 = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t100.
        DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t101.
        DATA t102 TYPE REF TO zif_lnt_type_definitions.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        DATA(t104) = t22.
        t103 = t104.
        t102 = t103->get_type_definitions( ).
        DATA(t105) = VALUE string( ).
        DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t107) = t16.
        DATA(t108) = |~|.
        DATA(t109) = strlen( t107 ).
        DATA t110 TYPE i.
        DATA(t111) = VALUE i( ).
        DATA(t112) = VALUE i( ).
        DATA t113 TYPE i.
        DATA(t114) = VALUE string( ).
        CREATE OBJECT t106.
        t113 = strlen( t108 ).
        t110 = 0.
        IF t113 = 0.
          WHILE t110 < t109.
            t114 = t107+t110(1).
            APPEND t114 TO t106->items.
            t110 = t110 + 1.
          ENDWHILE.
        ELSE.
          WHILE t110 <= t109.
            FIND FIRST OCCURRENCE OF t108 IN SECTION OFFSET t110 OF t107 MATCH OFFSET t111.
            IF sy-subrc = 0.
              t112 = t111 - t110.
            ELSE.
              t111 = -1.
              t112 = t109 - t110.
            ENDIF.
            CLEAR t114.
            IF t112 > 0.
              t114 = t107+t110(t112).
            ENDIF.
            APPEND t114 TO t106->items.
            IF t111 < 0.
              EXIT.
            ENDIF.
            t110 = t111 + t113.
          ENDWHILE.
        ENDIF.
        IF t106->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t106->load( ).
        CLEAR t105.
        READ TABLE t106->items INDEX 2 INTO t105.
        t101 = t102->get_by_name( i_name = t105 ).
        t100 = t101.
        DATA t115 TYPE abap_bool.
        DATA(t116) = t100.
        t115 = xsdbool( t116 IS BOUND ).
        IF t115 = abap_true.
          DATA t117 TYPE REF TO zcl_lnt_current_scope.
          DATA(t118) = me->scope.
          t117 = t118.
          DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t119.
          DATA t120 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t120.
          DATA(t121) = abap_true.
          IF t121 = abap_true.
            DATA t122 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t123) = t100.
            t122 = t123.
            t120 = t122.
          ELSE.
            DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t124.
            t120 = t124.
          ENDIF.
          t119 = t120.
          DATA(t125) = VALUE abap_bool( ).
          DATA t126 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t127) = t119.
          t126 = t127.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          t128 = t129.
          DATA(t130) = VALUE abap_bool( ).
          DATA(t131) = t126.
          IF t131 IS INITIAL.
            t130 = abap_true.
          ENDIF.
          t125 = t130.
          IF t125 = abap_true.
          ELSE.
            DATA(t132) = t117.
            DATA(t133) = VALUE string( ).
            DATA t134 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t135 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t136) = t119.
            t135 = t136.
            t134 = t135.
            DATA(t137) = VALUE string( ).
            DATA t138 TYPE string.
            DATA t139 TYPE string.
            DATA t140 TYPE REF TO zcl_lnt_abstract_token.
            DATA t141 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t142) = t134.
            t141 = t142->token.
            t140 = t141.
            DATA t143 TYPE string.
            DATA(t144) = t140.
            t143 = t144->str.
            t139 = t143.
            t138 = t139.
            DATA(t145) = VALUE abap_bool( ).
            DATA(t146) = VALUE string( ).
            DATA(t147) = t138.
            DATA(t148) = 0.
            DATA(t149) = 1.
            DATA(t150) = strlen( t147 ).
            IF t148 < 0.
              t148 = t148 + t150.
              IF t148 < 0.
                t148 = 0.
              ENDIF.
            ENDIF.
            IF t148 > t150 OR t149 <= 0.
              CLEAR t146.
            ELSE.
              IF t149 > t150 - t148.
                t149 = t150 - t148.
              ENDIF.
              t146 = t147+t148(t149).
            ENDIF.
            DATA(t151) = |!|.
            t145 = xsdbool( t146 = t151 ).
            IF t145 = abap_true.
              DATA(t152) = VALUE string( ).
              DATA t153 TYPE string.
              DATA(t154) = t138.
              t153 = t154.
              DATA(t155) = VALUE string( ).
              DATA(t156) = t153.
              DATA(t157) = 1.
              DATA t158 TYPE i.
              DATA(t159) = t153.
              DATA(t160) = strlen( t159 ).
              t158 = t160.
              DATA(t161) = strlen( t156 ).
              IF t157 < 0.
                t157 = t157 + t161.
                IF t157 < 0.
                  t157 = 0.
                ENDIF.
              ENDIF.
              IF t157 > t161 OR t158 <= 0.
                CLEAR t155.
              ELSE.
                IF t158 > t161 - t157.
                  t158 = t161 - t157.
                ENDIF.
                t155 = t156+t157(t158).
              ENDIF.
              t152 = t155.
              t138 = t152.
            ENDIF.
            DATA(t162) = t138.
            t137 = t162.
            t133 = t137.
            DATA t163 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t163.
            DATA(t164) = abap_true.
            IF t164 = abap_true.
              DATA t165 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t166) = t119.
              t165 = t166.
              t163 = t165.
            ELSE.
              DATA t167 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t167.
              t163 = t167.
            ENDIF.
            t132->add_type_named( i_name = t133 i_type_9913 = t163 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t170) = t1.
    t169 = t170->get_super_class( ).
    t168 = t169.
    DATA(t171) = VALUE abap_bool( ).
    DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t173) = t168.
    t172 = t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    t174 = t175.
    DATA(t176) = VALUE abap_bool( ).
    DATA(t177) = VALUE abap_bool( ).
    DATA(t178) = t172.
    IF t178 IS INITIAL.
      t177 = abap_true.
    ELSEIF t178->has = abap_false.
      t177 = abap_true.
    ENDIF.
    t176 = xsdbool( t177 = abap_false ).
    t171 = t176.
    IF t171 = abap_true.
      DATA t179 TYPE REF TO zif_lnt_class_definition.
      CLEAR t179.
      DATA t180 TYPE REF TO zif_lnt_class_definition.
      CLEAR t180.
      DATA t181 TYPE REF TO zcl_lnt_current_scope.
      DATA(t182) = me->scope.
      t181 = t182.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t183.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      DATA(t185) = abap_true.
      IF t185 = abap_true.
        DATA t186 TYPE string.
        DATA(t187) = t168.
        t186 = t187->value.
        DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t188->has = abap_true.
        t188->value = t186.
        t184 = t188.
      ELSE.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        t184 = t189.
      ENDIF.
      t183 = t184.
      DATA t190 TYPE REF TO zif_lnt_class_definition.
      CLEAR t190.
      DATA(t191) = VALUE abap_bool( ).
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t193) = t183.
      t192 = t193.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t195.
      t194 = t195.
      DATA(t196) = VALUE abap_bool( ).
      DATA(t197) = t192.
      IF t197 IS INITIAL.
        t196 = abap_true.
      ELSEIF t197->has = abap_false.
        t196 = abap_true.
      ENDIF.
      t191 = t196.
      IF t191 = abap_true.
        DATA t198 TYPE REF TO zif_lnt_class_definition.
        CLEAR t198.
        t190 = t198.
      ELSE.
        DATA t199 TYPE REF TO zif_lnt_class_definition.
        CLEAR t199.
        DATA t200 TYPE REF TO zif_lnt_class_definition.
        CLEAR t200.
        DATA t201 TYPE REF TO zif_lnt_class_definition.
        CLEAR t201.
        DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t203 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t204) = t181.
        t203 = t204->current.
        t202 = t203.
        DATA t205 TYPE REF TO zif_lnt_class_definition.
        CLEAR t205.
        DATA(t206) = VALUE abap_bool( ).
        DATA(t207) = t202.
        IF t207 IS INITIAL.
          t206 = abap_true.
        ENDIF.
        IF t206 = abap_true.
          DATA t208 TYPE REF TO zif_lnt_class_definition.
          CLEAR t208.
          t205 = t208.
        ELSE.
          DATA t209 TYPE REF TO zif_lnt_class_definition.
          DATA t210 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t211) = t202.
          t210 = t211.
          DATA t212 TYPE string.
          DATA(t213) = t183.
          t212 = t213->value.
          t209 = t210->find_class_definition( i_name = t212 ).
          t205 = t209.
        ENDIF.
        t201 = t205.
        t200 = t201.
        DATA t214 TYPE REF TO zif_lnt_class_definition.
        CLEAR t214.
        DATA t215 TYPE abap_bool.
        DATA(t216) = t200.
        t215 = xsdbool( t216 IS BOUND ).
        IF t215 = abap_true.
          DATA t217 TYPE REF TO zif_lnt_class_definition.
          CLEAR t217.
          DATA(t218) = abap_true.
          IF t218 = abap_true.
            DATA t219 TYPE REF TO zif_lnt_class_definition.
            DATA(t220) = t200.
            t219 = t220.
            t217 = t219.
          ELSE.
            DATA t221 TYPE REF TO zif_lnt_class_definition.
            CLEAR t221.
            t217 = t221.
          ENDIF.
          t214 = t217.
        ELSE.
          DATA t222 TYPE REF TO zif_lnt_class_definition.
          CLEAR t222.
          DATA t223 TYPE REF TO zcl_lnt_class.
          CLEAR t223.
          DATA t224 TYPE REF TO zcl_lnt_class.
          CLEAR t224.
          DATA t225 TYPE REF TO zif_lnt_object.
          CLEAR t225.
          DATA t226 TYPE REF TO zif_lnt_registry.
          DATA(t227) = t181.
          t226 = t227->reg.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          DATA(t229) = abap_true.
          IF t229 = abap_true.
            DATA(t230) = |CLAS|.
            DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t231->has = abap_true.
            t231->value = t230.
            t228 = t231.
          ELSE.
            DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t232.
            t228 = t232.
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          DATA(t234) = abap_true.
          IF t234 = abap_true.
            DATA t235 TYPE string.
            DATA(t236) = t183.
            t235 = t236->value.
            DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t237->has = abap_true.
            t237->value = t235.
            t233 = t237.
          ELSE.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            t233 = t238.
          ENDIF.
          t225 = t226->get_object( i_type_9913 = t228 i_name = t233 ).
          DATA t239 TYPE REF TO object.
          t239 = t225.
          t224 ?= t239.
          t223 = t224.
          DATA t240 TYPE REF TO zif_lnt_class_definition.
          CLEAR t240.
          DATA t241 TYPE abap_bool.
          DATA(t242) = t223.
          t241 = xsdbool( t242 IS BOUND ).
          IF t241 = abap_true.
            DATA t243 TYPE REF TO zif_lnt_class_definition.
            DATA t244 TYPE REF TO zcl_lnt_class.
            DATA(t245) = t223.
            t244 = t245.
            t243 = t244->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t240 = t243.
          ELSE.
            DATA t246 TYPE REF TO zif_lnt_class_definition.
            CLEAR t246.
            t240 = t246.
          ENDIF.
          t222 = t240.
          t214 = t222.
        ENDIF.
        t199 = t214.
        t190 = t199.
      ENDIF.
      t180 = t190.
      t179 = t180.
      DATA t247 TYPE abap_bool.
      DATA(t248) = t179.
      t247 = xsdbool( t248 IS BOUND ).
      IF t247 = abap_true.
        DATA t249 TYPE REF TO zif_lnt_class_definition.
        DATA(t250) = t179.
        t249 = t250.
        me->add_aliased_types( i_class_definition_ad05 = t249 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD find_method_in_interface.
    DATA(t1) = i_interface_name.
    DATA(t2) = i_method_name.
    DATA t3 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA(t6) = me->scope.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA(t10) = t1.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t10.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t8 = t12.
    ENDIF.
    t7 = t8.
    DATA t13 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = t7.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t15.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ELSEIF t20->has = abap_false.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
      DATA t21 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t21.
      t13 = t21.
    ELSE.
      DATA t22 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t26 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t27) = t5.
      t26 = t27->current.
      t25 = t26.
      DATA t28 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t25.
      IF t30 IS INITIAL.
        t29 = abap_true.
      ENDIF.
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t31.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zif_lnt_interface_definition.
        DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t34) = t25.
        t33 = t34.
        DATA t35 TYPE string.
        DATA(t36) = t7.
        t35 = t36->value.
        t32 = t33->find_interface_definition( i_name = t35 ).
        t28 = t32.
      ENDIF.
      t24 = t28.
      t23 = t24.
      DATA t37 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t37.
      DATA t38 TYPE abap_bool.
      DATA(t39) = t23.
      t38 = xsdbool( t39 IS BOUND ).
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t40.
        DATA(t41) = abap_true.
        IF t41 = abap_true.
          DATA t42 TYPE REF TO zif_lnt_interface_definition.
          DATA(t43) = t23.
          t42 = t43.
          t40 = t42.
        ELSE.
          DATA t44 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t44.
          t40 = t44.
        ENDIF.
        t37 = t40.
      ELSE.
        DATA t45 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t45.
        DATA t46 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t47.
        DATA t48 TYPE REF TO zif_lnt_object.
        CLEAR t48.
        DATA t49 TYPE REF TO zif_lnt_registry.
        DATA(t50) = t5.
        t49 = t50->reg.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        DATA(t52) = abap_true.
        IF t52 = abap_true.
          DATA(t53) = |INTF|.
          DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t54->has = abap_true.
          t54->value = t53.
          t51 = t54.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t55.
          t51 = t55.
        ENDIF.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA t58 TYPE string.
          DATA(t59) = t7.
          t58 = t59->value.
          DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t60->has = abap_true.
          t60->value = t58.
          t56 = t60.
        ELSE.
          DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t61.
          t56 = t61.
        ENDIF.
        t48 = t49->get_object( i_type_9913 = t51 i_name = t56 ).
        DATA t62 TYPE REF TO object.
        t62 = t48.
        t47 ?= t62.
        t46 = t47.
        DATA t63 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t63.
        DATA t64 TYPE abap_bool.
        DATA(t65) = t46.
        t64 = xsdbool( t65 IS BOUND ).
        IF t64 = abap_true.
          DATA t66 TYPE REF TO zif_lnt_interface_definition.
          DATA t67 TYPE REF TO zcl_lnt_ob_interface.
          DATA t68 TYPE REF TO zcl_lnt_ob_interface.
          DATA(t69) = t46.
          t68 = t69.
          t67 = t68.
          DATA t70 TYPE REF TO zif_lnt_interface_definition.
          DATA(t71) = t67.
          t70 = t71->def.
          t66 = t70.
          t63 = t66.
        ELSE.
          DATA t72 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t72.
          t63 = t72.
        ENDIF.
        t45 = t63.
        t37 = t45.
      ENDIF.
      t22 = t37.
      t13 = t22.
    ENDIF.
    t4 = t13.
    t3 = t4.
    DATA t73 TYPE abap_bool.
    DATA(t74) = t3.
    t73 = xsdbool( t74 IS BOUND ).
    IF t73 = abap_true.
      DATA t75 TYPE REF TO zif_lnt_method_definition.
      CLEAR t75.
      DATA t76 TYPE REF TO zif_lnt_method_definition.
      CLEAR t76.
      DATA t77 TYPE REF TO zif_lnt_method_definitions.
      DATA t78 TYPE REF TO zif_lnt_interface_definition.
      DATA(t79) = t3.
      t78 = t79.
      t77 = t78->get_method_definitions( ).
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA(t81) = abap_true.
      IF t81 = abap_true.
        DATA(t82) = t2.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t82.
        t80 = t83.
      ELSE.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        t80 = t84.
      ENDIF.
      t76 = t77->get_by_name( i_name = t80 ).
      t75 = t76.
      DATA t85 TYPE abap_bool.
      DATA(t86) = t75.
      t85 = xsdbool( t86 IS BOUND ).
      IF t85 = abap_true.
        DATA t87 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t87.
        DATA(t88) = abap_true.
        IF t88 = abap_true.
          DATA t89 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t89.
          DATA t90 TYPE REF TO zif_lnt_method_definition.
          CLEAR t90.
          DATA t91 TYPE REF TO zif_lnt_method_definition.
          CLEAR t91.
          DATA(t92) = abap_true.
          IF t92 = abap_true.
            DATA t93 TYPE REF TO zif_lnt_method_definition.
            DATA(t94) = t75.
            t93 = t94.
            t91 = t93.
          ELSE.
            DATA t95 TYPE REF TO zif_lnt_method_definition.
            CLEAR t95.
            t91 = t95.
          ENDIF.
          t90 = t91.
          DATA t96 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t96.
          DATA t97 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t97.
          DATA(t98) = abap_true.
          IF t98 = abap_true.
            DATA t99 TYPE REF TO zif_lnt_interface_definition.
            DATA(t100) = t3.
            t99 = t100.
            t97 = t99.
          ELSE.
            DATA t101 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t101.
            t97 = t101.
          ENDIF.
          t96 = t97.
          t89 = NEW zcl_lnt_shape_a38e878f( i_method = t90 i_def = t96 ).
          CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
          t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t102.
          IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t102 ).
          ENDIF.
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t103 ).
          ENDIF.
          CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
          t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t104) = |method|.
          DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t105.
          IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
          ENDIF.
          DATA(t106) = |def|.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
          ENDIF.
          t87 = t89.
        ELSE.
          DATA t108 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t108.
          t87 = t108.
        ENDIF.
        result = t87.
        RETURN.
      ENDIF.
      DATA t109 TYPE REF TO zcl_lnt_shape_a38e878f.
      DATA(t110) = t2.
      DATA t111 TYPE REF TO zif_lnt_interface_definition.
      DATA(t112) = t3.
      t111 = t112.
      t109 = me->find_method_via_alias( i_method_name = t110 i_def = t111 ).
      result = t109.
      RETURN.
    ENDIF.
    DATA t113 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t113.
    result = t113.

  ENDMETHOD.

  METHOD find_method_via_alias.
    DATA(t1) = i_method_name.
    DATA(t2) = i_def.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t2.
    t5 = t6->get_aliases( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t4.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA(t10) = t4.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t11.
      t7 = t11.
    ENDIF.
    t3 = t7.
    DATA t12 TYPE REF TO zcl_lnt_alias.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t3->load( ).
      IF t14 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t3->items INDEX t14 + 1 INTO t13.
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
      DATA(t18) = VALUE string( ).
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t21) = t12.
      t20 = t21.
      DATA(t22) = VALUE string( ).
      DATA t23 TYPE string.
      DATA t24 TYPE string.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t27) = t20.
      t26 = t27->token.
      t25 = t26.
      DATA t28 TYPE string.
      DATA(t29) = t25.
      t28 = t29->str.
      t24 = t28.
      t23 = t24.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE string( ).
      DATA(t32) = t23.
      DATA(t33) = 0.
      DATA(t34) = 1.
      DATA(t35) = strlen( t32 ).
      IF t33 < 0.
        t33 = t33 + t35.
        IF t33 < 0.
          t33 = 0.
        ENDIF.
      ENDIF.
      IF t33 > t35 OR t34 <= 0.
        CLEAR t31.
      ELSE.
        IF t34 > t35 - t33.
          t34 = t35 - t33.
        ENDIF.
        t31 = t32+t33(t34).
      ENDIF.
      DATA(t36) = |!|.
      t30 = xsdbool( t31 = t36 ).
      IF t30 = abap_true.
        DATA(t37) = VALUE string( ).
        DATA t38 TYPE string.
        DATA(t39) = t23.
        t38 = t39.
        DATA(t40) = VALUE string( ).
        DATA(t41) = t38.
        DATA(t42) = 1.
        DATA t43 TYPE i.
        DATA(t44) = t38.
        DATA(t45) = strlen( t44 ).
        t43 = t45.
        DATA(t46) = strlen( t41 ).
        IF t42 < 0.
          t42 = t42 + t46.
          IF t42 < 0.
            t42 = 0.
          ENDIF.
        ENDIF.
        IF t42 > t46 OR t43 <= 0.
          CLEAR t40.
        ELSE.
          IF t43 > t46 - t42.
            t43 = t46 - t42.
          ENDIF.
          t40 = t41+t42(t43).
        ENDIF.
        t37 = t40.
        t23 = t37.
      ENDIF.
      DATA(t47) = t23.
      t22 = t47.
      t19 = t22.
      DATA(t48) = strlen( t19 ).
      t18 = t19.
      IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t18 TO UPPER CASE.
      ELSE.
        t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
      ENDIF.
      DATA t49 TYPE string.
      DATA(t50) = t1.
      DATA(t51) = strlen( t50 ).
      t49 = t50.
      IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t49 TO UPPER CASE.
      ELSE.
        t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
      ENDIF.
      t17 = xsdbool( t18 = t49 ).
      IF t17 = abap_true.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        DATA t54 TYPE REF TO zcl_lnt_alias.
        DATA(t55) = t12.
        t54 = t55.
        DATA t56 TYPE string.
        DATA(t57) = t54.
        t56 = t57->component.
        t53 = t56.
        t52 = t53.
        DATA t58 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t58.
        DATA t59 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t59.
        DATA(t60) = VALUE string( ).
        DATA(t61) = VALUE string( ).
        DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t63) = t52.
        DATA(t64) = |~|.
        DATA(t65) = strlen( t63 ).
        DATA t66 TYPE i.
        DATA(t67) = VALUE i( ).
        DATA(t68) = VALUE i( ).
        DATA t69 TYPE i.
        DATA(t70) = VALUE string( ).
        CREATE OBJECT t62.
        t69 = strlen( t64 ).
        t66 = 0.
        IF t69 = 0.
          WHILE t66 < t65.
            t70 = t63+t66(1).
            APPEND t70 TO t62->items.
            t66 = t66 + 1.
          ENDWHILE.
        ELSE.
          WHILE t66 <= t65.
            FIND FIRST OCCURRENCE OF t64 IN SECTION OFFSET t66 OF t63 MATCH OFFSET t67.
            IF sy-subrc = 0.
              t68 = t67 - t66.
            ELSE.
              t67 = -1.
              t68 = t65 - t66.
            ENDIF.
            CLEAR t70.
            IF t68 > 0.
              t70 = t63+t66(t68).
            ENDIF.
            APPEND t70 TO t62->items.
            IF t67 < 0.
              EXIT.
            ENDIF.
            t66 = t67 + t69.
          ENDWHILE.
        ENDIF.
        IF t62->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t62->load( ).
        CLEAR t61.
        READ TABLE t62->items INDEX 1 INTO t61.
        t60 = t61.
        DATA(t71) = VALUE string( ).
        DATA(t72) = VALUE string( ).
        DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t74) = t52.
        DATA(t75) = |~|.
        DATA(t76) = strlen( t74 ).
        DATA t77 TYPE i.
        DATA(t78) = VALUE i( ).
        DATA(t79) = VALUE i( ).
        DATA t80 TYPE i.
        DATA(t81) = VALUE string( ).
        CREATE OBJECT t73.
        t80 = strlen( t75 ).
        t77 = 0.
        IF t80 = 0.
          WHILE t77 < t76.
            t81 = t74+t77(1).
            APPEND t81 TO t73->items.
            t77 = t77 + 1.
          ENDWHILE.
        ELSE.
          WHILE t77 <= t76.
            FIND FIRST OCCURRENCE OF t75 IN SECTION OFFSET t77 OF t74 MATCH OFFSET t78.
            IF sy-subrc = 0.
              t79 = t78 - t77.
            ELSE.
              t78 = -1.
              t79 = t76 - t77.
            ENDIF.
            CLEAR t81.
            IF t79 > 0.
              t81 = t74+t77(t79).
            ENDIF.
            APPEND t81 TO t73->items.
            IF t78 < 0.
              EXIT.
            ENDIF.
            t77 = t78 + t80.
          ENDWHILE.
        ENDIF.
        IF t73->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t73->load( ).
        CLEAR t72.
        READ TABLE t73->items INDEX 2 INTO t72.
        t71 = t72.
        DATA t82 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t82.
        DATA t83 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t83.
        DATA t84 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t84.
        DATA t85 TYPE REF TO zcl_lnt_current_scope.
        DATA(t86) = me->scope.
        t85 = t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA(t89) = abap_true.
        IF t89 = abap_true.
          DATA(t90) = t60.
          DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t91->has = abap_true.
          t91->value = t90.
          t88 = t91.
        ELSE.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          t88 = t92.
        ENDIF.
        t87 = t88.
        DATA t93 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t93.
        DATA(t94) = VALUE abap_bool( ).
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t96) = t87.
        t95 = t96.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        t97 = t98.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = t95.
        IF t100 IS INITIAL.
          t99 = abap_true.
        ELSEIF t100->has = abap_false.
          t99 = abap_true.
        ENDIF.
        t94 = t99.
        IF t94 = abap_true.
          DATA t101 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t101.
          t93 = t101.
        ELSE.
          DATA t102 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t102.
          DATA t103 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t103.
          DATA t104 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t104.
          DATA t105 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t107) = t85.
          t106 = t107->current.
          t105 = t106.
          DATA t108 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t108.
          DATA(t109) = VALUE abap_bool( ).
          DATA(t110) = t105.
          IF t110 IS INITIAL.
            t109 = abap_true.
          ENDIF.
          IF t109 = abap_true.
            DATA t111 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t111.
            t108 = t111.
          ELSE.
            DATA t112 TYPE REF TO zif_lnt_interface_definition.
            DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t114) = t105.
            t113 = t114.
            DATA t115 TYPE string.
            DATA(t116) = t87.
            t115 = t116->value.
            t112 = t113->find_interface_definition( i_name = t115 ).
            t108 = t112.
          ENDIF.
          t104 = t108.
          t103 = t104.
          DATA t117 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t117.
          DATA t118 TYPE abap_bool.
          DATA(t119) = t103.
          t118 = xsdbool( t119 IS BOUND ).
          IF t118 = abap_true.
            DATA t120 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t120.
            DATA(t121) = abap_true.
            IF t121 = abap_true.
              DATA t122 TYPE REF TO zif_lnt_interface_definition.
              DATA(t123) = t103.
              t122 = t123.
              t120 = t122.
            ELSE.
              DATA t124 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t124.
              t120 = t124.
            ENDIF.
            t117 = t120.
          ELSE.
            DATA t125 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t125.
            DATA t126 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t126.
            DATA t127 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t127.
            DATA t128 TYPE REF TO zif_lnt_object.
            CLEAR t128.
            DATA t129 TYPE REF TO zif_lnt_registry.
            DATA(t130) = t85.
            t129 = t130->reg.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            DATA(t132) = abap_true.
            IF t132 = abap_true.
              DATA(t133) = |INTF|.
              DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t134->has = abap_true.
              t134->value = t133.
              t131 = t134.
            ELSE.
              DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t135.
              t131 = t135.
            ENDIF.
            DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t136.
            DATA(t137) = abap_true.
            IF t137 = abap_true.
              DATA t138 TYPE string.
              DATA(t139) = t87.
              t138 = t139->value.
              DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t140->has = abap_true.
              t140->value = t138.
              t136 = t140.
            ELSE.
              DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t141.
              t136 = t141.
            ENDIF.
            t128 = t129->get_object( i_type_9913 = t131 i_name = t136 ).
            DATA t142 TYPE REF TO object.
            t142 = t128.
            t127 ?= t142.
            t126 = t127.
            DATA t143 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t143.
            DATA t144 TYPE abap_bool.
            DATA(t145) = t126.
            t144 = xsdbool( t145 IS BOUND ).
            IF t144 = abap_true.
              DATA t146 TYPE REF TO zif_lnt_interface_definition.
              DATA t147 TYPE REF TO zcl_lnt_ob_interface.
              DATA t148 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t149) = t126.
              t148 = t149.
              t147 = t148.
              DATA t150 TYPE REF TO zif_lnt_interface_definition.
              DATA(t151) = t147.
              t150 = t151->def.
              t146 = t150.
              t143 = t146.
            ELSE.
              DATA t152 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t152.
              t143 = t152.
            ENDIF.
            t125 = t143.
            t117 = t125.
          ENDIF.
          t102 = t117.
          t93 = t102.
        ENDIF.
        t84 = t93.
        t83 = t84.
        DATA t153 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t153.
        DATA t154 TYPE abap_bool.
        DATA(t155) = t83.
        t154 = xsdbool( t155 IS BOUND ).
        IF t154 = abap_true.
          DATA t156 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t156.
          DATA t157 TYPE REF TO zif_lnt_method_definition.
          CLEAR t157.
          DATA t158 TYPE REF TO zif_lnt_method_definition.
          CLEAR t158.
          DATA t159 TYPE REF TO zif_lnt_method_definitions.
          DATA t160 TYPE REF TO zif_lnt_interface_definition.
          DATA(t161) = t83.
          t160 = t161.
          t159 = t160->get_method_definitions( ).
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t162.
          DATA(t163) = abap_true.
          IF t163 = abap_true.
            DATA(t164) = t71.
            DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t165->has = abap_true.
            t165->value = t164.
            t162 = t165.
          ELSE.
            DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t166.
            t162 = t166.
          ENDIF.
          t158 = t159->get_by_name( i_name = t162 ).
          t157 = t158.
          DATA t167 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t167.
          DATA t168 TYPE abap_bool.
          DATA(t169) = t157.
          t168 = xsdbool( t169 IS BOUND ).
          IF t168 = abap_true.
            DATA t170 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t170.
            DATA(t171) = abap_true.
            IF t171 = abap_true.
              DATA t172 TYPE REF TO zcl_lnt_shape_a38e878f.
              CLEAR t172.
              DATA t173 TYPE REF TO zif_lnt_method_definition.
              CLEAR t173.
              DATA t174 TYPE REF TO zif_lnt_method_definition.
              CLEAR t174.
              DATA(t175) = abap_true.
              IF t175 = abap_true.
                DATA t176 TYPE REF TO zif_lnt_method_definition.
                DATA(t177) = t157.
                t176 = t177.
                t174 = t176.
              ELSE.
                DATA t178 TYPE REF TO zif_lnt_method_definition.
                CLEAR t178.
                t174 = t178.
              ENDIF.
              t173 = t174.
              DATA t179 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t179.
              DATA t180 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t180.
              DATA(t181) = abap_true.
              IF t181 = abap_true.
                DATA t182 TYPE REF TO zif_lnt_interface_definition.
                DATA(t183) = t83.
                t182 = t183.
                t180 = t182.
              ELSE.
                DATA t184 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t184.
                t180 = t184.
              ENDIF.
              t179 = t180.
              t172 = NEW zcl_lnt_shape_a38e878f( i_method = t173 i_def = t179 ).
              CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
              t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t185.
              IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t185 ).
              ENDIF.
              DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t186.
              IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t186 ).
              ENDIF.
              CREATE OBJECT t172->zlnt_json_ownkeys_70e5fd461788.
              t172->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t187) = |method|.
              DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t188.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
              ENDIF.
              DATA(t189) = |def|.
              DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t190.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
              ENDIF.
              t170 = t172.
            ELSE.
              DATA t191 TYPE REF TO zcl_lnt_shape_a38e878f.
              CLEAR t191.
              t170 = t191.
            ENDIF.
            t167 = t170.
          ELSE.
            DATA t192 TYPE REF TO zcl_lnt_shape_a38e878f.
            DATA(t193) = t71.
            DATA t194 TYPE REF TO zif_lnt_interface_definition.
            DATA(t195) = t83.
            t194 = t195.
            t192 = me->find_method_via_alias( i_method_name = t193 i_def = t194 ).
            t167 = t192.
          ENDIF.
          t156 = t167.
          t153 = t156.
        ELSE.
          DATA t196 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t196.
          t153 = t196.
        ENDIF.
        t82 = t153.
        t59 = t82.
        t58 = t59.
        DATA t197 TYPE abap_bool.
        DATA(t198) = t58.
        t197 = xsdbool( t198 IS BOUND ).
        IF t197 = abap_true.
          DATA t199 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t199.
          DATA(t200) = abap_true.
          IF t200 = abap_true.
            DATA t201 TYPE REF TO zcl_lnt_shape_a38e878f.
            DATA(t202) = t58.
            t201 = t202.
            t199 = t201.
          ELSE.
            DATA t203 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t203.
            t199 = t203.
          ENDIF.
          result = t199.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t204 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t204.
    result = t204.

  ENDMETHOD.

  METHOD method_reference_extras.
    DATA(t1) = i_found_def.
    DATA(t2) = i_oo_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_interface_definition.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_ireference_extras.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t12) = t2.
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t13 = t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      t15 = t16.
      t10 = NEW zcl_lnt_ireference_extras( i_oo_name = t11 i_oo_type = t13 i_found_qualified = t15 ).
      CREATE OBJECT t10->zlnt_view_ownkeys_b0e8086400eb.
      t10->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      IF t10->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t17 ).
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t10->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t18 ).
      ENDIF.
      CREATE OBJECT t10->zlnt_json_ownkeys_70e5fd461788.
      t10->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t19) = |ooName|.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      IF t10->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
      ENDIF.
      DATA(t21) = |ooType|.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      IF t10->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
      ENDIF.
      result = t10.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA t26 TYPE REF TO zif_lnt_interface_definition.
    DATA t27 TYPE REF TO zif_lnt_interface_definition.
    DATA(t28) = t1.
    t27 = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = t26.
    IF t31 IS INITIAL.
      t30 = abap_true.
    ENDIF.
    IF t30 = abap_true.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      t29 = t32.
    ELSE.
      DATA t33 TYPE string.
      DATA(t34) = t26.
      t33 = t34->get_name( ).
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t33.
      t29 = t35.
    ENDIF.
    t25 = t29.
    t24 = t25.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = VALUE string( ).
      DATA t40 TYPE abap_bool.
      DATA(t41) = t1.
      t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_ty_class_definition ).
      IF t40 = abap_true.
        DATA(t42) = |CLAS|.
        t39 = t42.
      ELSE.
        DATA(t43) = |INTF|.
        t39 = t43.
      ENDIF.
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t39.
      t37 = t44.
    ELSE.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      t37 = t45.
    ENDIF.
    t36 = t37.
    DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t47.
    t46 = t47.
    t23 = NEW zcl_lnt_ireference_extras( i_oo_name = t24 i_oo_type = t36 i_found_qualified = t46 ).
    CREATE OBJECT t23->zlnt_view_ownkeys_b0e8086400eb.
    t23->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t49 ).
    ENDIF.
    CREATE OBJECT t23->zlnt_json_ownkeys_70e5fd461788.
    t23->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t50) = |ooName|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |ooType|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t23.

  ENDMETHOD.

  METHOD find_class_name.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_statement.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
    t3 = t4.
    IF t4 = abap_false.
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zif_lnt_statement.
      CLEAR t8.
      DATA(t9) = t1.
      t8 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_st_class_definition ).
      t3 = t7.
    ENDIF.
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t10 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t10.
      DATA t11 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = |findClassName, unexpected node type|.
        DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t15->has = abap_true.
        t15->value = t14.
        t12 = t15.
      ELSE.
        DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t16.
        t12 = t16.
      ENDIF.
      t11 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t12 ).
      t10 = NEW #( ).
      t10->payload = t11.
      CLEAR t10->source_value.
      IF t11 IS BOUND.
        DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t17.
        DATA t18 TYPE REF TO object.
        CLEAR t18.
        CLEAR t17.
        t18 = t11.
        TRY.
            t10->source_value ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10->source_value IS NOT BOUND.
          TRY.
              t17 ?= t11.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t17 IS BOUND.
            t10->source_value = t17->source( ).
          ENDIF.
          IF t10->source_value IS NOT BOUND.
            CREATE OBJECT t10->source_value.
            t10->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t10->source_value->oval = t11.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t10.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t20.
    DATA(t21) = t1.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t20 = t21->find_first_expression( i_type_9913 = t22 ).
    t19 = t20.
    DATA(t23) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA(t25) = t19.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    t26 = t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t24.
    IF t29 IS INITIAL.
      t28 = abap_true.
    ENDIF.
    t23 = t28.
    IF t23 = abap_true.
      DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA(t33) = abap_true.
      IF t33 = abap_true.
        DATA(t34) = |findClassName, unexpected node type|.
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t34.
        t32 = t35.
      ELSE.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        t32 = t36.
      ENDIF.
      t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t32 ).
      t30 = NEW #( ).
      t30->payload = t31.
      CLEAR t30->source_value.
      IF t31 IS BOUND.
        DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t37.
        DATA t38 TYPE REF TO object.
        CLEAR t38.
        CLEAR t37.
        t38 = t31.
        TRY.
            t30->source_value ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30->source_value IS NOT BOUND.
          TRY.
              t37 ?= t31.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t37 IS BOUND.
            t30->source_value = t37->source( ).
          ENDIF.
          IF t30->source_value IS NOT BOUND.
            CREATE OBJECT t30->source_value.
            t30->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t30->source_value->oval = t31.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t30.
    ENDIF.
    DATA(t39) = VALUE string( ).
    DATA t40 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t42.
    DATA(t43) = t19.
    t42 = t43.
    t41 = t42->get_first_token( ).
    t40 = t41.
    DATA(t44) = VALUE string( ).
    DATA(t45) = t40.
    t44 = t45->str.
    t39 = t44.
    result = t39.

  ENDMETHOD.

  METHOD find_interfaces.
    DATA(t1) = i_cd.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
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
    DATA(t8) = t4.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA(t10) = t1.
    t9 = t10->get_implementing( ).
    t7 = t8->concat( p0 = t9 ).
    t6 = t7.
    DATA(t11) = t6.
    t3 = t11.
    t2 = t3.
    DATA(t12) = t2.
    DATA t13 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t13.
    DATA t14 TYPE REF TO object.
    CLEAR t14.
    DATA(t15) = VALUE i( ).
    DO.
      t12->load( ).
      IF t15 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t12->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        CLEAR t17.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t20.
      DATA t21 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t22.
      DATA(t23) = me->scope.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA(t27) = VALUE string( ).
        DATA(t28) = t13.
        t27 = t28->name.
        DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t29->has = abap_true.
        t29->value = t27.
        t25 = t29.
      ELSE.
        DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t30.
        t25 = t30.
      ENDIF.
      t24 = t25.
      DATA t31 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t31.
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t34) = t24.
      t33 = t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      t35 = t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t33.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ELSEIF t38->has = abap_false.
        t37 = abap_true.
      ENDIF.
      t32 = t37.
      IF t32 = abap_true.
        DATA t39 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t39.
        t31 = t39.
      ELSE.
        DATA t40 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t40.
        DATA t41 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t41.
        DATA t42 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t42.
        DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t44.
        DATA(t45) = t22.
        t44 = t45->current.
        t43 = t44.
        DATA t46 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t46.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = t43.
        IF t48 IS INITIAL.
          t47 = abap_true.
        ENDIF.
        IF t47 = abap_true.
          DATA t49 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t49.
          t46 = t49.
        ELSE.
          DATA t50 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t50.
          DATA t51 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t51.
          DATA(t52) = t43.
          t51 = t52.
          DATA(t53) = VALUE string( ).
          DATA(t54) = t24.
          t53 = t54->value.
          t50 = t51->find_interface_definition( i_name = t53 ).
          t46 = t50.
        ENDIF.
        t42 = t46.
        t41 = t42.
        DATA t55 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t55.
        DATA(t56) = VALUE abap_bool( ).
        DATA(t57) = t41.
        t56 = xsdbool( t57 IS BOUND ).
        IF t56 = abap_true.
          DATA t58 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t58.
          DATA(t59) = abap_true.
          IF t59 = abap_true.
            DATA t60 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t60.
            DATA(t61) = t41.
            t60 = t61.
            t58 = t60.
          ELSE.
            DATA t62 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t62.
            t58 = t62.
          ENDIF.
          t55 = t58.
        ELSE.
          DATA t63 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t63.
          DATA t64 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t64.
          DATA t65 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t65.
          DATA t66 TYPE REF TO zif_lnt_object.
          CLEAR t66.
          DATA t67 TYPE REF TO zif_lnt_registry.
          CLEAR t67.
          DATA(t68) = t22.
          t67 = t68->reg.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          DATA(t70) = abap_true.
          IF t70 = abap_true.
            DATA(t71) = |INTF|.
            DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t72->has = abap_true.
            t72->value = t71.
            t69 = t72.
          ELSE.
            DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t73.
            t69 = t73.
          ENDIF.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA(t75) = abap_true.
          IF t75 = abap_true.
            DATA(t76) = VALUE string( ).
            DATA(t77) = t24.
            t76 = t77->value.
            DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t78->has = abap_true.
            t78->value = t76.
            t74 = t78.
          ELSE.
            DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t79.
            t74 = t79.
          ENDIF.
          t66 = t67->get_object( i_type_9913 = t69 i_name = t74 ).
          DATA t80 TYPE REF TO object.
          CLEAR t80.
          t80 = t66.
          t65 ?= t80.
          t64 = t65.
          DATA t81 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t81.
          DATA(t82) = VALUE abap_bool( ).
          DATA(t83) = t64.
          t82 = xsdbool( t83 IS BOUND ).
          IF t82 = abap_true.
            DATA t84 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t84.
            DATA t85 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t85.
            DATA t86 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t86.
            DATA(t87) = t64.
            t86 = t87.
            t85 = t86.
            DATA t88 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t88.
            DATA(t89) = t85.
            t88 = t89->def.
            t84 = t88.
            t81 = t84.
          ELSE.
            DATA t90 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t90.
            t81 = t90.
          ENDIF.
          t63 = t81.
          t55 = t63.
        ENDIF.
        t40 = t55.
        t31 = t40.
      ENDIF.
      t21 = t31.
      t20 = t21.
      DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t91.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = t20.
      IF t93 IS INITIAL.
        t92 = abap_true.
      ENDIF.
      IF t92 = abap_true.
        DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t94.
        t91 = t94.
      ELSE.
        DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t95.
        DATA t96 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t96.
        DATA(t97) = t20.
        t96 = t97.
        t95 = t96->get_implementing( ).
        t91 = t95.
      ENDIF.
      t19 = t91.
      t18 = t19.
      DATA(t98) = VALUE abap_bool( ).
      DATA(t99) = t18.
      t98 = xsdbool( t99 IS BOUND ).
      IF t98 = abap_true.
        DATA(t100) = VALUE i( ).
        DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t101.
        DATA(t102) = t18.
        t101 = t102.
        DATA t103 TYPE REF TO zcl_lnt_iimplementing.
        CLEAR t103.
        DATA t104 TYPE REF TO object.
        CLEAR t104.
        DATA(t105) = VALUE i( ).
        DO.
          t101->load( ).
          IF t105 >= lines( t101->items ).
            EXIT.
          ENDIF.
          CLEAR t104.
          READ TABLE t101->items INDEX t105 + 1 INTO t104.
          t105 = t105 + 1.
          DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t106.
          CLEAR t103.
          IF t104 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t106 ?= t104.
            DATA t107 TYPE REF TO object.
            CLEAR t107.
            t107 = t106->as_ref( ).
            t103 ?= t107.
          ELSE.
            t103 ?= t104.
          ENDIF.
          DATA(t108) = t2.
          DATA(t109) = t103.
          t108->load( ).
          APPEND t109 TO t108->items.
          t108->save( ).
        ENDDO.
        DATA(t110) = VALUE i( ).
        DATA(t111) = t2.
        t111->load( ).
        t110 = lines( t111->items ).
        t100 = t110.
      ENDIF.
    ENDDO.
    DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t113.
    DATA(t114) = t1.
    t113 = t114->get_super_class( ).
    t112 = t113.
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = t112.
    IF t116 IS BOUND.
      IF t116->has = abap_true.
        t115 = xsdbool( strlen( t116->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t115 = abap_true.
      DATA t117 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t117.
      TRY.
          DATA(t118) = VALUE i( ).
          DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t119.
          DATA t120 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t120.
          DATA t121 TYPE REF TO zif_lnt_class_definition.
          CLEAR t121.
          DATA(t122) = VALUE string( ).
          DATA(t123) = t112.
          t122 = t123->value.
          t121 = me->find_super_definition( i_name = t122 ).
          t120 ?= t121.
          t119 = me->find_interfaces( i_cd = t120 ).
          DATA t124 TYPE REF TO zcl_lnt_iimplementing.
          CLEAR t124.
          DATA t125 TYPE REF TO object.
          CLEAR t125.
          DATA(t126) = VALUE i( ).
          DO.
            t119->load( ).
            IF t126 >= lines( t119->items ).
              EXIT.
            ENDIF.
            CLEAR t125.
            READ TABLE t119->items INDEX t126 + 1 INTO t125.
            t126 = t126 + 1.
            DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t127.
            CLEAR t124.
            IF t125 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t127 ?= t125.
              DATA t128 TYPE REF TO object.
              CLEAR t128.
              t128 = t127->as_ref( ).
              t124 ?= t128.
            ELSE.
              t124 ?= t125.
            ENDIF.
            DATA(t129) = t2.
            DATA(t130) = t124.
            t129->load( ).
            APPEND t130 TO t129->items.
            t129->save( ).
          ENDDO.
          DATA(t131) = VALUE i( ).
          DATA(t132) = t2.
          t132->load( ).
          t131 = lines( t132->items ).
          t118 = t131.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t117.
          DATA(t133) = t117->payload.
      ENDTRY.
    ENDIF.
    DATA(t134) = t2.
    result = t134.

  ENDMETHOD.

  METHOD has_friendship.
    DATA(t1) = i_cd.
    DATA(t2) = i_friend_name.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t8) = t1.
    t7 = t8->get_friends( ).
    DATA(t9) = VALUE string( ).
    t7->dense( ).
    DATA(t10) = VALUE i( ).
    DO.
      t7->load( ).
      IF t10 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t7->items INDEX t10 + 1 INTO t9.
      IF t7->has( t10 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t10 = t10 + 1.
      DATA(t11) = t5.
      DATA t12 TYPE string.
      DATA(t13) = t9.
      DATA(t14) = strlen( t13 ).
      t12 = t13.
      IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t12 TO UPPER CASE.
      ELSE.
        t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
      ENDIF.
      t11->load( ).
      APPEND t12 TO t11->items.
      t11->save( ).
    ENDDO.
    DATA(t15) = t5.
    t4 = t15.
    t3 = t4.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zif_lnt_class_definition.
    DATA(t18) = t1.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t20) = t3.
    t19 = t20.
    DATA t21 TYPE string.
    DATA(t22) = t2.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t19.
    DATA t26 TYPE string.
    DATA(t27) = t21.
    DATA(t28) = strlen( t27 ).
    t26 = t27.
    IF t26 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t26 TO UPPER CASE.
    ELSE.
      t26 = zlnt_runtime_uppe_91169605024d=>full( t26 ).
    ENDIF.
    t24 = t25->includes( p0 = t26 ).
    t23 = t24.
    IF t24 = abap_false.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zcl_lnt_current_scope.
      DATA(t31) = me->scope.
      t30 = t31.
      DATA t32 TYPE string.
      DATA t33 TYPE string.
      DATA(t34) = t17.
      t33 = t34->get_name( ).
      t32 = t33.
      DATA t35 TYPE string.
      DATA(t36) = t21.
      t35 = t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
      DATA(t42) = t30.
      t41 = t42->local_friends.
      DATA t43 TYPE string.
      DATA(t44) = t32.
      DATA(t45) = strlen( t44 ).
      t43 = t44.
      IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t43 TO UPPER CASE.
      ELSE.
        t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
      ENDIF.
      t40 = t41->get( p0 = t43 ).
      t39 = t40.
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t39.
      IF t48 IS INITIAL.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t49.
        t46 = t49.
      ELSE.
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t52) = t39.
        t51 = t52.
        DATA t53 TYPE string.
        DATA(t54) = t35.
        DATA(t55) = strlen( t54 ).
        t53 = t54.
        IF t53 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t53 TO UPPER CASE.
        ELSE.
          t53 = zlnt_runtime_uppe_91169605024d=>full( t53 ).
        ENDIF.
        t50 = t51->includes( p0 = t53 ).
        DATA(t56) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t56->has = abap_true.
        t56->value = t50.
        t46 = t56.
      ENDIF.
      t38 = t46.
      DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t57.
      DATA(t58) = abap_true.
      IF t58 = abap_true.
        DATA(t59) = abap_true.
        DATA(t60) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t60->has = abap_true.
        t60->value = t59.
        t57 = t60.
      ELSE.
        DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t61.
        t57 = t61.
      ENDIF.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = VALUE abap_bool( ).
      IF t38 IS BOUND.
        t62 = t38->has.
      ENDIF.
      IF t57 IS BOUND.
        t63 = t57->has.
      ENDIF.
      IF t62 = t63.
        IF t62 = abap_false.
          t37 = abap_true.
        ELSEIF t38->value = t57->value.
          t37 = abap_true.
        ENDIF.
      ENDIF.
      t29 = t37.
      t23 = t29.
    ENDIF.
    t16 = t23.
    IF t16 = abap_true.
      DATA(t64) = abap_true.
      result = t64.
      RETURN.
    ENDIF.
    DATA t65 TYPE REF TO zif_lnt_class_definition.
    CLEAR t65.
    DATA t66 TYPE REF TO zif_lnt_class_definition.
    CLEAR t66.
    DATA t67 TYPE REF TO zcl_lnt_current_scope.
    DATA(t68) = me->scope.
    t67 = t68.
    DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t70.
    DATA(t71) = abap_true.
    IF t71 = abap_true.
      DATA(t72) = t2.
      DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t73->has = abap_true.
      t73->value = t72.
      t70 = t73.
    ELSE.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t74.
      t70 = t74.
    ENDIF.
    t69 = t70.
    DATA t75 TYPE REF TO zif_lnt_class_definition.
    CLEAR t75.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t78) = t69.
    t77 = t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    t79 = t80.
    DATA(t81) = VALUE abap_bool( ).
    DATA(t82) = t77.
    IF t82 IS INITIAL.
      t81 = abap_true.
    ELSEIF t82->has = abap_false.
      t81 = abap_true.
    ENDIF.
    t76 = t81.
    IF t76 = abap_true.
      DATA t83 TYPE REF TO zif_lnt_class_definition.
      CLEAR t83.
      t75 = t83.
    ELSE.
      DATA t84 TYPE REF TO zif_lnt_class_definition.
      CLEAR t84.
      DATA t85 TYPE REF TO zif_lnt_class_definition.
      CLEAR t85.
      DATA t86 TYPE REF TO zif_lnt_class_definition.
      CLEAR t86.
      DATA t87 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t89) = t67.
      t88 = t89->current.
      t87 = t88.
      DATA t90 TYPE REF TO zif_lnt_class_definition.
      CLEAR t90.
      DATA(t91) = VALUE abap_bool( ).
      DATA(t92) = t87.
      IF t92 IS INITIAL.
        t91 = abap_true.
      ENDIF.
      IF t91 = abap_true.
        DATA t93 TYPE REF TO zif_lnt_class_definition.
        CLEAR t93.
        t90 = t93.
      ELSE.
        DATA t94 TYPE REF TO zif_lnt_class_definition.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t96) = t87.
        t95 = t96.
        DATA t97 TYPE string.
        DATA(t98) = t69.
        t97 = t98->value.
        t94 = t95->find_class_definition( i_name = t97 ).
        t90 = t94.
      ENDIF.
      t86 = t90.
      t85 = t86.
      DATA t99 TYPE REF TO zif_lnt_class_definition.
      CLEAR t99.
      DATA t100 TYPE abap_bool.
      DATA(t101) = t85.
      t100 = xsdbool( t101 IS BOUND ).
      IF t100 = abap_true.
        DATA t102 TYPE REF TO zif_lnt_class_definition.
        CLEAR t102.
        DATA(t103) = abap_true.
        IF t103 = abap_true.
          DATA t104 TYPE REF TO zif_lnt_class_definition.
          DATA(t105) = t85.
          t104 = t105.
          t102 = t104.
        ELSE.
          DATA t106 TYPE REF TO zif_lnt_class_definition.
          CLEAR t106.
          t102 = t106.
        ENDIF.
        t99 = t102.
      ELSE.
        DATA t107 TYPE REF TO zif_lnt_class_definition.
        CLEAR t107.
        DATA t108 TYPE REF TO zcl_lnt_class.
        CLEAR t108.
        DATA t109 TYPE REF TO zcl_lnt_class.
        CLEAR t109.
        DATA t110 TYPE REF TO zif_lnt_object.
        CLEAR t110.
        DATA t111 TYPE REF TO zif_lnt_registry.
        DATA(t112) = t67.
        t111 = t112->reg.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        DATA(t114) = abap_true.
        IF t114 = abap_true.
          DATA(t115) = |CLAS|.
          DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t116->has = abap_true.
          t116->value = t115.
          t113 = t116.
        ELSE.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          t113 = t117.
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        DATA(t119) = abap_true.
        IF t119 = abap_true.
          DATA t120 TYPE string.
          DATA(t121) = t69.
          t120 = t121->value.
          DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t122->has = abap_true.
          t122->value = t120.
          t118 = t122.
        ELSE.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          t118 = t123.
        ENDIF.
        t110 = t111->get_object( i_type_9913 = t113 i_name = t118 ).
        DATA t124 TYPE REF TO object.
        t124 = t110.
        t109 ?= t124.
        t108 = t109.
        DATA t125 TYPE REF TO zif_lnt_class_definition.
        CLEAR t125.
        DATA t126 TYPE abap_bool.
        DATA(t127) = t108.
        t126 = xsdbool( t127 IS BOUND ).
        IF t126 = abap_true.
          DATA t128 TYPE REF TO zif_lnt_class_definition.
          DATA t129 TYPE REF TO zcl_lnt_class.
          DATA(t130) = t108.
          t129 = t130.
          t128 = t129->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t125 = t128.
        ELSE.
          DATA t131 TYPE REF TO zif_lnt_class_definition.
          CLEAR t131.
          t125 = t131.
        ENDIF.
        t107 = t125.
        t99 = t107.
      ENDIF.
      t84 = t99.
      t75 = t84.
    ENDIF.
    t66 = t75.
    t65 = t66.
    DATA(t132) = VALUE abap_bool( ).
    DATA t133 TYPE REF TO zif_lnt_class_definition.
    DATA(t134) = t65.
    t133 = t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    t135 = t136.
    DATA(t137) = VALUE abap_bool( ).
    DATA(t138) = t133.
    IF t138 IS INITIAL.
      t137 = abap_true.
    ENDIF.
    t132 = t137.
    IF t132 = abap_true.
      DATA(t139) = abap_false.
      result = t139.
      RETURN.
    ENDIF.
    DATA(t140) = VALUE abap_bool( ).
    DATA t141 TYPE abap_bool.
    DATA(t142) = abap_false.
    t141 = t142.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t144 TYPE REF TO zif_lnt_interface_definition.
    DATA t145 TYPE REF TO zif_lnt_class_definition.
    DATA(t146) = t65.
    t145 = t146.
    t144 ?= t145.
    t143 = me->find_interfaces( i_cd = t144 ).
    DATA t147 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t147.
    DATA t148 TYPE REF TO object.
    CLEAR t148.
    DATA(t149) = VALUE i( ).
    DO.
      t143->load( ).
      IF t149 >= lines( t143->items ).
        EXIT.
      ENDIF.
      CLEAR t148.
      READ TABLE t143->items INDEX t149 + 1 INTO t148.
      t149 = t149 + 1.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      CLEAR t147.
      IF t148 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t150 ?= t148.
        DATA t151 TYPE REF TO object.
        t151 = t150->as_ref( ).
        t147 ?= t151.
      ELSE.
        t147 ?= t148.
      ENDIF.
      DATA(t152) = VALUE abap_bool( ).
      DATA(t153) = t3.
      DATA t154 TYPE string.
      DATA t155 TYPE string.
      DATA(t156) = t147.
      t155 = t156->name.
      DATA(t157) = strlen( t155 ).
      t154 = t155.
      IF t154 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t154 TO UPPER CASE.
      ELSE.
        t154 = zlnt_runtime_uppe_91169605024d=>full( t154 ).
      ENDIF.
      t152 = t153->includes( p0 = t154 ).
      IF t152 = abap_true.
        DATA(t158) = abap_true.
        t141 = t158.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t159) = t141.
    t140 = t159.
    IF t140 = abap_true.
      DATA(t160) = abap_true.
      result = t160.
      RETURN.
    ENDIF.
    DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t163 TYPE REF TO zif_lnt_class_definition.
    DATA(t164) = t65.
    t163 = t164.
    t162 = t163->get_super_class( ).
    t161 = t162.
    DO.
      DATA(t165) = VALUE abap_bool( ).
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t167) = t161.
      t166 = t167.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      t168 = t169.
      DATA(t170) = VALUE abap_bool( ).
      DATA(t171) = VALUE abap_bool( ).
      DATA(t172) = t166.
      IF t172 IS INITIAL.
        t171 = abap_true.
      ELSEIF t172->has = abap_false.
        t171 = abap_true.
      ENDIF.
      t170 = xsdbool( t171 = abap_false ).
      t165 = t170.
      IF t165 = abap_false.
        EXIT.
      ENDIF.
      DATA(t173) = VALUE abap_bool( ).
      DATA t174 TYPE REF TO zif_lnt_class_definition.
      DATA(t175) = t1.
      t174 = t175.
      DATA t176 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t177) = t3.
      t176 = t177.
      DATA t178 TYPE string.
      DATA t179 TYPE string.
      DATA(t180) = t161.
      t179 = t180->value.
      t178 = t179.
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = VALUE abap_bool( ).
      DATA(t183) = t176.
      DATA t184 TYPE string.
      DATA(t185) = t178.
      DATA(t186) = strlen( t185 ).
      t184 = t185.
      IF t184 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t184 TO UPPER CASE.
      ELSE.
        t184 = zlnt_runtime_uppe_91169605024d=>full( t184 ).
      ENDIF.
      t182 = t183->includes( p0 = t184 ).
      t181 = t182.
      IF t182 = abap_false.
        DATA(t187) = VALUE abap_bool( ).
        DATA t188 TYPE REF TO zcl_lnt_current_scope.
        DATA(t189) = me->scope.
        t188 = t189.
        DATA t190 TYPE string.
        DATA t191 TYPE string.
        DATA(t192) = t174.
        t191 = t192->get_name( ).
        t190 = t191.
        DATA t193 TYPE string.
        DATA(t194) = t178.
        t193 = t194.
        DATA(t195) = VALUE abap_bool( ).
        DATA t196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t196.
        DATA t197 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t197.
        DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t198.
        DATA t199 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
        DATA(t200) = t188.
        t199 = t200->local_friends.
        DATA t201 TYPE string.
        DATA(t202) = t190.
        DATA(t203) = strlen( t202 ).
        t201 = t202.
        IF t201 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t201 TO UPPER CASE.
        ELSE.
          t201 = zlnt_runtime_uppe_91169605024d=>full( t201 ).
        ENDIF.
        t198 = t199->get( p0 = t201 ).
        t197 = t198.
        DATA t204 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t204.
        DATA(t205) = VALUE abap_bool( ).
        DATA(t206) = t197.
        IF t206 IS INITIAL.
          t205 = abap_true.
        ENDIF.
        IF t205 = abap_true.
          DATA t207 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t207.
          t204 = t207.
        ELSE.
          DATA(t208) = VALUE abap_bool( ).
          DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t210) = t197.
          t209 = t210.
          DATA t211 TYPE string.
          DATA(t212) = t193.
          DATA(t213) = strlen( t212 ).
          t211 = t212.
          IF t211 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t211 TO UPPER CASE.
          ELSE.
            t211 = zlnt_runtime_uppe_91169605024d=>full( t211 ).
          ENDIF.
          t208 = t209->includes( p0 = t211 ).
          DATA(t214) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t214->has = abap_true.
          t214->value = t208.
          t204 = t214.
        ENDIF.
        t196 = t204.
        DATA t215 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t215.
        DATA(t216) = abap_true.
        IF t216 = abap_true.
          DATA(t217) = abap_true.
          DATA(t218) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t218->has = abap_true.
          t218->value = t217.
          t215 = t218.
        ELSE.
          DATA t219 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t219.
          t215 = t219.
        ENDIF.
        DATA(t220) = VALUE abap_bool( ).
        DATA(t221) = VALUE abap_bool( ).
        IF t196 IS BOUND.
          t220 = t196->has.
        ENDIF.
        IF t215 IS BOUND.
          t221 = t215->has.
        ENDIF.
        IF t220 = t221.
          IF t220 = abap_false.
            t195 = abap_true.
          ELSEIF t196->value = t215->value.
            t195 = abap_true.
          ENDIF.
        ENDIF.
        t187 = t195.
        t181 = t187.
      ENDIF.
      t173 = t181.
      IF t173 = abap_true.
        DATA(t222) = abap_true.
        result = t222.
        RETURN.
      ENDIF.
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t223.
      DATA t224 TYPE REF TO zif_lnt_class_definition.
      CLEAR t224.
      DATA t225 TYPE REF TO zif_lnt_class_definition.
      CLEAR t225.
      DATA t226 TYPE REF TO zcl_lnt_current_scope.
      DATA(t227) = me->scope.
      t226 = t227.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t229.
      DATA(t230) = abap_true.
      IF t230 = abap_true.
        DATA t231 TYPE string.
        DATA(t232) = t161.
        t231 = t232->value.
        DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t233->has = abap_true.
        t233->value = t231.
        t229 = t233.
      ELSE.
        DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t234.
        t229 = t234.
      ENDIF.
      t228 = t229.
      DATA t235 TYPE REF TO zif_lnt_class_definition.
      CLEAR t235.
      DATA(t236) = VALUE abap_bool( ).
      DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t238) = t228.
      t237 = t238.
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t240.
      t239 = t240.
      DATA(t241) = VALUE abap_bool( ).
      DATA(t242) = t237.
      IF t242 IS INITIAL.
        t241 = abap_true.
      ELSEIF t242->has = abap_false.
        t241 = abap_true.
      ENDIF.
      t236 = t241.
      IF t236 = abap_true.
        DATA t243 TYPE REF TO zif_lnt_class_definition.
        CLEAR t243.
        t235 = t243.
      ELSE.
        DATA t244 TYPE REF TO zif_lnt_class_definition.
        CLEAR t244.
        DATA t245 TYPE REF TO zif_lnt_class_definition.
        CLEAR t245.
        DATA t246 TYPE REF TO zif_lnt_class_definition.
        CLEAR t246.
        DATA t247 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t248 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t249) = t226.
        t248 = t249->current.
        t247 = t248.
        DATA t250 TYPE REF TO zif_lnt_class_definition.
        CLEAR t250.
        DATA(t251) = VALUE abap_bool( ).
        DATA(t252) = t247.
        IF t252 IS INITIAL.
          t251 = abap_true.
        ENDIF.
        IF t251 = abap_true.
          DATA t253 TYPE REF TO zif_lnt_class_definition.
          CLEAR t253.
          t250 = t253.
        ELSE.
          DATA t254 TYPE REF TO zif_lnt_class_definition.
          DATA t255 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t256) = t247.
          t255 = t256.
          DATA t257 TYPE string.
          DATA(t258) = t228.
          t257 = t258->value.
          t254 = t255->find_class_definition( i_name = t257 ).
          t250 = t254.
        ENDIF.
        t246 = t250.
        t245 = t246.
        DATA t259 TYPE REF TO zif_lnt_class_definition.
        CLEAR t259.
        DATA t260 TYPE abap_bool.
        DATA(t261) = t245.
        t260 = xsdbool( t261 IS BOUND ).
        IF t260 = abap_true.
          DATA t262 TYPE REF TO zif_lnt_class_definition.
          CLEAR t262.
          DATA(t263) = abap_true.
          IF t263 = abap_true.
            DATA t264 TYPE REF TO zif_lnt_class_definition.
            DATA(t265) = t245.
            t264 = t265.
            t262 = t264.
          ELSE.
            DATA t266 TYPE REF TO zif_lnt_class_definition.
            CLEAR t266.
            t262 = t266.
          ENDIF.
          t259 = t262.
        ELSE.
          DATA t267 TYPE REF TO zif_lnt_class_definition.
          CLEAR t267.
          DATA t268 TYPE REF TO zcl_lnt_class.
          CLEAR t268.
          DATA t269 TYPE REF TO zcl_lnt_class.
          CLEAR t269.
          DATA t270 TYPE REF TO zif_lnt_object.
          CLEAR t270.
          DATA t271 TYPE REF TO zif_lnt_registry.
          DATA(t272) = t226.
          t271 = t272->reg.
          DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t273.
          DATA(t274) = abap_true.
          IF t274 = abap_true.
            DATA(t275) = |CLAS|.
            DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t276->has = abap_true.
            t276->value = t275.
            t273 = t276.
          ELSE.
            DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t277.
            t273 = t277.
          ENDIF.
          DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t278.
          DATA(t279) = abap_true.
          IF t279 = abap_true.
            DATA t280 TYPE string.
            DATA(t281) = t228.
            t280 = t281->value.
            DATA(t282) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t282->has = abap_true.
            t282->value = t280.
            t278 = t282.
          ELSE.
            DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t283.
            t278 = t283.
          ENDIF.
          t270 = t271->get_object( i_type_9913 = t273 i_name = t278 ).
          DATA t284 TYPE REF TO object.
          t284 = t270.
          t269 ?= t284.
          t268 = t269.
          DATA t285 TYPE REF TO zif_lnt_class_definition.
          CLEAR t285.
          DATA t286 TYPE abap_bool.
          DATA(t287) = t268.
          t286 = xsdbool( t287 IS BOUND ).
          IF t286 = abap_true.
            DATA t288 TYPE REF TO zif_lnt_class_definition.
            DATA t289 TYPE REF TO zcl_lnt_class.
            DATA(t290) = t268.
            t289 = t290.
            t288 = t289->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t285 = t288.
          ELSE.
            DATA t291 TYPE REF TO zif_lnt_class_definition.
            CLEAR t291.
            t285 = t291.
          ENDIF.
          t267 = t285.
          t259 = t267.
        ENDIF.
        t244 = t259.
        t235 = t244.
      ENDIF.
      t225 = t235.
      t224 = t225.
      DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t292.
      DATA(t293) = VALUE abap_bool( ).
      DATA(t294) = t224.
      IF t294 IS INITIAL.
        t293 = abap_true.
      ENDIF.
      IF t293 = abap_true.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        t292 = t295.
      ELSE.
        DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t297 TYPE REF TO zif_lnt_class_definition.
        DATA(t298) = t224.
        t297 = t298.
        t296 = t297->get_super_class( ).
        t292 = t296.
      ENDIF.
      t223 = t292.
      t161 = t223.
    ENDDO.
    DATA(t299) = abap_false.
    result = t299.

  ENDMETHOD.

  METHOD search_event.
    DATA(t1) = i_def.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_interface_definition.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ELSEIF t17->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zif_lnt_event_definition.
      CLEAR t18.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zif_lnt_event_definition.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_event_definition.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zif_lnt_interface_definition.
    DATA(t24) = t1.
    t23 = t24.
    t22 = t23->get_events( ).
    t21 = t22.
    DATA t25 TYPE i.
    DATA t26 TYPE i.
    DATA(t27) = t21.
    t27->load( ).
    t26 = lines( t27->items ).
    t25 = t26.
    DATA t28 TYPE i.
    DATA(t29) = 0.
    t28 = t29.
    DATA t30 TYPE REF TO zif_lnt_event_definition.
    DATA t31 TYPE REF TO zif_lnt_event_definition.
    CLEAR t31.
    t30 = t31.
    DO.
      DATA t32 TYPE abap_bool.
      DATA(t33) = t28.
      DATA(t34) = t25.
      t32 = xsdbool( t33 < t34 ).
      IF t32 = abap_false.
        EXIT.
      ENDIF.
      DATA t35 TYPE REF TO zif_lnt_event_definition.
      CLEAR t35.
      DATA t36 TYPE REF TO zif_lnt_event_definition.
      CLEAR t36.
      DATA t37 TYPE REF TO zif_lnt_event_definition.
      CLEAR t37.
      DATA(t38) = t21.
      DATA(t39) = t28.
      DATA t40 TYPE REF TO object.
      t40 = t38->get( p0 = t39 ).
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      CLEAR t37.
      IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t41 ?= t40.
        DATA t42 TYPE REF TO object.
        t42 = t41->as_ref( ).
        t37 ?= t42.
      ELSE.
        t37 ?= t40.
      ENDIF.
      t36 = t37.
      t35 = t36.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      DATA(t46) = t35.
      t45 = t46->get_name( ).
      DATA(t47) = strlen( t45 ).
      t44 = t45.
      IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t44 TO UPPER CASE.
      ELSE.
        t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
      ENDIF.
      DATA t48 TYPE string.
      DATA t49 TYPE string.
      DATA(t50) = t2.
      t49 = t50->value.
      DATA(t51) = strlen( t49 ).
      t48 = t49.
      IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t48 TO UPPER CASE.
      ELSE.
        t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
      ENDIF.
      t43 = xsdbool( t44 = t48 ).
      IF t43 = abap_true.
        DATA t52 TYPE REF TO zif_lnt_event_definition.
        CLEAR t52.
        DATA(t53) = abap_true.
        IF t53 = abap_true.
          DATA(t54) = t35.
          t52 = t54.
        ELSE.
          DATA t55 TYPE REF TO zif_lnt_event_definition.
          CLEAR t55.
          t52 = t55.
        ENDIF.
        t30 = t52.
        EXIT.
      ENDIF.
      DATA t56 TYPE i.
      DATA(t57) = t28.
      DATA(t58) = 1.
      t56 = t57 + t58.
      t28 = t56.
    ENDDO.
    DATA(t59) = t30.
    t20 = t59.
    t19 = t20.
    DATA t60 TYPE abap_bool.
    DATA(t61) = t19.
    t60 = xsdbool( t61 IS BOUND ).
    IF t60 = abap_true.
      DATA t62 TYPE REF TO zif_lnt_event_definition.
      CLEAR t62.
      DATA(t63) = abap_true.
      IF t63 = abap_true.
        DATA t64 TYPE REF TO zif_lnt_event_definition.
        DATA(t65) = t19.
        t64 = t65.
        t62 = t64.
      ELSE.
        DATA t66 TYPE REF TO zif_lnt_event_definition.
        CLEAR t66.
        t62 = t66.
      ENDIF.
      result = t62.
      RETURN.
    ENDIF.
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = VALUE i( ).
    DATA t69 TYPE string.
    DATA(t70) = t2.
    t69 = t70->value.
    DATA(t71) = |~|.
    DATA(t72) = strlen( t69 ).
    IF t71 IS INITIAL.
      t68 = 0.
    ELSE.
      FIND t71 IN t69 MATCH OFFSET t68.
      IF sy-subrc <> 0.
        t68 = -1.
      ENDIF.
    ENDIF.
    DATA(t73) = 0.
    t67 = xsdbool( t68 >= t73 ).
    IF t67 = abap_true.
      DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t74.
      DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t76 TYPE string.
      DATA(t77) = t2.
      t76 = t77->value.
      DATA(t78) = |~|.
      DATA(t79) = strlen( t76 ).
      DATA t80 TYPE i.
      DATA(t81) = VALUE i( ).
      DATA(t82) = VALUE i( ).
      DATA t83 TYPE i.
      DATA(t84) = VALUE string( ).
      CREATE OBJECT t75.
      t83 = strlen( t78 ).
      t80 = 0.
      IF t83 = 0.
        WHILE t80 < t79.
          t84 = t76+t80(1).
          APPEND t84 TO t75->items.
          t80 = t80 + 1.
        ENDWHILE.
      ELSE.
        WHILE t80 <= t79.
          FIND FIRST OCCURRENCE OF t78 IN SECTION OFFSET t80 OF t76 MATCH OFFSET t81.
          IF sy-subrc = 0.
            t82 = t81 - t80.
          ELSE.
            t81 = -1.
            t82 = t79 - t80.
          ENDIF.
          CLEAR t84.
          IF t82 > 0.
            t84 = t76+t80(t82).
          ENDIF.
          APPEND t84 TO t75->items.
          IF t81 < 0.
            EXIT.
          ENDIF.
          t80 = t81 + t83.
        ENDWHILE.
      ENDIF.
      t74 = t75.
      DATA(t85) = VALUE string( ).
      DATA(t86) = VALUE string( ).
      DATA(t87) = t74.
      IF t87->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t87->load( ).
      CLEAR t86.
      READ TABLE t87->items INDEX 1 INTO t86.
      t85 = t86.
      DATA(t88) = VALUE string( ).
      DATA(t89) = VALUE string( ).
      DATA(t90) = t74.
      IF t90->has( 2 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t90->load( ).
      CLEAR t89.
      READ TABLE t90->items INDEX 2 INTO t89.
      t88 = t89.
      DATA t91 TYPE REF TO zif_lnt_event_definition.
      CLEAR t91.
      DATA t92 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_current_scope.
      DATA(t94) = me->scope.
      t93 = t94.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      DATA(t97) = abap_true.
      IF t97 = abap_true.
        DATA(t98) = t85.
        DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t99->has = abap_true.
        t99->value = t98.
        t96 = t99.
      ELSE.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        t96 = t100.
      ENDIF.
      t95 = t96.
      DATA t101 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t101.
      DATA(t102) = VALUE abap_bool( ).
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t104) = t95.
      t103 = t104.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      t105 = t106.
      DATA(t107) = VALUE abap_bool( ).
      DATA(t108) = t103.
      IF t108 IS INITIAL.
        t107 = abap_true.
      ELSEIF t108->has = abap_false.
        t107 = abap_true.
      ENDIF.
      t102 = t107.
      IF t102 = abap_true.
        DATA t109 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t109.
        t101 = t109.
      ELSE.
        DATA t110 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t110.
        DATA t111 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t111.
        DATA t112 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t112.
        DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t115) = t93.
        t114 = t115->current.
        t113 = t114.
        DATA t116 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t116.
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = t113.
        IF t118 IS INITIAL.
          t117 = abap_true.
        ENDIF.
        IF t117 = abap_true.
          DATA t119 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t119.
          t116 = t119.
        ELSE.
          DATA t120 TYPE REF TO zif_lnt_interface_definition.
          DATA t121 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t122) = t113.
          t121 = t122.
          DATA t123 TYPE string.
          DATA(t124) = t95.
          t123 = t124->value.
          t120 = t121->find_interface_definition( i_name = t123 ).
          t116 = t120.
        ENDIF.
        t112 = t116.
        t111 = t112.
        DATA t125 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t125.
        DATA t126 TYPE abap_bool.
        DATA(t127) = t111.
        t126 = xsdbool( t127 IS BOUND ).
        IF t126 = abap_true.
          DATA t128 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t128.
          DATA(t129) = abap_true.
          IF t129 = abap_true.
            DATA t130 TYPE REF TO zif_lnt_interface_definition.
            DATA(t131) = t111.
            t130 = t131.
            t128 = t130.
          ELSE.
            DATA t132 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t132.
            t128 = t132.
          ENDIF.
          t125 = t128.
        ELSE.
          DATA t133 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t133.
          DATA t134 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t134.
          DATA t135 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t135.
          DATA t136 TYPE REF TO zif_lnt_object.
          CLEAR t136.
          DATA t137 TYPE REF TO zif_lnt_registry.
          DATA(t138) = t93.
          t137 = t138->reg.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          DATA(t140) = abap_true.
          IF t140 = abap_true.
            DATA(t141) = |INTF|.
            DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t142->has = abap_true.
            t142->value = t141.
            t139 = t142.
          ELSE.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            t139 = t143.
          ENDIF.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          DATA(t145) = abap_true.
          IF t145 = abap_true.
            DATA t146 TYPE string.
            DATA(t147) = t95.
            t146 = t147->value.
            DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t148->has = abap_true.
            t148->value = t146.
            t144 = t148.
          ELSE.
            DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t149.
            t144 = t149.
          ENDIF.
          t136 = t137->get_object( i_type_9913 = t139 i_name = t144 ).
          DATA t150 TYPE REF TO object.
          t150 = t136.
          t135 ?= t150.
          t134 = t135.
          DATA t151 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t151.
          DATA t152 TYPE abap_bool.
          DATA(t153) = t134.
          t152 = xsdbool( t153 IS BOUND ).
          IF t152 = abap_true.
            DATA t154 TYPE REF TO zif_lnt_interface_definition.
            DATA t155 TYPE REF TO zcl_lnt_ob_interface.
            DATA t156 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t157) = t134.
            t156 = t157.
            t155 = t156.
            DATA t158 TYPE REF TO zif_lnt_interface_definition.
            DATA(t159) = t155.
            t158 = t159->def.
            t154 = t158.
            t151 = t154.
          ELSE.
            DATA t160 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t160.
            t151 = t160.
          ENDIF.
          t133 = t151.
          t125 = t133.
        ENDIF.
        t110 = t125.
        t101 = t110.
      ENDIF.
      t92 = t101.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t161.
      DATA(t162) = abap_true.
      IF t162 = abap_true.
        DATA(t163) = t88.
        DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t164->has = abap_true.
        t164->value = t163.
        t161 = t164.
      ELSE.
        DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t165.
        t161 = t165.
      ENDIF.
      t91 = me->search_event( i_def = t92 i_name = t161 ).
      result = t91.
      RETURN.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t169 TYPE REF TO zif_lnt_interface_definition.
    DATA(t170) = t1.
    t169 = t170.
    t168 = t169->get_aliases( ).
    t167 = t168.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t171.
    DATA t172 TYPE abap_bool.
    DATA(t173) = t167.
    t172 = xsdbool( t173 IS BOUND ).
    IF t172 = abap_true.
      DATA(t174) = t167.
      t171 = t174.
    ELSE.
      DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t175.
      t171 = t175.
    ENDIF.
    t166 = t171.
    DATA t176 TYPE REF TO zcl_lnt_alias.
    CLEAR t176.
    DATA t177 TYPE REF TO object.
    CLEAR t177.
    DATA(t178) = VALUE i( ).
    DO.
      t166->load( ).
      IF t178 >= lines( t166->items ).
        EXIT.
      ENDIF.
      CLEAR t177.
      READ TABLE t166->items INDEX t178 + 1 INTO t177.
      t178 = t178 + 1.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      CLEAR t176.
      IF t177 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t179 ?= t177.
        DATA t180 TYPE REF TO object.
        t180 = t179->as_ref( ).
        t176 ?= t180.
      ELSE.
        t176 ?= t177.
      ENDIF.
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = VALUE string( ).
      DATA(t183) = VALUE string( ).
      DATA t184 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t185) = t176.
      t184 = t185.
      DATA(t186) = VALUE string( ).
      DATA t187 TYPE string.
      DATA t188 TYPE string.
      DATA t189 TYPE REF TO zcl_lnt_abstract_token.
      DATA t190 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t191) = t184.
      t190 = t191->token.
      t189 = t190.
      DATA t192 TYPE string.
      DATA(t193) = t189.
      t192 = t193->str.
      t188 = t192.
      t187 = t188.
      DATA(t194) = VALUE abap_bool( ).
      DATA(t195) = VALUE string( ).
      DATA(t196) = t187.
      DATA(t197) = 0.
      DATA(t198) = 1.
      DATA(t199) = strlen( t196 ).
      IF t197 < 0.
        t197 = t197 + t199.
        IF t197 < 0.
          t197 = 0.
        ENDIF.
      ENDIF.
      IF t197 > t199 OR t198 <= 0.
        CLEAR t195.
      ELSE.
        IF t198 > t199 - t197.
          t198 = t199 - t197.
        ENDIF.
        t195 = t196+t197(t198).
      ENDIF.
      DATA(t200) = |!|.
      t194 = xsdbool( t195 = t200 ).
      IF t194 = abap_true.
        DATA(t201) = VALUE string( ).
        DATA t202 TYPE string.
        DATA(t203) = t187.
        t202 = t203.
        DATA(t204) = VALUE string( ).
        DATA(t205) = t202.
        DATA(t206) = 1.
        DATA t207 TYPE i.
        DATA(t208) = t202.
        DATA(t209) = strlen( t208 ).
        t207 = t209.
        DATA(t210) = strlen( t205 ).
        IF t206 < 0.
          t206 = t206 + t210.
          IF t206 < 0.
            t206 = 0.
          ENDIF.
        ENDIF.
        IF t206 > t210 OR t207 <= 0.
          CLEAR t204.
        ELSE.
          IF t207 > t210 - t206.
            t207 = t210 - t206.
          ENDIF.
          t204 = t205+t206(t207).
        ENDIF.
        t201 = t204.
        t187 = t201.
      ENDIF.
      DATA(t211) = t187.
      t186 = t211.
      t183 = t186.
      DATA(t212) = strlen( t183 ).
      t182 = t183.
      IF t182 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t182 TO UPPER CASE.
      ELSE.
        t182 = zlnt_runtime_uppe_91169605024d=>full( t182 ).
      ENDIF.
      DATA t213 TYPE string.
      DATA t214 TYPE string.
      DATA(t215) = t2.
      t214 = t215->value.
      DATA(t216) = strlen( t214 ).
      t213 = t214.
      IF t213 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t213 TO UPPER CASE.
      ELSE.
        t213 = zlnt_runtime_uppe_91169605024d=>full( t213 ).
      ENDIF.
      t181 = xsdbool( t182 = t213 ).
      IF t181 = abap_true.
        DATA t217 TYPE string.
        DATA t218 TYPE string.
        DATA t219 TYPE REF TO zcl_lnt_alias.
        DATA(t220) = t176.
        t219 = t220.
        DATA t221 TYPE string.
        DATA(t222) = t219.
        t221 = t222->component.
        t218 = t221.
        t217 = t218.
        DATA t223 TYPE REF TO zif_lnt_event_definition.
        CLEAR t223.
        DATA t224 TYPE REF TO zif_lnt_event_definition.
        CLEAR t224.
        DATA t225 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t225.
        DATA t226 TYPE REF TO zcl_lnt_current_scope.
        DATA(t227) = me->scope.
        t226 = t227.
        DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t228.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t229.
        DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t231) = t217.
        DATA(t232) = |~|.
        DATA(t233) = strlen( t231 ).
        DATA t234 TYPE i.
        DATA(t235) = VALUE i( ).
        DATA(t236) = VALUE i( ).
        DATA t237 TYPE i.
        DATA(t238) = VALUE string( ).
        CREATE OBJECT t230.
        t237 = strlen( t232 ).
        t234 = 0.
        IF t237 = 0.
          WHILE t234 < t233.
            t238 = t231+t234(1).
            APPEND t238 TO t230->items.
            t234 = t234 + 1.
          ENDWHILE.
        ELSE.
          WHILE t234 <= t233.
            FIND FIRST OCCURRENCE OF t232 IN SECTION OFFSET t234 OF t231 MATCH OFFSET t235.
            IF sy-subrc = 0.
              t236 = t235 - t234.
            ELSE.
              t235 = -1.
              t236 = t233 - t234.
            ENDIF.
            CLEAR t238.
            IF t236 > 0.
              t238 = t231+t234(t236).
            ENDIF.
            APPEND t238 TO t230->items.
            IF t235 < 0.
              EXIT.
            ENDIF.
            t234 = t235 + t237.
          ENDWHILE.
        ENDIF.
        DATA(t239) = 0.
        t229 = t230->get( p0 = t239 ).
        t228 = t229.
        DATA t240 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t240.
        DATA(t241) = VALUE abap_bool( ).
        DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t243) = t228.
        t242 = t243.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t245.
        t244 = t245.
        DATA(t246) = VALUE abap_bool( ).
        DATA(t247) = t242.
        IF t247 IS INITIAL.
          t246 = abap_true.
        ELSEIF t247->has = abap_false.
          t246 = abap_true.
        ENDIF.
        t241 = t246.
        IF t241 = abap_true.
          DATA t248 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t248.
          t240 = t248.
        ELSE.
          DATA t249 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t249.
          DATA t250 TYPE REF TO zif_lnt_class_definition.
          CLEAR t250.
          DATA t251 TYPE REF TO zif_lnt_class_definition.
          CLEAR t251.
          DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t252.
          DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t253.
          DATA(t254) = abap_true.
          IF t254 = abap_true.
            DATA t255 TYPE string.
            DATA(t256) = t228.
            t255 = t256->value.
            DATA(t257) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t257->has = abap_true.
            t257->value = t255.
            t253 = t257.
          ELSE.
            DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t258.
            t253 = t258.
          ENDIF.
          t252 = t253.
          DATA t259 TYPE REF TO zif_lnt_class_definition.
          CLEAR t259.
          DATA(t260) = VALUE abap_bool( ).
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t262) = t252.
          t261 = t262.
          DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          t263 = t264.
          DATA(t265) = VALUE abap_bool( ).
          DATA(t266) = t261.
          IF t266 IS INITIAL.
            t265 = abap_true.
          ELSEIF t266->has = abap_false.
            t265 = abap_true.
          ENDIF.
          t260 = t265.
          IF t260 = abap_true.
            DATA t267 TYPE REF TO zif_lnt_class_definition.
            CLEAR t267.
            t259 = t267.
          ELSE.
            DATA t268 TYPE REF TO zif_lnt_class_definition.
            CLEAR t268.
            DATA t269 TYPE REF TO zif_lnt_class_definition.
            CLEAR t269.
            DATA t270 TYPE REF TO zif_lnt_class_definition.
            CLEAR t270.
            DATA t271 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t272 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t273) = t226.
            t272 = t273->current.
            t271 = t272.
            DATA t274 TYPE REF TO zif_lnt_class_definition.
            CLEAR t274.
            DATA(t275) = VALUE abap_bool( ).
            DATA(t276) = t271.
            IF t276 IS INITIAL.
              t275 = abap_true.
            ENDIF.
            IF t275 = abap_true.
              DATA t277 TYPE REF TO zif_lnt_class_definition.
              CLEAR t277.
              t274 = t277.
            ELSE.
              DATA t278 TYPE REF TO zif_lnt_class_definition.
              DATA t279 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t280) = t271.
              t279 = t280.
              DATA t281 TYPE string.
              DATA(t282) = t252.
              t281 = t282->value.
              t278 = t279->find_class_definition( i_name = t281 ).
              t274 = t278.
            ENDIF.
            t270 = t274.
            t269 = t270.
            DATA t283 TYPE REF TO zif_lnt_class_definition.
            CLEAR t283.
            DATA t284 TYPE abap_bool.
            DATA(t285) = t269.
            t284 = xsdbool( t285 IS BOUND ).
            IF t284 = abap_true.
              DATA t286 TYPE REF TO zif_lnt_class_definition.
              CLEAR t286.
              DATA(t287) = abap_true.
              IF t287 = abap_true.
                DATA t288 TYPE REF TO zif_lnt_class_definition.
                DATA(t289) = t269.
                t288 = t289.
                t286 = t288.
              ELSE.
                DATA t290 TYPE REF TO zif_lnt_class_definition.
                CLEAR t290.
                t286 = t290.
              ENDIF.
              t283 = t286.
            ELSE.
              DATA t291 TYPE REF TO zif_lnt_class_definition.
              CLEAR t291.
              DATA t292 TYPE REF TO zcl_lnt_class.
              CLEAR t292.
              DATA t293 TYPE REF TO zcl_lnt_class.
              CLEAR t293.
              DATA t294 TYPE REF TO zif_lnt_object.
              CLEAR t294.
              DATA t295 TYPE REF TO zif_lnt_registry.
              DATA(t296) = t226.
              t295 = t296->reg.
              DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t297.
              DATA(t298) = abap_true.
              IF t298 = abap_true.
                DATA(t299) = |CLAS|.
                DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t300->has = abap_true.
                t300->value = t299.
                t297 = t300.
              ELSE.
                DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t301.
                t297 = t301.
              ENDIF.
              DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t302.
              DATA(t303) = abap_true.
              IF t303 = abap_true.
                DATA t304 TYPE string.
                DATA(t305) = t252.
                t304 = t305->value.
                DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t306->has = abap_true.
                t306->value = t304.
                t302 = t306.
              ELSE.
                DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t307.
                t302 = t307.
              ENDIF.
              t294 = t295->get_object( i_type_9913 = t297 i_name = t302 ).
              DATA t308 TYPE REF TO object.
              t308 = t294.
              t293 ?= t308.
              t292 = t293.
              DATA t309 TYPE REF TO zif_lnt_class_definition.
              CLEAR t309.
              DATA t310 TYPE abap_bool.
              DATA(t311) = t292.
              t310 = xsdbool( t311 IS BOUND ).
              IF t310 = abap_true.
                DATA t312 TYPE REF TO zif_lnt_class_definition.
                DATA t313 TYPE REF TO zcl_lnt_class.
                DATA(t314) = t292.
                t313 = t314.
                t312 = t313->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t309 = t312.
              ELSE.
                DATA t315 TYPE REF TO zif_lnt_class_definition.
                CLEAR t315.
                t309 = t315.
              ENDIF.
              t291 = t309.
              t283 = t291.
            ENDIF.
            t268 = t283.
            t259 = t268.
          ENDIF.
          t251 = t259.
          t250 = t251.
          DATA t316 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t316.
          DATA t317 TYPE abap_bool.
          DATA(t318) = t250.
          t317 = xsdbool( t318 IS BOUND ).
          IF t317 = abap_true.
            DATA t319 TYPE REF TO zif_lnt_interface_definition.
            DATA t320 TYPE REF TO zif_lnt_class_definition.
            DATA(t321) = t250.
            t320 = t321.
            t319 ?= t320.
            t316 = t319.
          ELSE.
            DATA t322 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t322.
            DATA t323 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t323.
            DATA t324 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t324.
            DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t325.
            DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t326.
            DATA(t327) = abap_true.
            IF t327 = abap_true.
              DATA t328 TYPE string.
              DATA(t329) = t228.
              t328 = t329->value.
              DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t330->has = abap_true.
              t330->value = t328.
              t326 = t330.
            ELSE.
              DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t331.
              t326 = t331.
            ENDIF.
            t325 = t326.
            DATA t332 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t332.
            DATA(t333) = VALUE abap_bool( ).
            DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t335) = t325.
            t334 = t335.
            DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t337.
            t336 = t337.
            DATA(t338) = VALUE abap_bool( ).
            DATA(t339) = t334.
            IF t339 IS INITIAL.
              t338 = abap_true.
            ELSEIF t339->has = abap_false.
              t338 = abap_true.
            ENDIF.
            t333 = t338.
            IF t333 = abap_true.
              DATA t340 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t340.
              t332 = t340.
            ELSE.
              DATA t341 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t341.
              DATA t342 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t342.
              DATA t343 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t343.
              DATA t344 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t345 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t346) = t226.
              t345 = t346->current.
              t344 = t345.
              DATA t347 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t347.
              DATA(t348) = VALUE abap_bool( ).
              DATA(t349) = t344.
              IF t349 IS INITIAL.
                t348 = abap_true.
              ENDIF.
              IF t348 = abap_true.
                DATA t350 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t350.
                t347 = t350.
              ELSE.
                DATA t351 TYPE REF TO zif_lnt_interface_definition.
                DATA t352 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t353) = t344.
                t352 = t353.
                DATA t354 TYPE string.
                DATA(t355) = t325.
                t354 = t355->value.
                t351 = t352->find_interface_definition( i_name = t354 ).
                t347 = t351.
              ENDIF.
              t343 = t347.
              t342 = t343.
              DATA t356 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t356.
              DATA t357 TYPE abap_bool.
              DATA(t358) = t342.
              t357 = xsdbool( t358 IS BOUND ).
              IF t357 = abap_true.
                DATA t359 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t359.
                DATA(t360) = abap_true.
                IF t360 = abap_true.
                  DATA t361 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t362) = t342.
                  t361 = t362.
                  t359 = t361.
                ELSE.
                  DATA t363 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t363.
                  t359 = t363.
                ENDIF.
                t356 = t359.
              ELSE.
                DATA t364 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t364.
                DATA t365 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t365.
                DATA t366 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t366.
                DATA t367 TYPE REF TO zif_lnt_object.
                CLEAR t367.
                DATA t368 TYPE REF TO zif_lnt_registry.
                DATA(t369) = t226.
                t368 = t369->reg.
                DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t370.
                DATA(t371) = abap_true.
                IF t371 = abap_true.
                  DATA(t372) = |INTF|.
                  DATA(t373) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t373->has = abap_true.
                  t373->value = t372.
                  t370 = t373.
                ELSE.
                  DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t374.
                  t370 = t374.
                ENDIF.
                DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t375.
                DATA(t376) = abap_true.
                IF t376 = abap_true.
                  DATA t377 TYPE string.
                  DATA(t378) = t325.
                  t377 = t378->value.
                  DATA(t379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t379->has = abap_true.
                  t379->value = t377.
                  t375 = t379.
                ELSE.
                  DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t380.
                  t375 = t380.
                ENDIF.
                t367 = t368->get_object( i_type_9913 = t370 i_name = t375 ).
                DATA t381 TYPE REF TO object.
                t381 = t367.
                t366 ?= t381.
                t365 = t366.
                DATA t382 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t382.
                DATA t383 TYPE abap_bool.
                DATA(t384) = t365.
                t383 = xsdbool( t384 IS BOUND ).
                IF t383 = abap_true.
                  DATA t385 TYPE REF TO zif_lnt_interface_definition.
                  DATA t386 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t387 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t388) = t365.
                  t387 = t388.
                  t386 = t387.
                  DATA t389 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t390) = t386.
                  t389 = t390->def.
                  t385 = t389.
                  t382 = t385.
                ELSE.
                  DATA t391 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t391.
                  t382 = t391.
                ENDIF.
                t364 = t382.
                t356 = t364.
              ENDIF.
              t341 = t356.
              t332 = t341.
            ENDIF.
            t324 = t332.
            t323 = t324.
            DATA t392 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t392.
            DATA t393 TYPE abap_bool.
            DATA(t394) = t323.
            t393 = xsdbool( t394 IS BOUND ).
            IF t393 = abap_true.
              DATA t395 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t395.
              DATA(t396) = abap_true.
              IF t396 = abap_true.
                DATA t397 TYPE REF TO zif_lnt_interface_definition.
                DATA(t398) = t323.
                t397 = t398.
                t395 = t397.
              ELSE.
                DATA t399 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t399.
                t395 = t399.
              ENDIF.
              t392 = t395.
            ELSE.
              DATA t400 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t400.
              t392 = t400.
            ENDIF.
            t322 = t392.
            t316 = t322.
          ENDIF.
          t249 = t316.
          t240 = t249.
        ENDIF.
        t225 = t240.
        DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t401.
        DATA t402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t403) = t217.
        DATA(t404) = |~|.
        DATA(t405) = strlen( t403 ).
        DATA t406 TYPE i.
        DATA(t407) = VALUE i( ).
        DATA(t408) = VALUE i( ).
        DATA t409 TYPE i.
        DATA(t410) = VALUE string( ).
        CREATE OBJECT t402.
        t409 = strlen( t404 ).
        t406 = 0.
        IF t409 = 0.
          WHILE t406 < t405.
            t410 = t403+t406(1).
            APPEND t410 TO t402->items.
            t406 = t406 + 1.
          ENDWHILE.
        ELSE.
          WHILE t406 <= t405.
            FIND FIRST OCCURRENCE OF t404 IN SECTION OFFSET t406 OF t403 MATCH OFFSET t407.
            IF sy-subrc = 0.
              t408 = t407 - t406.
            ELSE.
              t407 = -1.
              t408 = t405 - t406.
            ENDIF.
            CLEAR t410.
            IF t408 > 0.
              t410 = t403+t406(t408).
            ENDIF.
            APPEND t410 TO t402->items.
            IF t407 < 0.
              EXIT.
            ENDIF.
            t406 = t407 + t409.
          ENDWHILE.
        ENDIF.
        DATA(t411) = 1.
        t401 = t402->get( p0 = t411 ).
        t224 = me->search_event( i_def = t225 i_name = t401 ).
        t223 = t224.
        DATA t412 TYPE abap_bool.
        DATA(t413) = t223.
        t412 = xsdbool( t413 IS BOUND ).
        IF t412 = abap_true.
          DATA t414 TYPE REF TO zif_lnt_event_definition.
          CLEAR t414.
          DATA(t415) = abap_true.
          IF t415 = abap_true.
            DATA t416 TYPE REF TO zif_lnt_event_definition.
            DATA(t417) = t223.
            t416 = t417.
            t414 = t416.
          ELSE.
            DATA t418 TYPE REF TO zif_lnt_event_definition.
            CLEAR t418.
            t414 = t418.
          ENDIF.
          result = t414.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t421 TYPE REF TO zif_lnt_interface_definition.
    DATA(t422) = t1.
    t421 = t422.
    t420 = t421->get_super_class( ).
    t419 = t420.
    DATA(t423) = VALUE abap_bool( ).
    DATA(t424) = t419.
    IF t424 IS BOUND.
      IF t424->has = abap_true.
        t423 = xsdbool( strlen( t424->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t423 = abap_true.
      DATA t425 TYPE REF TO zif_lnt_event_definition.
      CLEAR t425.
      DATA t426 TYPE REF TO zif_lnt_interface_definition.
      DATA t427 TYPE REF TO zif_lnt_class_definition.
      DATA t428 TYPE string.
      DATA(t429) = t419.
      t428 = t429->value.
      t427 = me->find_super_definition( i_name = t428 ).
      t426 ?= t427.
      DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t430.
      DATA(t431) = abap_true.
      IF t431 = abap_true.
        DATA t432 TYPE string.
        DATA(t433) = t2.
        t432 = t433->value.
        DATA(t434) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t434->has = abap_true.
        t434->value = t432.
        t430 = t434.
      ELSE.
        DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t435.
        t430 = t435.
      ENDIF.
      t425 = me->search_event( i_def = t426 i_name = t430 ).
      result = t425.
      RETURN.
    ENDIF.
    DATA t436 TYPE REF TO zif_lnt_event_definition.
    CLEAR t436.
    result = t436.

  ENDMETHOD.

  METHOD search_attribute_name.
    DATA(t1) = i_def.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_interface_definition.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ELSEIF t17->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_class_attribute.
      CLEAR t18.
      result = t18.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE string.
    DATA t21 TYPE string.
    DATA(t22) = t2.
    t21 = t22->value.
    DATA(t23) = strlen( t21 ).
    t20 = t21.
    IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t20 TO UPPER CASE.
    ELSE.
      t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
    ENDIF.
    t19 = t20.
    DATA t24 TYPE REF TO zif_lnt_attributes.
    DATA t25 TYPE REF TO zif_lnt_attributes.
    DATA t26 TYPE REF TO zif_lnt_interface_definition.
    DATA(t27) = t1.
    t26 = t27.
    t25 = t26->get_attributes( ).
    t24 = t25.
    DATA t28 TYPE abap_bool.
    DATA(t29) = t24.
    t28 = xsdbool( t29 IS BOUND ).
    IF t28 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t24.
      t30 = t31->get_all( ).
      DATA t32 TYPE REF TO zcl_lnt_class_attribute.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      DATA(t34) = VALUE i( ).
      DO.
        t30->load( ).
        IF t34 >= lines( t30->items ).
          EXIT.
        ENDIF.
        CLEAR t33.
        READ TABLE t30->items INDEX t34 + 1 INTO t33.
        t34 = t34 + 1.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t33.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t33.
        ENDIF.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE string( ).
        DATA(t39) = VALUE string( ).
        DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t41) = t32.
        t40 = t41.
        DATA(t42) = VALUE string( ).
        DATA t43 TYPE string.
        DATA t44 TYPE string.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t47) = t40.
        t46 = t47->token.
        t45 = t46.
        DATA t48 TYPE string.
        DATA(t49) = t45.
        t48 = t49->str.
        t44 = t48.
        t43 = t44.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = VALUE string( ).
        DATA(t52) = t43.
        DATA(t53) = 0.
        DATA(t54) = 1.
        DATA(t55) = strlen( t52 ).
        IF t53 < 0.
          t53 = t53 + t55.
          IF t53 < 0.
            t53 = 0.
          ENDIF.
        ENDIF.
        IF t53 > t55 OR t54 <= 0.
          CLEAR t51.
        ELSE.
          IF t54 > t55 - t53.
            t54 = t55 - t53.
          ENDIF.
          t51 = t52+t53(t54).
        ENDIF.
        DATA(t56) = |!|.
        t50 = xsdbool( t51 = t56 ).
        IF t50 = abap_true.
          DATA(t57) = VALUE string( ).
          DATA t58 TYPE string.
          DATA(t59) = t43.
          t58 = t59.
          DATA(t60) = VALUE string( ).
          DATA(t61) = t58.
          DATA(t62) = 1.
          DATA t63 TYPE i.
          DATA(t64) = t58.
          DATA(t65) = strlen( t64 ).
          t63 = t65.
          DATA(t66) = strlen( t61 ).
          IF t62 < 0.
            t62 = t62 + t66.
            IF t62 < 0.
              t62 = 0.
            ENDIF.
          ENDIF.
          IF t62 > t66 OR t63 <= 0.
            CLEAR t60.
          ELSE.
            IF t63 > t66 - t62.
              t63 = t66 - t62.
            ENDIF.
            t60 = t61+t62(t63).
          ENDIF.
          t57 = t60.
          t43 = t57.
        ENDIF.
        DATA(t67) = t43.
        t42 = t67.
        t39 = t42.
        DATA(t68) = strlen( t39 ).
        t38 = t39.
        IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t38 TO UPPER CASE.
        ELSE.
          t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
        ENDIF.
        DATA(t69) = t19.
        t37 = xsdbool( t38 = t69 ).
        IF t37 = abap_true.
          DATA t70 TYPE REF TO zcl_lnt_class_attribute.
          CLEAR t70.
          DATA(t71) = abap_true.
          IF t71 = abap_true.
            DATA(t72) = t32.
            t70 = t72.
          ELSE.
            DATA t73 TYPE REF TO zcl_lnt_class_attribute.
            CLEAR t73.
            t70 = t73.
          ENDIF.
          result = t70.
          RETURN.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zif_lnt_interface_definition.
    DATA(t78) = t1.
    t77 = t78.
    t76 = t77->get_aliases( ).
    t75 = t76.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA t80 TYPE abap_bool.
    DATA(t81) = t75.
    t80 = xsdbool( t81 IS BOUND ).
    IF t80 = abap_true.
      DATA(t82) = t75.
      t79 = t82.
    ELSE.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t83.
      t79 = t83.
    ENDIF.
    t74 = t79.
    DATA t84 TYPE REF TO zcl_lnt_alias.
    CLEAR t84.
    DATA t85 TYPE REF TO object.
    CLEAR t85.
    DATA(t86) = VALUE i( ).
    DO.
      t74->load( ).
      IF t86 >= lines( t74->items ).
        EXIT.
      ENDIF.
      CLEAR t85.
      READ TABLE t74->items INDEX t86 + 1 INTO t85.
      t86 = t86 + 1.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      CLEAR t84.
      IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t87 ?= t85.
        DATA t88 TYPE REF TO object.
        t88 = t87->as_ref( ).
        t84 ?= t88.
      ELSE.
        t84 ?= t85.
      ENDIF.
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = VALUE string( ).
      DATA(t91) = VALUE string( ).
      DATA t92 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t93) = t84.
      t92 = t93.
      DATA(t94) = VALUE string( ).
      DATA t95 TYPE string.
      DATA t96 TYPE string.
      DATA t97 TYPE REF TO zcl_lnt_abstract_token.
      DATA t98 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t99) = t92.
      t98 = t99->token.
      t97 = t98.
      DATA t100 TYPE string.
      DATA(t101) = t97.
      t100 = t101->str.
      t96 = t100.
      t95 = t96.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = VALUE string( ).
      DATA(t104) = t95.
      DATA(t105) = 0.
      DATA(t106) = 1.
      DATA(t107) = strlen( t104 ).
      IF t105 < 0.
        t105 = t105 + t107.
        IF t105 < 0.
          t105 = 0.
        ENDIF.
      ENDIF.
      IF t105 > t107 OR t106 <= 0.
        CLEAR t103.
      ELSE.
        IF t106 > t107 - t105.
          t106 = t107 - t105.
        ENDIF.
        t103 = t104+t105(t106).
      ENDIF.
      DATA(t108) = |!|.
      t102 = xsdbool( t103 = t108 ).
      IF t102 = abap_true.
        DATA(t109) = VALUE string( ).
        DATA t110 TYPE string.
        DATA(t111) = t95.
        t110 = t111.
        DATA(t112) = VALUE string( ).
        DATA(t113) = t110.
        DATA(t114) = 1.
        DATA t115 TYPE i.
        DATA(t116) = t110.
        DATA(t117) = strlen( t116 ).
        t115 = t117.
        DATA(t118) = strlen( t113 ).
        IF t114 < 0.
          t114 = t114 + t118.
          IF t114 < 0.
            t114 = 0.
          ENDIF.
        ENDIF.
        IF t114 > t118 OR t115 <= 0.
          CLEAR t112.
        ELSE.
          IF t115 > t118 - t114.
            t115 = t118 - t114.
          ENDIF.
          t112 = t113+t114(t115).
        ENDIF.
        t109 = t112.
        t95 = t109.
      ENDIF.
      DATA(t119) = t95.
      t94 = t119.
      t91 = t94.
      DATA(t120) = strlen( t91 ).
      t90 = t91.
      IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t90 TO UPPER CASE.
      ELSE.
        t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
      ENDIF.
      DATA(t121) = t19.
      t89 = xsdbool( t90 = t121 ).
      IF t89 = abap_true.
        DATA t122 TYPE string.
        DATA t123 TYPE string.
        DATA t124 TYPE REF TO zcl_lnt_alias.
        DATA(t125) = t84.
        t124 = t125.
        DATA t126 TYPE string.
        DATA(t127) = t124.
        t126 = t127->component.
        t123 = t126.
        t122 = t123.
        DATA t128 TYPE REF TO zcl_lnt_class_attribute.
        CLEAR t128.
        DATA t129 TYPE REF TO zcl_lnt_class_attribute.
        CLEAR t129.
        DATA t130 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t130.
        DATA t131 TYPE REF TO zcl_lnt_current_scope.
        DATA(t132) = me->scope.
        t131 = t132.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t133.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t136) = t122.
        DATA(t137) = |~|.
        DATA(t138) = strlen( t136 ).
        DATA t139 TYPE i.
        DATA(t140) = VALUE i( ).
        DATA(t141) = VALUE i( ).
        DATA t142 TYPE i.
        DATA(t143) = VALUE string( ).
        CREATE OBJECT t135.
        t142 = strlen( t137 ).
        t139 = 0.
        IF t142 = 0.
          WHILE t139 < t138.
            t143 = t136+t139(1).
            APPEND t143 TO t135->items.
            t139 = t139 + 1.
          ENDWHILE.
        ELSE.
          WHILE t139 <= t138.
            FIND FIRST OCCURRENCE OF t137 IN SECTION OFFSET t139 OF t136 MATCH OFFSET t140.
            IF sy-subrc = 0.
              t141 = t140 - t139.
            ELSE.
              t140 = -1.
              t141 = t138 - t139.
            ENDIF.
            CLEAR t143.
            IF t141 > 0.
              t143 = t136+t139(t141).
            ENDIF.
            APPEND t143 TO t135->items.
            IF t140 < 0.
              EXIT.
            ENDIF.
            t139 = t140 + t142.
          ENDWHILE.
        ENDIF.
        DATA(t144) = 0.
        t134 = t135->get( p0 = t144 ).
        t133 = t134.
        DATA t145 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t145.
        DATA(t146) = VALUE abap_bool( ).
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t148) = t133.
        t147 = t148.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        t149 = t150.
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = t147.
        IF t152 IS INITIAL.
          t151 = abap_true.
        ELSEIF t152->has = abap_false.
          t151 = abap_true.
        ENDIF.
        t146 = t151.
        IF t146 = abap_true.
          DATA t153 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t153.
          t145 = t153.
        ELSE.
          DATA t154 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t154.
          DATA t155 TYPE REF TO zif_lnt_class_definition.
          CLEAR t155.
          DATA t156 TYPE REF TO zif_lnt_class_definition.
          CLEAR t156.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t158.
          DATA(t159) = abap_true.
          IF t159 = abap_true.
            DATA t160 TYPE string.
            DATA(t161) = t133.
            t160 = t161->value.
            DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t162->has = abap_true.
            t162->value = t160.
            t158 = t162.
          ELSE.
            DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t163.
            t158 = t163.
          ENDIF.
          t157 = t158.
          DATA t164 TYPE REF TO zif_lnt_class_definition.
          CLEAR t164.
          DATA(t165) = VALUE abap_bool( ).
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t167) = t157.
          t166 = t167.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          t168 = t169.
          DATA(t170) = VALUE abap_bool( ).
          DATA(t171) = t166.
          IF t171 IS INITIAL.
            t170 = abap_true.
          ELSEIF t171->has = abap_false.
            t170 = abap_true.
          ENDIF.
          t165 = t170.
          IF t165 = abap_true.
            DATA t172 TYPE REF TO zif_lnt_class_definition.
            CLEAR t172.
            t164 = t172.
          ELSE.
            DATA t173 TYPE REF TO zif_lnt_class_definition.
            CLEAR t173.
            DATA t174 TYPE REF TO zif_lnt_class_definition.
            CLEAR t174.
            DATA t175 TYPE REF TO zif_lnt_class_definition.
            CLEAR t175.
            DATA t176 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t177 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t178) = t131.
            t177 = t178->current.
            t176 = t177.
            DATA t179 TYPE REF TO zif_lnt_class_definition.
            CLEAR t179.
            DATA(t180) = VALUE abap_bool( ).
            DATA(t181) = t176.
            IF t181 IS INITIAL.
              t180 = abap_true.
            ENDIF.
            IF t180 = abap_true.
              DATA t182 TYPE REF TO zif_lnt_class_definition.
              CLEAR t182.
              t179 = t182.
            ELSE.
              DATA t183 TYPE REF TO zif_lnt_class_definition.
              DATA t184 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t185) = t176.
              t184 = t185.
              DATA t186 TYPE string.
              DATA(t187) = t157.
              t186 = t187->value.
              t183 = t184->find_class_definition( i_name = t186 ).
              t179 = t183.
            ENDIF.
            t175 = t179.
            t174 = t175.
            DATA t188 TYPE REF TO zif_lnt_class_definition.
            CLEAR t188.
            DATA t189 TYPE abap_bool.
            DATA(t190) = t174.
            t189 = xsdbool( t190 IS BOUND ).
            IF t189 = abap_true.
              DATA t191 TYPE REF TO zif_lnt_class_definition.
              CLEAR t191.
              DATA(t192) = abap_true.
              IF t192 = abap_true.
                DATA t193 TYPE REF TO zif_lnt_class_definition.
                DATA(t194) = t174.
                t193 = t194.
                t191 = t193.
              ELSE.
                DATA t195 TYPE REF TO zif_lnt_class_definition.
                CLEAR t195.
                t191 = t195.
              ENDIF.
              t188 = t191.
            ELSE.
              DATA t196 TYPE REF TO zif_lnt_class_definition.
              CLEAR t196.
              DATA t197 TYPE REF TO zcl_lnt_class.
              CLEAR t197.
              DATA t198 TYPE REF TO zcl_lnt_class.
              CLEAR t198.
              DATA t199 TYPE REF TO zif_lnt_object.
              CLEAR t199.
              DATA t200 TYPE REF TO zif_lnt_registry.
              DATA(t201) = t131.
              t200 = t201->reg.
              DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t202.
              DATA(t203) = abap_true.
              IF t203 = abap_true.
                DATA(t204) = |CLAS|.
                DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t205->has = abap_true.
                t205->value = t204.
                t202 = t205.
              ELSE.
                DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t206.
                t202 = t206.
              ENDIF.
              DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t207.
              DATA(t208) = abap_true.
              IF t208 = abap_true.
                DATA t209 TYPE string.
                DATA(t210) = t157.
                t209 = t210->value.
                DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t211->has = abap_true.
                t211->value = t209.
                t207 = t211.
              ELSE.
                DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t212.
                t207 = t212.
              ENDIF.
              t199 = t200->get_object( i_type_9913 = t202 i_name = t207 ).
              DATA t213 TYPE REF TO object.
              t213 = t199.
              t198 ?= t213.
              t197 = t198.
              DATA t214 TYPE REF TO zif_lnt_class_definition.
              CLEAR t214.
              DATA t215 TYPE abap_bool.
              DATA(t216) = t197.
              t215 = xsdbool( t216 IS BOUND ).
              IF t215 = abap_true.
                DATA t217 TYPE REF TO zif_lnt_class_definition.
                DATA t218 TYPE REF TO zcl_lnt_class.
                DATA(t219) = t197.
                t218 = t219.
                t217 = t218->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t214 = t217.
              ELSE.
                DATA t220 TYPE REF TO zif_lnt_class_definition.
                CLEAR t220.
                t214 = t220.
              ENDIF.
              t196 = t214.
              t188 = t196.
            ENDIF.
            t173 = t188.
            t164 = t173.
          ENDIF.
          t156 = t164.
          t155 = t156.
          DATA t221 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t221.
          DATA t222 TYPE abap_bool.
          DATA(t223) = t155.
          t222 = xsdbool( t223 IS BOUND ).
          IF t222 = abap_true.
            DATA t224 TYPE REF TO zif_lnt_interface_definition.
            DATA t225 TYPE REF TO zif_lnt_class_definition.
            DATA(t226) = t155.
            t225 = t226.
            t224 ?= t225.
            t221 = t224.
          ELSE.
            DATA t227 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t227.
            DATA t228 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t228.
            DATA t229 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t229.
            DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t230.
            DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t231.
            DATA(t232) = abap_true.
            IF t232 = abap_true.
              DATA t233 TYPE string.
              DATA(t234) = t133.
              t233 = t234->value.
              DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t235->has = abap_true.
              t235->value = t233.
              t231 = t235.
            ELSE.
              DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t236.
              t231 = t236.
            ENDIF.
            t230 = t231.
            DATA t237 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t237.
            DATA(t238) = VALUE abap_bool( ).
            DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t240) = t230.
            t239 = t240.
            DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t242.
            t241 = t242.
            DATA(t243) = VALUE abap_bool( ).
            DATA(t244) = t239.
            IF t244 IS INITIAL.
              t243 = abap_true.
            ELSEIF t244->has = abap_false.
              t243 = abap_true.
            ENDIF.
            t238 = t243.
            IF t238 = abap_true.
              DATA t245 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t245.
              t237 = t245.
            ELSE.
              DATA t246 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t246.
              DATA t247 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t247.
              DATA t248 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t248.
              DATA t249 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t250 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t251) = t131.
              t250 = t251->current.
              t249 = t250.
              DATA t252 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t252.
              DATA(t253) = VALUE abap_bool( ).
              DATA(t254) = t249.
              IF t254 IS INITIAL.
                t253 = abap_true.
              ENDIF.
              IF t253 = abap_true.
                DATA t255 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t255.
                t252 = t255.
              ELSE.
                DATA t256 TYPE REF TO zif_lnt_interface_definition.
                DATA t257 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t258) = t249.
                t257 = t258.
                DATA t259 TYPE string.
                DATA(t260) = t230.
                t259 = t260->value.
                t256 = t257->find_interface_definition( i_name = t259 ).
                t252 = t256.
              ENDIF.
              t248 = t252.
              t247 = t248.
              DATA t261 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t261.
              DATA t262 TYPE abap_bool.
              DATA(t263) = t247.
              t262 = xsdbool( t263 IS BOUND ).
              IF t262 = abap_true.
                DATA t264 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t264.
                DATA(t265) = abap_true.
                IF t265 = abap_true.
                  DATA t266 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t267) = t247.
                  t266 = t267.
                  t264 = t266.
                ELSE.
                  DATA t268 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t268.
                  t264 = t268.
                ENDIF.
                t261 = t264.
              ELSE.
                DATA t269 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t269.
                DATA t270 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t270.
                DATA t271 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t271.
                DATA t272 TYPE REF TO zif_lnt_object.
                CLEAR t272.
                DATA t273 TYPE REF TO zif_lnt_registry.
                DATA(t274) = t131.
                t273 = t274->reg.
                DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t275.
                DATA(t276) = abap_true.
                IF t276 = abap_true.
                  DATA(t277) = |INTF|.
                  DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t278->has = abap_true.
                  t278->value = t277.
                  t275 = t278.
                ELSE.
                  DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t279.
                  t275 = t279.
                ENDIF.
                DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t280.
                DATA(t281) = abap_true.
                IF t281 = abap_true.
                  DATA t282 TYPE string.
                  DATA(t283) = t230.
                  t282 = t283->value.
                  DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t284->has = abap_true.
                  t284->value = t282.
                  t280 = t284.
                ELSE.
                  DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t285.
                  t280 = t285.
                ENDIF.
                t272 = t273->get_object( i_type_9913 = t275 i_name = t280 ).
                DATA t286 TYPE REF TO object.
                t286 = t272.
                t271 ?= t286.
                t270 = t271.
                DATA t287 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t287.
                DATA t288 TYPE abap_bool.
                DATA(t289) = t270.
                t288 = xsdbool( t289 IS BOUND ).
                IF t288 = abap_true.
                  DATA t290 TYPE REF TO zif_lnt_interface_definition.
                  DATA t291 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t292 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t293) = t270.
                  t292 = t293.
                  t291 = t292.
                  DATA t294 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t295) = t291.
                  t294 = t295->def.
                  t290 = t294.
                  t287 = t290.
                ELSE.
                  DATA t296 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t296.
                  t287 = t296.
                ENDIF.
                t269 = t287.
                t261 = t269.
              ENDIF.
              t246 = t261.
              t237 = t246.
            ENDIF.
            t229 = t237.
            t228 = t229.
            DATA t297 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t297.
            DATA t298 TYPE abap_bool.
            DATA(t299) = t228.
            t298 = xsdbool( t299 IS BOUND ).
            IF t298 = abap_true.
              DATA t300 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t300.
              DATA(t301) = abap_true.
              IF t301 = abap_true.
                DATA t302 TYPE REF TO zif_lnt_interface_definition.
                DATA(t303) = t228.
                t302 = t303.
                t300 = t302.
              ELSE.
                DATA t304 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t304.
                t300 = t304.
              ENDIF.
              t297 = t300.
            ELSE.
              DATA t305 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t305.
              t297 = t305.
            ENDIF.
            t227 = t297.
            t221 = t227.
          ENDIF.
          t154 = t221.
          t145 = t154.
        ENDIF.
        t130 = t145.
        DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t306.
        DATA t307 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t308) = t122.
        DATA(t309) = |~|.
        DATA(t310) = strlen( t308 ).
        DATA t311 TYPE i.
        DATA(t312) = VALUE i( ).
        DATA(t313) = VALUE i( ).
        DATA t314 TYPE i.
        DATA(t315) = VALUE string( ).
        CREATE OBJECT t307.
        t314 = strlen( t309 ).
        t311 = 0.
        IF t314 = 0.
          WHILE t311 < t310.
            t315 = t308+t311(1).
            APPEND t315 TO t307->items.
            t311 = t311 + 1.
          ENDWHILE.
        ELSE.
          WHILE t311 <= t310.
            FIND FIRST OCCURRENCE OF t309 IN SECTION OFFSET t311 OF t308 MATCH OFFSET t312.
            IF sy-subrc = 0.
              t313 = t312 - t311.
            ELSE.
              t312 = -1.
              t313 = t310 - t311.
            ENDIF.
            CLEAR t315.
            IF t313 > 0.
              t315 = t308+t311(t313).
            ENDIF.
            APPEND t315 TO t307->items.
            IF t312 < 0.
              EXIT.
            ENDIF.
            t311 = t312 + t314.
          ENDWHILE.
        ENDIF.
        DATA(t316) = 1.
        t306 = t307->get( p0 = t316 ).
        t129 = me->search_attribute_name( i_def = t130 i_name = t306 ).
        t128 = t129.
        DATA t317 TYPE abap_bool.
        DATA(t318) = t128.
        t317 = xsdbool( t318 IS BOUND ).
        IF t317 = abap_true.
          DATA t319 TYPE REF TO zcl_lnt_class_attribute.
          CLEAR t319.
          DATA(t320) = abap_true.
          IF t320 = abap_true.
            DATA t321 TYPE REF TO zcl_lnt_class_attribute.
            DATA(t322) = t128.
            t321 = t322.
            t319 = t321.
          ELSE.
            DATA t323 TYPE REF TO zcl_lnt_class_attribute.
            CLEAR t323.
            t319 = t323.
          ENDIF.
          result = t319.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t324) = VALUE abap_bool( ).
    DATA(t325) = VALUE i( ).
    DATA t326 TYPE string.
    DATA(t327) = t2.
    t326 = t327->value.
    DATA(t328) = |~|.
    DATA(t329) = strlen( t326 ).
    IF t328 IS INITIAL.
      t325 = 0.
    ELSE.
      FIND t328 IN t326 MATCH OFFSET t325.
      IF sy-subrc <> 0.
        t325 = -1.
      ENDIF.
    ENDIF.
    DATA(t330) = 0.
    t324 = xsdbool( t325 >= t330 ).
    IF t324 = abap_true.
      DATA(t331) = VALUE string( ).
      DATA(t332) = VALUE string( ).
      DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t334) = t19.
      DATA(t335) = |~|.
      DATA(t336) = strlen( t334 ).
      DATA t337 TYPE i.
      DATA(t338) = VALUE i( ).
      DATA(t339) = VALUE i( ).
      DATA t340 TYPE i.
      DATA(t341) = VALUE string( ).
      CREATE OBJECT t333.
      t340 = strlen( t335 ).
      t337 = 0.
      IF t340 = 0.
        WHILE t337 < t336.
          t341 = t334+t337(1).
          APPEND t341 TO t333->items.
          t337 = t337 + 1.
        ENDWHILE.
      ELSE.
        WHILE t337 <= t336.
          FIND FIRST OCCURRENCE OF t335 IN SECTION OFFSET t337 OF t334 MATCH OFFSET t338.
          IF sy-subrc = 0.
            t339 = t338 - t337.
          ELSE.
            t338 = -1.
            t339 = t336 - t337.
          ENDIF.
          CLEAR t341.
          IF t339 > 0.
            t341 = t334+t337(t339).
          ENDIF.
          APPEND t341 TO t333->items.
          IF t338 < 0.
            EXIT.
          ENDIF.
          t337 = t338 + t340.
        ENDWHILE.
      ENDIF.
      IF t333->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t333->load( ).
      CLEAR t332.
      READ TABLE t333->items INDEX 1 INTO t332.
      t331 = t332.
      DATA t342 TYPE abap_bool.
      DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t344 TYPE REF TO zif_lnt_interface_definition.
      DATA(t345) = t1.
      t344 = t345.
      t343 = me->list_interfaces_recursive( i_definition = t344 ).
      DATA(t346) = t331.
      t342 = t343->includes( p0 = t346 ).
      IF t342 = abap_true.
        DATA t347 TYPE REF TO zcl_lnt_class_attribute.
        CLEAR t347.
        DATA t348 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t348.
        DATA t349 TYPE REF TO zcl_lnt_current_scope.
        DATA(t350) = me->scope.
        t349 = t350.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t351.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t352.
        DATA(t353) = abap_true.
        IF t353 = abap_true.
          DATA(t354) = t331.
          DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t355->has = abap_true.
          t355->value = t354.
          t352 = t355.
        ELSE.
          DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t356.
          t352 = t356.
        ENDIF.
        t351 = t352.
        DATA t357 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t357.
        DATA(t358) = VALUE abap_bool( ).
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t360) = t351.
        t359 = t360.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        t361 = t362.
        DATA(t363) = VALUE abap_bool( ).
        DATA(t364) = t359.
        IF t364 IS INITIAL.
          t363 = abap_true.
        ELSEIF t364->has = abap_false.
          t363 = abap_true.
        ENDIF.
        t358 = t363.
        IF t358 = abap_true.
          DATA t365 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t365.
          t357 = t365.
        ELSE.
          DATA t366 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t366.
          DATA t367 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t367.
          DATA t368 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t368.
          DATA t369 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t370 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t371) = t349.
          t370 = t371->current.
          t369 = t370.
          DATA t372 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t372.
          DATA(t373) = VALUE abap_bool( ).
          DATA(t374) = t369.
          IF t374 IS INITIAL.
            t373 = abap_true.
          ENDIF.
          IF t373 = abap_true.
            DATA t375 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t375.
            t372 = t375.
          ELSE.
            DATA t376 TYPE REF TO zif_lnt_interface_definition.
            DATA t377 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t378) = t369.
            t377 = t378.
            DATA t379 TYPE string.
            DATA(t380) = t351.
            t379 = t380->value.
            t376 = t377->find_interface_definition( i_name = t379 ).
            t372 = t376.
          ENDIF.
          t368 = t372.
          t367 = t368.
          DATA t381 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t381.
          DATA t382 TYPE abap_bool.
          DATA(t383) = t367.
          t382 = xsdbool( t383 IS BOUND ).
          IF t382 = abap_true.
            DATA t384 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t384.
            DATA(t385) = abap_true.
            IF t385 = abap_true.
              DATA t386 TYPE REF TO zif_lnt_interface_definition.
              DATA(t387) = t367.
              t386 = t387.
              t384 = t386.
            ELSE.
              DATA t388 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t388.
              t384 = t388.
            ENDIF.
            t381 = t384.
          ELSE.
            DATA t389 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t389.
            DATA t390 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t390.
            DATA t391 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t391.
            DATA t392 TYPE REF TO zif_lnt_object.
            CLEAR t392.
            DATA t393 TYPE REF TO zif_lnt_registry.
            DATA(t394) = t349.
            t393 = t394->reg.
            DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t395.
            DATA(t396) = abap_true.
            IF t396 = abap_true.
              DATA(t397) = |INTF|.
              DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t398->has = abap_true.
              t398->value = t397.
              t395 = t398.
            ELSE.
              DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t399.
              t395 = t399.
            ENDIF.
            DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t400.
            DATA(t401) = abap_true.
            IF t401 = abap_true.
              DATA t402 TYPE string.
              DATA(t403) = t351.
              t402 = t403->value.
              DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t404->has = abap_true.
              t404->value = t402.
              t400 = t404.
            ELSE.
              DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t405.
              t400 = t405.
            ENDIF.
            t392 = t393->get_object( i_type_9913 = t395 i_name = t400 ).
            DATA t406 TYPE REF TO object.
            t406 = t392.
            t391 ?= t406.
            t390 = t391.
            DATA t407 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t407.
            DATA t408 TYPE abap_bool.
            DATA(t409) = t390.
            t408 = xsdbool( t409 IS BOUND ).
            IF t408 = abap_true.
              DATA t410 TYPE REF TO zif_lnt_interface_definition.
              DATA t411 TYPE REF TO zcl_lnt_ob_interface.
              DATA t412 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t413) = t390.
              t412 = t413.
              t411 = t412.
              DATA t414 TYPE REF TO zif_lnt_interface_definition.
              DATA(t415) = t411.
              t414 = t415->def.
              t410 = t414.
              t407 = t410.
            ELSE.
              DATA t416 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t416.
              t407 = t416.
            ENDIF.
            t389 = t407.
            t381 = t389.
          ENDIF.
          t366 = t381.
          t357 = t366.
        ENDIF.
        t348 = t357.
        DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t417.
        DATA t418 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t419 TYPE string.
        DATA(t420) = t2.
        t419 = t420->value.
        DATA(t421) = |~|.
        DATA(t422) = strlen( t419 ).
        DATA t423 TYPE i.
        DATA(t424) = VALUE i( ).
        DATA(t425) = VALUE i( ).
        DATA t426 TYPE i.
        DATA(t427) = VALUE string( ).
        CREATE OBJECT t418.
        t426 = strlen( t421 ).
        t423 = 0.
        IF t426 = 0.
          WHILE t423 < t422.
            t427 = t419+t423(1).
            APPEND t427 TO t418->items.
            t423 = t423 + 1.
          ENDWHILE.
        ELSE.
          WHILE t423 <= t422.
            FIND FIRST OCCURRENCE OF t421 IN SECTION OFFSET t423 OF t419 MATCH OFFSET t424.
            IF sy-subrc = 0.
              t425 = t424 - t423.
            ELSE.
              t424 = -1.
              t425 = t422 - t423.
            ENDIF.
            CLEAR t427.
            IF t425 > 0.
              t427 = t419+t423(t425).
            ENDIF.
            APPEND t427 TO t418->items.
            IF t424 < 0.
              EXIT.
            ENDIF.
            t423 = t424 + t426.
          ENDWHILE.
        ENDIF.
        DATA(t428) = 1.
        t417 = t418->get( p0 = t428 ).
        t347 = me->search_attribute_name( i_def = t348 i_name = t417 ).
        result = t347.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t431 TYPE REF TO zif_lnt_interface_definition.
    DATA(t432) = t1.
    t431 = t432.
    t430 = t431->get_super_class( ).
    t429 = t430.
    DATA(t433) = VALUE abap_bool( ).
    DATA(t434) = t429.
    IF t434 IS BOUND.
      IF t434->has = abap_true.
        t433 = xsdbool( strlen( t434->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t433 = abap_true.
      DATA t435 TYPE REF TO zcl_lnt_class_attribute.
      CLEAR t435.
      DATA t436 TYPE REF TO zif_lnt_interface_definition.
      DATA t437 TYPE REF TO zif_lnt_class_definition.
      DATA t438 TYPE string.
      DATA(t439) = t429.
      t438 = t439->value.
      t437 = me->find_super_definition( i_name = t438 ).
      t436 ?= t437.
      DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t440.
      DATA(t441) = abap_true.
      IF t441 = abap_true.
        DATA t442 TYPE string.
        DATA(t443) = t2.
        t442 = t443->value.
        DATA(t444) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t444->has = abap_true.
        t444->value = t442.
        t440 = t444.
      ELSE.
        DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t445.
        t440 = t445.
      ENDIF.
      t435 = me->search_attribute_name( i_def = t436 i_name = t440 ).
      result = t435.
      RETURN.
    ENDIF.
    DATA t446 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t446.
    result = t446.

  ENDMETHOD.

  METHOD search_type_name.
    DATA(t1) = i_def.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_interface_definition.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ELSEIF t17->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t18.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t21 TYPE REF TO zif_lnt_type_definitions.
    DATA t22 TYPE REF TO zif_lnt_interface_definition.
    DATA(t23) = t1.
    t22 = t23.
    t21 = t22->get_type_definitions( ).
    DATA t24 TYPE string.
    DATA(t25) = t2.
    t24 = t25->value.
    t20 = t21->get_by_name( i_name = t24 ).
    t19 = t20.
    DATA t26 TYPE abap_bool.
    DATA(t27) = t19.
    t26 = xsdbool( t27 IS BOUND ).
    IF t26 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t31) = t19.
        t30 = t31.
        t28 = t30.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t32.
        t28 = t32.
      ENDIF.
      result = t28.
      RETURN.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zif_lnt_interface_definition.
    DATA(t35) = t1.
    t34 = t35.
    t33 = t34->get_aliases( ).
    DATA t36 TYPE REF TO zcl_lnt_alias.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
    DATA(t38) = VALUE i( ).
    DO.
      t33->load( ).
      IF t38 >= lines( t33->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t33->items INDEX t38 + 1 INTO t37.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t36.
      IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t37.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t36 ?= t40.
      ELSE.
        t36 ?= t37.
      ENDIF.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = VALUE string( ).
      DATA(t43) = VALUE string( ).
      DATA t44 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t45) = t36.
      t44 = t45.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE string.
      DATA t48 TYPE string.
      DATA t49 TYPE REF TO zcl_lnt_abstract_token.
      DATA t50 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t51) = t44.
      t50 = t51->token.
      t49 = t50.
      DATA t52 TYPE string.
      DATA(t53) = t49.
      t52 = t53->str.
      t48 = t52.
      t47 = t48.
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE string( ).
      DATA(t56) = t47.
      DATA(t57) = 0.
      DATA(t58) = 1.
      DATA(t59) = strlen( t56 ).
      IF t57 < 0.
        t57 = t57 + t59.
        IF t57 < 0.
          t57 = 0.
        ENDIF.
      ENDIF.
      IF t57 > t59 OR t58 <= 0.
        CLEAR t55.
      ELSE.
        IF t58 > t59 - t57.
          t58 = t59 - t57.
        ENDIF.
        t55 = t56+t57(t58).
      ENDIF.
      DATA(t60) = |!|.
      t54 = xsdbool( t55 = t60 ).
      IF t54 = abap_true.
        DATA(t61) = VALUE string( ).
        DATA t62 TYPE string.
        DATA(t63) = t47.
        t62 = t63.
        DATA(t64) = VALUE string( ).
        DATA(t65) = t62.
        DATA(t66) = 1.
        DATA t67 TYPE i.
        DATA(t68) = t62.
        DATA(t69) = strlen( t68 ).
        t67 = t69.
        DATA(t70) = strlen( t65 ).
        IF t66 < 0.
          t66 = t66 + t70.
          IF t66 < 0.
            t66 = 0.
          ENDIF.
        ENDIF.
        IF t66 > t70 OR t67 <= 0.
          CLEAR t64.
        ELSE.
          IF t67 > t70 - t66.
            t67 = t70 - t66.
          ENDIF.
          t64 = t65+t66(t67).
        ENDIF.
        t61 = t64.
        t47 = t61.
      ENDIF.
      DATA(t71) = t47.
      t46 = t71.
      t43 = t46.
      DATA(t72) = strlen( t43 ).
      t42 = t43.
      IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t42 TO UPPER CASE.
      ELSE.
        t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
      ENDIF.
      DATA t73 TYPE string.
      DATA t74 TYPE string.
      DATA(t75) = t2.
      t74 = t75->value.
      DATA(t76) = strlen( t74 ).
      t73 = t74.
      IF t73 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t73 TO UPPER CASE.
      ELSE.
        t73 = zlnt_runtime_uppe_91169605024d=>full( t73 ).
      ENDIF.
      t41 = xsdbool( t42 = t73 ).
      IF t41 = abap_true.
        DATA t77 TYPE string.
        DATA t78 TYPE string.
        DATA t79 TYPE REF TO zcl_lnt_alias.
        DATA(t80) = t36.
        t79 = t80.
        DATA t81 TYPE string.
        DATA(t82) = t79.
        t81 = t82->component.
        t78 = t81.
        t77 = t78.
        DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t83.
        DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t84.
        DATA t85 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t85.
        DATA t86 TYPE REF TO zcl_lnt_current_scope.
        DATA(t87) = me->scope.
        t86 = t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t91) = t77.
        DATA(t92) = |~|.
        DATA(t93) = strlen( t91 ).
        DATA t94 TYPE i.
        DATA(t95) = VALUE i( ).
        DATA(t96) = VALUE i( ).
        DATA t97 TYPE i.
        DATA(t98) = VALUE string( ).
        CREATE OBJECT t90.
        t97 = strlen( t92 ).
        t94 = 0.
        IF t97 = 0.
          WHILE t94 < t93.
            t98 = t91+t94(1).
            APPEND t98 TO t90->items.
            t94 = t94 + 1.
          ENDWHILE.
        ELSE.
          WHILE t94 <= t93.
            FIND FIRST OCCURRENCE OF t92 IN SECTION OFFSET t94 OF t91 MATCH OFFSET t95.
            IF sy-subrc = 0.
              t96 = t95 - t94.
            ELSE.
              t95 = -1.
              t96 = t93 - t94.
            ENDIF.
            CLEAR t98.
            IF t96 > 0.
              t98 = t91+t94(t96).
            ENDIF.
            APPEND t98 TO t90->items.
            IF t95 < 0.
              EXIT.
            ENDIF.
            t94 = t95 + t97.
          ENDWHILE.
        ENDIF.
        DATA(t99) = 0.
        t89 = t90->get( p0 = t99 ).
        t88 = t89.
        DATA t100 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t100.
        DATA(t101) = VALUE abap_bool( ).
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t103) = t88.
        t102 = t103.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        t104 = t105.
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = t102.
        IF t107 IS INITIAL.
          t106 = abap_true.
        ELSEIF t107->has = abap_false.
          t106 = abap_true.
        ENDIF.
        t101 = t106.
        IF t101 = abap_true.
          DATA t108 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t108.
          t100 = t108.
        ELSE.
          DATA t109 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t109.
          DATA t110 TYPE REF TO zif_lnt_class_definition.
          CLEAR t110.
          DATA t111 TYPE REF TO zif_lnt_class_definition.
          CLEAR t111.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA(t114) = abap_true.
          IF t114 = abap_true.
            DATA t115 TYPE string.
            DATA(t116) = t88.
            t115 = t116->value.
            DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t117->has = abap_true.
            t117->value = t115.
            t113 = t117.
          ELSE.
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t118.
            t113 = t118.
          ENDIF.
          t112 = t113.
          DATA t119 TYPE REF TO zif_lnt_class_definition.
          CLEAR t119.
          DATA(t120) = VALUE abap_bool( ).
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t122) = t112.
          t121 = t122.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          t123 = t124.
          DATA(t125) = VALUE abap_bool( ).
          DATA(t126) = t121.
          IF t126 IS INITIAL.
            t125 = abap_true.
          ELSEIF t126->has = abap_false.
            t125 = abap_true.
          ENDIF.
          t120 = t125.
          IF t120 = abap_true.
            DATA t127 TYPE REF TO zif_lnt_class_definition.
            CLEAR t127.
            t119 = t127.
          ELSE.
            DATA t128 TYPE REF TO zif_lnt_class_definition.
            CLEAR t128.
            DATA t129 TYPE REF TO zif_lnt_class_definition.
            CLEAR t129.
            DATA t130 TYPE REF TO zif_lnt_class_definition.
            CLEAR t130.
            DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t133) = t86.
            t132 = t133->current.
            t131 = t132.
            DATA t134 TYPE REF TO zif_lnt_class_definition.
            CLEAR t134.
            DATA(t135) = VALUE abap_bool( ).
            DATA(t136) = t131.
            IF t136 IS INITIAL.
              t135 = abap_true.
            ENDIF.
            IF t135 = abap_true.
              DATA t137 TYPE REF TO zif_lnt_class_definition.
              CLEAR t137.
              t134 = t137.
            ELSE.
              DATA t138 TYPE REF TO zif_lnt_class_definition.
              DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t140) = t131.
              t139 = t140.
              DATA t141 TYPE string.
              DATA(t142) = t112.
              t141 = t142->value.
              t138 = t139->find_class_definition( i_name = t141 ).
              t134 = t138.
            ENDIF.
            t130 = t134.
            t129 = t130.
            DATA t143 TYPE REF TO zif_lnt_class_definition.
            CLEAR t143.
            DATA t144 TYPE abap_bool.
            DATA(t145) = t129.
            t144 = xsdbool( t145 IS BOUND ).
            IF t144 = abap_true.
              DATA t146 TYPE REF TO zif_lnt_class_definition.
              CLEAR t146.
              DATA(t147) = abap_true.
              IF t147 = abap_true.
                DATA t148 TYPE REF TO zif_lnt_class_definition.
                DATA(t149) = t129.
                t148 = t149.
                t146 = t148.
              ELSE.
                DATA t150 TYPE REF TO zif_lnt_class_definition.
                CLEAR t150.
                t146 = t150.
              ENDIF.
              t143 = t146.
            ELSE.
              DATA t151 TYPE REF TO zif_lnt_class_definition.
              CLEAR t151.
              DATA t152 TYPE REF TO zcl_lnt_class.
              CLEAR t152.
              DATA t153 TYPE REF TO zcl_lnt_class.
              CLEAR t153.
              DATA t154 TYPE REF TO zif_lnt_object.
              CLEAR t154.
              DATA t155 TYPE REF TO zif_lnt_registry.
              DATA(t156) = t86.
              t155 = t156->reg.
              DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t157.
              DATA(t158) = abap_true.
              IF t158 = abap_true.
                DATA(t159) = |CLAS|.
                DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t160->has = abap_true.
                t160->value = t159.
                t157 = t160.
              ELSE.
                DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t161.
                t157 = t161.
              ENDIF.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t162.
              DATA(t163) = abap_true.
              IF t163 = abap_true.
                DATA t164 TYPE string.
                DATA(t165) = t112.
                t164 = t165->value.
                DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t166->has = abap_true.
                t166->value = t164.
                t162 = t166.
              ELSE.
                DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t167.
                t162 = t167.
              ENDIF.
              t154 = t155->get_object( i_type_9913 = t157 i_name = t162 ).
              DATA t168 TYPE REF TO object.
              t168 = t154.
              t153 ?= t168.
              t152 = t153.
              DATA t169 TYPE REF TO zif_lnt_class_definition.
              CLEAR t169.
              DATA t170 TYPE abap_bool.
              DATA(t171) = t152.
              t170 = xsdbool( t171 IS BOUND ).
              IF t170 = abap_true.
                DATA t172 TYPE REF TO zif_lnt_class_definition.
                DATA t173 TYPE REF TO zcl_lnt_class.
                DATA(t174) = t152.
                t173 = t174.
                t172 = t173->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t169 = t172.
              ELSE.
                DATA t175 TYPE REF TO zif_lnt_class_definition.
                CLEAR t175.
                t169 = t175.
              ENDIF.
              t151 = t169.
              t143 = t151.
            ENDIF.
            t128 = t143.
            t119 = t128.
          ENDIF.
          t111 = t119.
          t110 = t111.
          DATA t176 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t176.
          DATA t177 TYPE abap_bool.
          DATA(t178) = t110.
          t177 = xsdbool( t178 IS BOUND ).
          IF t177 = abap_true.
            DATA t179 TYPE REF TO zif_lnt_interface_definition.
            DATA t180 TYPE REF TO zif_lnt_class_definition.
            DATA(t181) = t110.
            t180 = t181.
            t179 ?= t180.
            t176 = t179.
          ELSE.
            DATA t182 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t182.
            DATA t183 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t183.
            DATA t184 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t184.
            DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t185.
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t186.
            DATA(t187) = abap_true.
            IF t187 = abap_true.
              DATA t188 TYPE string.
              DATA(t189) = t88.
              t188 = t189->value.
              DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t190->has = abap_true.
              t190->value = t188.
              t186 = t190.
            ELSE.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              t186 = t191.
            ENDIF.
            t185 = t186.
            DATA t192 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t192.
            DATA(t193) = VALUE abap_bool( ).
            DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t195) = t185.
            t194 = t195.
            DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t197.
            t196 = t197.
            DATA(t198) = VALUE abap_bool( ).
            DATA(t199) = t194.
            IF t199 IS INITIAL.
              t198 = abap_true.
            ELSEIF t199->has = abap_false.
              t198 = abap_true.
            ENDIF.
            t193 = t198.
            IF t193 = abap_true.
              DATA t200 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t200.
              t192 = t200.
            ELSE.
              DATA t201 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t201.
              DATA t202 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t202.
              DATA t203 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t203.
              DATA t204 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t205 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t206) = t86.
              t205 = t206->current.
              t204 = t205.
              DATA t207 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t207.
              DATA(t208) = VALUE abap_bool( ).
              DATA(t209) = t204.
              IF t209 IS INITIAL.
                t208 = abap_true.
              ENDIF.
              IF t208 = abap_true.
                DATA t210 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t210.
                t207 = t210.
              ELSE.
                DATA t211 TYPE REF TO zif_lnt_interface_definition.
                DATA t212 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t213) = t204.
                t212 = t213.
                DATA t214 TYPE string.
                DATA(t215) = t185.
                t214 = t215->value.
                t211 = t212->find_interface_definition( i_name = t214 ).
                t207 = t211.
              ENDIF.
              t203 = t207.
              t202 = t203.
              DATA t216 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t216.
              DATA t217 TYPE abap_bool.
              DATA(t218) = t202.
              t217 = xsdbool( t218 IS BOUND ).
              IF t217 = abap_true.
                DATA t219 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t219.
                DATA(t220) = abap_true.
                IF t220 = abap_true.
                  DATA t221 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t222) = t202.
                  t221 = t222.
                  t219 = t221.
                ELSE.
                  DATA t223 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t223.
                  t219 = t223.
                ENDIF.
                t216 = t219.
              ELSE.
                DATA t224 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t224.
                DATA t225 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t225.
                DATA t226 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t226.
                DATA t227 TYPE REF TO zif_lnt_object.
                CLEAR t227.
                DATA t228 TYPE REF TO zif_lnt_registry.
                DATA(t229) = t86.
                t228 = t229->reg.
                DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t230.
                DATA(t231) = abap_true.
                IF t231 = abap_true.
                  DATA(t232) = |INTF|.
                  DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t233->has = abap_true.
                  t233->value = t232.
                  t230 = t233.
                ELSE.
                  DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t234.
                  t230 = t234.
                ENDIF.
                DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t235.
                DATA(t236) = abap_true.
                IF t236 = abap_true.
                  DATA t237 TYPE string.
                  DATA(t238) = t185.
                  t237 = t238->value.
                  DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t239->has = abap_true.
                  t239->value = t237.
                  t235 = t239.
                ELSE.
                  DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t240.
                  t235 = t240.
                ENDIF.
                t227 = t228->get_object( i_type_9913 = t230 i_name = t235 ).
                DATA t241 TYPE REF TO object.
                t241 = t227.
                t226 ?= t241.
                t225 = t226.
                DATA t242 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t242.
                DATA t243 TYPE abap_bool.
                DATA(t244) = t225.
                t243 = xsdbool( t244 IS BOUND ).
                IF t243 = abap_true.
                  DATA t245 TYPE REF TO zif_lnt_interface_definition.
                  DATA t246 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t247 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t248) = t225.
                  t247 = t248.
                  t246 = t247.
                  DATA t249 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t250) = t246.
                  t249 = t250->def.
                  t245 = t249.
                  t242 = t245.
                ELSE.
                  DATA t251 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t251.
                  t242 = t251.
                ENDIF.
                t224 = t242.
                t216 = t224.
              ENDIF.
              t201 = t216.
              t192 = t201.
            ENDIF.
            t184 = t192.
            t183 = t184.
            DATA t252 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t252.
            DATA t253 TYPE abap_bool.
            DATA(t254) = t183.
            t253 = xsdbool( t254 IS BOUND ).
            IF t253 = abap_true.
              DATA t255 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t255.
              DATA(t256) = abap_true.
              IF t256 = abap_true.
                DATA t257 TYPE REF TO zif_lnt_interface_definition.
                DATA(t258) = t183.
                t257 = t258.
                t255 = t257.
              ELSE.
                DATA t259 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t259.
                t255 = t259.
              ENDIF.
              t252 = t255.
            ELSE.
              DATA t260 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t260.
              t252 = t260.
            ENDIF.
            t182 = t252.
            t176 = t182.
          ENDIF.
          t109 = t176.
          t100 = t109.
        ENDIF.
        t85 = t100.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t261.
        DATA t262 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t263) = t77.
        DATA(t264) = |~|.
        DATA(t265) = strlen( t263 ).
        DATA t266 TYPE i.
        DATA(t267) = VALUE i( ).
        DATA(t268) = VALUE i( ).
        DATA t269 TYPE i.
        DATA(t270) = VALUE string( ).
        CREATE OBJECT t262.
        t269 = strlen( t264 ).
        t266 = 0.
        IF t269 = 0.
          WHILE t266 < t265.
            t270 = t263+t266(1).
            APPEND t270 TO t262->items.
            t266 = t266 + 1.
          ENDWHILE.
        ELSE.
          WHILE t266 <= t265.
            FIND FIRST OCCURRENCE OF t264 IN SECTION OFFSET t266 OF t263 MATCH OFFSET t267.
            IF sy-subrc = 0.
              t268 = t267 - t266.
            ELSE.
              t267 = -1.
              t268 = t265 - t266.
            ENDIF.
            CLEAR t270.
            IF t268 > 0.
              t270 = t263+t266(t268).
            ENDIF.
            APPEND t270 TO t262->items.
            IF t267 < 0.
              EXIT.
            ENDIF.
            t266 = t267 + t269.
          ENDWHILE.
        ENDIF.
        DATA(t271) = 1.
        t261 = t262->get( p0 = t271 ).
        t84 = me->search_type_name( i_def = t85 i_name = t261 ).
        t83 = t84.
        DATA t272 TYPE abap_bool.
        DATA(t273) = t83.
        t272 = xsdbool( t273 IS BOUND ).
        IF t272 = abap_true.
          DATA t274 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t274.
          DATA(t275) = abap_true.
          IF t275 = abap_true.
            DATA t276 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t277) = t83.
            t276 = t277.
            t274 = t276.
          ELSE.
            DATA t278 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t278.
            t274 = t278.
          ENDIF.
          result = t274.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t279) = VALUE abap_bool( ).
    DATA(t280) = VALUE i( ).
    DATA t281 TYPE string.
    DATA(t282) = t2.
    t281 = t282->value.
    DATA(t283) = |~|.
    DATA(t284) = strlen( t281 ).
    IF t283 IS INITIAL.
      t280 = 0.
    ELSE.
      FIND t283 IN t281 MATCH OFFSET t280.
      IF sy-subrc <> 0.
        t280 = -1.
      ENDIF.
    ENDIF.
    DATA(t285) = 0.
    t279 = xsdbool( t280 >= t285 ).
    IF t279 = abap_true.
      DATA(t286) = VALUE string( ).
      DATA(t287) = VALUE string( ).
      DATA t288 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t289 TYPE string.
      DATA(t290) = t2.
      t289 = t290->value.
      DATA(t291) = |~|.
      DATA(t292) = strlen( t289 ).
      DATA t293 TYPE i.
      DATA(t294) = VALUE i( ).
      DATA(t295) = VALUE i( ).
      DATA t296 TYPE i.
      DATA(t297) = VALUE string( ).
      CREATE OBJECT t288.
      t296 = strlen( t291 ).
      t293 = 0.
      IF t296 = 0.
        WHILE t293 < t292.
          t297 = t289+t293(1).
          APPEND t297 TO t288->items.
          t293 = t293 + 1.
        ENDWHILE.
      ELSE.
        WHILE t293 <= t292.
          FIND FIRST OCCURRENCE OF t291 IN SECTION OFFSET t293 OF t289 MATCH OFFSET t294.
          IF sy-subrc = 0.
            t295 = t294 - t293.
          ELSE.
            t294 = -1.
            t295 = t292 - t293.
          ENDIF.
          CLEAR t297.
          IF t295 > 0.
            t297 = t289+t293(t295).
          ENDIF.
          APPEND t297 TO t288->items.
          IF t294 < 0.
            EXIT.
          ENDIF.
          t293 = t294 + t296.
        ENDWHILE.
      ENDIF.
      IF t288->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t288->load( ).
      CLEAR t287.
      READ TABLE t288->items INDEX 1 INTO t287.
      t286 = t287.
      DATA(t298) = VALUE abap_bool( ).
      DATA t299 TYPE abap_bool.
      DATA(t300) = abap_false.
      t299 = t300.
      DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t302 TYPE REF TO zif_lnt_interface_definition.
      DATA(t303) = t1.
      t302 = t303.
      t301 = t302->get_implementing( ).
      DATA t304 TYPE REF TO zcl_lnt_iimplementing.
      CLEAR t304.
      DATA t305 TYPE REF TO object.
      CLEAR t305.
      DATA(t306) = VALUE i( ).
      DO.
        t301->load( ).
        IF t306 >= lines( t301->items ).
          EXIT.
        ENDIF.
        CLEAR t305.
        READ TABLE t301->items INDEX t306 + 1 INTO t305.
        t306 = t306 + 1.
        DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t307.
        CLEAR t304.
        IF t305 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t307 ?= t305.
          DATA t308 TYPE REF TO object.
          t308 = t307->as_ref( ).
          t304 ?= t308.
        ELSE.
          t304 ?= t305.
        ENDIF.
        DATA(t309) = VALUE abap_bool( ).
        DATA t310 TYPE string.
        DATA t311 TYPE string.
        DATA(t312) = t304.
        t311 = t312->name.
        DATA(t313) = strlen( t311 ).
        t310 = t311.
        IF t310 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t310 TO UPPER CASE.
        ELSE.
          t310 = zlnt_runtime_uppe_91169605024d=>full( t310 ).
        ENDIF.
        DATA t314 TYPE string.
        DATA(t315) = t286.
        DATA(t316) = strlen( t315 ).
        t314 = t315.
        IF t314 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t314 TO UPPER CASE.
        ELSE.
          t314 = zlnt_runtime_uppe_91169605024d=>full( t314 ).
        ENDIF.
        t309 = xsdbool( t310 = t314 ).
        IF t309 = abap_true.
          DATA(t317) = abap_true.
          t299 = t317.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t318) = t299.
      t298 = t318.
      IF t298 = abap_true.
        DATA t319 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t319.
        DATA t320 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t320.
        DATA t321 TYPE REF TO zcl_lnt_current_scope.
        DATA(t322) = me->scope.
        t321 = t322.
        DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t323.
        DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t324.
        DATA(t325) = abap_true.
        IF t325 = abap_true.
          DATA(t326) = t286.
          DATA(t327) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t327->has = abap_true.
          t327->value = t326.
          t324 = t327.
        ELSE.
          DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t328.
          t324 = t328.
        ENDIF.
        t323 = t324.
        DATA t329 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t329.
        DATA(t330) = VALUE abap_bool( ).
        DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t332) = t323.
        t331 = t332.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t334.
        t333 = t334.
        DATA(t335) = VALUE abap_bool( ).
        DATA(t336) = t331.
        IF t336 IS INITIAL.
          t335 = abap_true.
        ELSEIF t336->has = abap_false.
          t335 = abap_true.
        ENDIF.
        t330 = t335.
        IF t330 = abap_true.
          DATA t337 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t337.
          t329 = t337.
        ELSE.
          DATA t338 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t338.
          DATA t339 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t339.
          DATA t340 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t340.
          DATA t341 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t342 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t343) = t321.
          t342 = t343->current.
          t341 = t342.
          DATA t344 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t344.
          DATA(t345) = VALUE abap_bool( ).
          DATA(t346) = t341.
          IF t346 IS INITIAL.
            t345 = abap_true.
          ENDIF.
          IF t345 = abap_true.
            DATA t347 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t347.
            t344 = t347.
          ELSE.
            DATA t348 TYPE REF TO zif_lnt_interface_definition.
            DATA t349 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t350) = t341.
            t349 = t350.
            DATA t351 TYPE string.
            DATA(t352) = t323.
            t351 = t352->value.
            t348 = t349->find_interface_definition( i_name = t351 ).
            t344 = t348.
          ENDIF.
          t340 = t344.
          t339 = t340.
          DATA t353 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t353.
          DATA t354 TYPE abap_bool.
          DATA(t355) = t339.
          t354 = xsdbool( t355 IS BOUND ).
          IF t354 = abap_true.
            DATA t356 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t356.
            DATA(t357) = abap_true.
            IF t357 = abap_true.
              DATA t358 TYPE REF TO zif_lnt_interface_definition.
              DATA(t359) = t339.
              t358 = t359.
              t356 = t358.
            ELSE.
              DATA t360 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t360.
              t356 = t360.
            ENDIF.
            t353 = t356.
          ELSE.
            DATA t361 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t361.
            DATA t362 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t362.
            DATA t363 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t363.
            DATA t364 TYPE REF TO zif_lnt_object.
            CLEAR t364.
            DATA t365 TYPE REF TO zif_lnt_registry.
            DATA(t366) = t321.
            t365 = t366->reg.
            DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t367.
            DATA(t368) = abap_true.
            IF t368 = abap_true.
              DATA(t369) = |INTF|.
              DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t370->has = abap_true.
              t370->value = t369.
              t367 = t370.
            ELSE.
              DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t371.
              t367 = t371.
            ENDIF.
            DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t372.
            DATA(t373) = abap_true.
            IF t373 = abap_true.
              DATA t374 TYPE string.
              DATA(t375) = t323.
              t374 = t375->value.
              DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t376->has = abap_true.
              t376->value = t374.
              t372 = t376.
            ELSE.
              DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t377.
              t372 = t377.
            ENDIF.
            t364 = t365->get_object( i_type_9913 = t367 i_name = t372 ).
            DATA t378 TYPE REF TO object.
            t378 = t364.
            t363 ?= t378.
            t362 = t363.
            DATA t379 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t379.
            DATA t380 TYPE abap_bool.
            DATA(t381) = t362.
            t380 = xsdbool( t381 IS BOUND ).
            IF t380 = abap_true.
              DATA t382 TYPE REF TO zif_lnt_interface_definition.
              DATA t383 TYPE REF TO zcl_lnt_ob_interface.
              DATA t384 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t385) = t362.
              t384 = t385.
              t383 = t384.
              DATA t386 TYPE REF TO zif_lnt_interface_definition.
              DATA(t387) = t383.
              t386 = t387->def.
              t382 = t386.
              t379 = t382.
            ELSE.
              DATA t388 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t388.
              t379 = t388.
            ENDIF.
            t361 = t379.
            t353 = t361.
          ENDIF.
          t338 = t353.
          t329 = t338.
        ENDIF.
        t320 = t329.
        DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t389.
        DATA t390 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t391 TYPE string.
        DATA(t392) = t2.
        t391 = t392->value.
        DATA(t393) = |~|.
        DATA(t394) = strlen( t391 ).
        DATA t395 TYPE i.
        DATA(t396) = VALUE i( ).
        DATA(t397) = VALUE i( ).
        DATA t398 TYPE i.
        DATA(t399) = VALUE string( ).
        CREATE OBJECT t390.
        t398 = strlen( t393 ).
        t395 = 0.
        IF t398 = 0.
          WHILE t395 < t394.
            t399 = t391+t395(1).
            APPEND t399 TO t390->items.
            t395 = t395 + 1.
          ENDWHILE.
        ELSE.
          WHILE t395 <= t394.
            FIND FIRST OCCURRENCE OF t393 IN SECTION OFFSET t395 OF t391 MATCH OFFSET t396.
            IF sy-subrc = 0.
              t397 = t396 - t395.
            ELSE.
              t396 = -1.
              t397 = t394 - t395.
            ENDIF.
            CLEAR t399.
            IF t397 > 0.
              t399 = t391+t395(t397).
            ENDIF.
            APPEND t399 TO t390->items.
            IF t396 < 0.
              EXIT.
            ENDIF.
            t395 = t396 + t398.
          ENDWHILE.
        ENDIF.
        DATA(t400) = 1.
        t389 = t390->get( p0 = t400 ).
        t319 = me->search_type_name( i_def = t320 i_name = t389 ).
        result = t319.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t403 TYPE REF TO zif_lnt_interface_definition.
    DATA(t404) = t1.
    t403 = t404.
    t402 = t403->get_super_class( ).
    t401 = t402.
    DATA(t405) = VALUE abap_bool( ).
    DATA(t406) = t401.
    IF t406 IS BOUND.
      IF t406->has = abap_true.
        t405 = xsdbool( strlen( t406->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t405 = abap_true.
      DATA t407 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t407.
      DATA t408 TYPE REF TO zif_lnt_interface_definition.
      DATA t409 TYPE REF TO zif_lnt_class_definition.
      DATA t410 TYPE string.
      DATA(t411) = t401.
      t410 = t411->value.
      t409 = me->find_super_definition( i_name = t410 ).
      t408 ?= t409.
      DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t412.
      DATA(t413) = abap_true.
      IF t413 = abap_true.
        DATA t414 TYPE string.
        DATA(t415) = t2.
        t414 = t415->value.
        DATA(t416) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t416->has = abap_true.
        t416->value = t414.
        t412 = t416.
      ELSE.
        DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t417.
        t412 = t417.
      ENDIF.
      t407 = me->search_type_name( i_def = t408 i_name = t412 ).
      result = t407.
      RETURN.
    ENDIF.
    DATA t418 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t418.
    result = t418.

  ENDMETHOD.

  METHOD search_constant_name.
    DATA(t1) = i_def.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_interface_definition.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ELSEIF t17->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_class_constant.
      CLEAR t18.
      result = t18.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE string.
    DATA t21 TYPE string.
    DATA(t22) = t2.
    t21 = t22->value.
    DATA(t23) = strlen( t21 ).
    t20 = t21.
    IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t20 TO UPPER CASE.
    ELSE.
      t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
    ENDIF.
    t19 = t20.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zif_lnt_attributes.
    DATA t26 TYPE REF TO zif_lnt_interface_definition.
    DATA(t27) = t1.
    t26 = t27.
    t25 = t26->get_attributes( ).
    t24 = t25->get_constants( ).
    DATA t28 TYPE REF TO zcl_lnt_class_constant.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    DATA(t30) = VALUE i( ).
    DO.
      t24->load( ).
      IF t30 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t24->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE string( ).
      DATA(t35) = VALUE string( ).
      DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t37) = t28.
      t36 = t37.
      DATA(t38) = VALUE string( ).
      DATA t39 TYPE string.
      DATA t40 TYPE string.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t43) = t36.
      t42 = t43->token.
      t41 = t42.
      DATA t44 TYPE string.
      DATA(t45) = t41.
      t44 = t45->str.
      t40 = t44.
      t39 = t40.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = VALUE string( ).
      DATA(t48) = t39.
      DATA(t49) = 0.
      DATA(t50) = 1.
      DATA(t51) = strlen( t48 ).
      IF t49 < 0.
        t49 = t49 + t51.
        IF t49 < 0.
          t49 = 0.
        ENDIF.
      ENDIF.
      IF t49 > t51 OR t50 <= 0.
        CLEAR t47.
      ELSE.
        IF t50 > t51 - t49.
          t50 = t51 - t49.
        ENDIF.
        t47 = t48+t49(t50).
      ENDIF.
      DATA(t52) = |!|.
      t46 = xsdbool( t47 = t52 ).
      IF t46 = abap_true.
        DATA(t53) = VALUE string( ).
        DATA t54 TYPE string.
        DATA(t55) = t39.
        t54 = t55.
        DATA(t56) = VALUE string( ).
        DATA(t57) = t54.
        DATA(t58) = 1.
        DATA t59 TYPE i.
        DATA(t60) = t54.
        DATA(t61) = strlen( t60 ).
        t59 = t61.
        DATA(t62) = strlen( t57 ).
        IF t58 < 0.
          t58 = t58 + t62.
          IF t58 < 0.
            t58 = 0.
          ENDIF.
        ENDIF.
        IF t58 > t62 OR t59 <= 0.
          CLEAR t56.
        ELSE.
          IF t59 > t62 - t58.
            t59 = t62 - t58.
          ENDIF.
          t56 = t57+t58(t59).
        ENDIF.
        t53 = t56.
        t39 = t53.
      ENDIF.
      DATA(t63) = t39.
      t38 = t63.
      t35 = t38.
      DATA(t64) = strlen( t35 ).
      t34 = t35.
      IF t34 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t34 TO UPPER CASE.
      ELSE.
        t34 = zlnt_runtime_uppe_91169605024d=>full( t34 ).
      ENDIF.
      DATA(t65) = t19.
      t33 = xsdbool( t34 = t65 ).
      IF t33 = abap_true.
        DATA t66 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t66.
        DATA(t67) = abap_true.
        IF t67 = abap_true.
          DATA(t68) = t28.
          t66 = t68.
        ELSE.
          DATA t69 TYPE REF TO zcl_lnt_class_constant.
          CLEAR t69.
          t66 = t69.
        ENDIF.
        result = t66.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t71 TYPE REF TO zif_lnt_interface_definition.
    DATA(t72) = t1.
    t71 = t72.
    t70 = t71->get_aliases( ).
    DATA t73 TYPE REF TO zcl_lnt_alias.
    CLEAR t73.
    DATA t74 TYPE REF TO object.
    CLEAR t74.
    DATA(t75) = VALUE i( ).
    DO.
      t70->load( ).
      IF t75 >= lines( t70->items ).
        EXIT.
      ENDIF.
      CLEAR t74.
      READ TABLE t70->items INDEX t75 + 1 INTO t74.
      t75 = t75 + 1.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      CLEAR t73.
      IF t74 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t76 ?= t74.
        DATA t77 TYPE REF TO object.
        t77 = t76->as_ref( ).
        t73 ?= t77.
      ELSE.
        t73 ?= t74.
      ENDIF.
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = VALUE string( ).
      DATA(t80) = VALUE string( ).
      DATA t81 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t82) = t73.
      t81 = t82.
      DATA(t83) = VALUE string( ).
      DATA t84 TYPE string.
      DATA t85 TYPE string.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA t87 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t88) = t81.
      t87 = t88->token.
      t86 = t87.
      DATA t89 TYPE string.
      DATA(t90) = t86.
      t89 = t90->str.
      t85 = t89.
      t84 = t85.
      DATA(t91) = VALUE abap_bool( ).
      DATA(t92) = VALUE string( ).
      DATA(t93) = t84.
      DATA(t94) = 0.
      DATA(t95) = 1.
      DATA(t96) = strlen( t93 ).
      IF t94 < 0.
        t94 = t94 + t96.
        IF t94 < 0.
          t94 = 0.
        ENDIF.
      ENDIF.
      IF t94 > t96 OR t95 <= 0.
        CLEAR t92.
      ELSE.
        IF t95 > t96 - t94.
          t95 = t96 - t94.
        ENDIF.
        t92 = t93+t94(t95).
      ENDIF.
      DATA(t97) = |!|.
      t91 = xsdbool( t92 = t97 ).
      IF t91 = abap_true.
        DATA(t98) = VALUE string( ).
        DATA t99 TYPE string.
        DATA(t100) = t84.
        t99 = t100.
        DATA(t101) = VALUE string( ).
        DATA(t102) = t99.
        DATA(t103) = 1.
        DATA t104 TYPE i.
        DATA(t105) = t99.
        DATA(t106) = strlen( t105 ).
        t104 = t106.
        DATA(t107) = strlen( t102 ).
        IF t103 < 0.
          t103 = t103 + t107.
          IF t103 < 0.
            t103 = 0.
          ENDIF.
        ENDIF.
        IF t103 > t107 OR t104 <= 0.
          CLEAR t101.
        ELSE.
          IF t104 > t107 - t103.
            t104 = t107 - t103.
          ENDIF.
          t101 = t102+t103(t104).
        ENDIF.
        t98 = t101.
        t84 = t98.
      ENDIF.
      DATA(t108) = t84.
      t83 = t108.
      t80 = t83.
      DATA(t109) = strlen( t80 ).
      t79 = t80.
      IF t79 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t79 TO UPPER CASE.
      ELSE.
        t79 = zlnt_runtime_uppe_91169605024d=>full( t79 ).
      ENDIF.
      DATA(t110) = t19.
      t78 = xsdbool( t79 = t110 ).
      IF t78 = abap_true.
        DATA t111 TYPE string.
        DATA t112 TYPE string.
        DATA t113 TYPE REF TO zcl_lnt_alias.
        DATA(t114) = t73.
        t113 = t114.
        DATA t115 TYPE string.
        DATA(t116) = t113.
        t115 = t116->component.
        t112 = t115.
        t111 = t112.
        DATA t117 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t117.
        DATA t118 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t118.
        DATA t119 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_current_scope.
        DATA(t121) = me->scope.
        t120 = t121.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t125) = t111.
        DATA(t126) = |~|.
        DATA(t127) = strlen( t125 ).
        DATA t128 TYPE i.
        DATA(t129) = VALUE i( ).
        DATA(t130) = VALUE i( ).
        DATA t131 TYPE i.
        DATA(t132) = VALUE string( ).
        CREATE OBJECT t124.
        t131 = strlen( t126 ).
        t128 = 0.
        IF t131 = 0.
          WHILE t128 < t127.
            t132 = t125+t128(1).
            APPEND t132 TO t124->items.
            t128 = t128 + 1.
          ENDWHILE.
        ELSE.
          WHILE t128 <= t127.
            FIND FIRST OCCURRENCE OF t126 IN SECTION OFFSET t128 OF t125 MATCH OFFSET t129.
            IF sy-subrc = 0.
              t130 = t129 - t128.
            ELSE.
              t129 = -1.
              t130 = t127 - t128.
            ENDIF.
            CLEAR t132.
            IF t130 > 0.
              t132 = t125+t128(t130).
            ENDIF.
            APPEND t132 TO t124->items.
            IF t129 < 0.
              EXIT.
            ENDIF.
            t128 = t129 + t131.
          ENDWHILE.
        ENDIF.
        DATA(t133) = 0.
        t123 = t124->get( p0 = t133 ).
        t122 = t123.
        DATA t134 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t134.
        DATA(t135) = VALUE abap_bool( ).
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t137) = t122.
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        t138 = t139.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = t136.
        IF t141 IS INITIAL.
          t140 = abap_true.
        ELSEIF t141->has = abap_false.
          t140 = abap_true.
        ENDIF.
        t135 = t140.
        IF t135 = abap_true.
          DATA t142 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t142.
          t134 = t142.
        ELSE.
          DATA t143 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t143.
          DATA t144 TYPE REF TO zif_lnt_class_definition.
          CLEAR t144.
          DATA t145 TYPE REF TO zif_lnt_class_definition.
          CLEAR t145.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          DATA(t148) = abap_true.
          IF t148 = abap_true.
            DATA t149 TYPE string.
            DATA(t150) = t122.
            t149 = t150->value.
            DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t151->has = abap_true.
            t151->value = t149.
            t147 = t151.
          ELSE.
            DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t152.
            t147 = t152.
          ENDIF.
          t146 = t147.
          DATA t153 TYPE REF TO zif_lnt_class_definition.
          CLEAR t153.
          DATA(t154) = VALUE abap_bool( ).
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t156) = t146.
          t155 = t156.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          t157 = t158.
          DATA(t159) = VALUE abap_bool( ).
          DATA(t160) = t155.
          IF t160 IS INITIAL.
            t159 = abap_true.
          ELSEIF t160->has = abap_false.
            t159 = abap_true.
          ENDIF.
          t154 = t159.
          IF t154 = abap_true.
            DATA t161 TYPE REF TO zif_lnt_class_definition.
            CLEAR t161.
            t153 = t161.
          ELSE.
            DATA t162 TYPE REF TO zif_lnt_class_definition.
            CLEAR t162.
            DATA t163 TYPE REF TO zif_lnt_class_definition.
            CLEAR t163.
            DATA t164 TYPE REF TO zif_lnt_class_definition.
            CLEAR t164.
            DATA t165 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t166 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t167) = t120.
            t166 = t167->current.
            t165 = t166.
            DATA t168 TYPE REF TO zif_lnt_class_definition.
            CLEAR t168.
            DATA(t169) = VALUE abap_bool( ).
            DATA(t170) = t165.
            IF t170 IS INITIAL.
              t169 = abap_true.
            ENDIF.
            IF t169 = abap_true.
              DATA t171 TYPE REF TO zif_lnt_class_definition.
              CLEAR t171.
              t168 = t171.
            ELSE.
              DATA t172 TYPE REF TO zif_lnt_class_definition.
              DATA t173 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t174) = t165.
              t173 = t174.
              DATA t175 TYPE string.
              DATA(t176) = t146.
              t175 = t176->value.
              t172 = t173->find_class_definition( i_name = t175 ).
              t168 = t172.
            ENDIF.
            t164 = t168.
            t163 = t164.
            DATA t177 TYPE REF TO zif_lnt_class_definition.
            CLEAR t177.
            DATA t178 TYPE abap_bool.
            DATA(t179) = t163.
            t178 = xsdbool( t179 IS BOUND ).
            IF t178 = abap_true.
              DATA t180 TYPE REF TO zif_lnt_class_definition.
              CLEAR t180.
              DATA(t181) = abap_true.
              IF t181 = abap_true.
                DATA t182 TYPE REF TO zif_lnt_class_definition.
                DATA(t183) = t163.
                t182 = t183.
                t180 = t182.
              ELSE.
                DATA t184 TYPE REF TO zif_lnt_class_definition.
                CLEAR t184.
                t180 = t184.
              ENDIF.
              t177 = t180.
            ELSE.
              DATA t185 TYPE REF TO zif_lnt_class_definition.
              CLEAR t185.
              DATA t186 TYPE REF TO zcl_lnt_class.
              CLEAR t186.
              DATA t187 TYPE REF TO zcl_lnt_class.
              CLEAR t187.
              DATA t188 TYPE REF TO zif_lnt_object.
              CLEAR t188.
              DATA t189 TYPE REF TO zif_lnt_registry.
              DATA(t190) = t120.
              t189 = t190->reg.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              DATA(t192) = abap_true.
              IF t192 = abap_true.
                DATA(t193) = |CLAS|.
                DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t194->has = abap_true.
                t194->value = t193.
                t191 = t194.
              ELSE.
                DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t195.
                t191 = t195.
              ENDIF.
              DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t196.
              DATA(t197) = abap_true.
              IF t197 = abap_true.
                DATA t198 TYPE string.
                DATA(t199) = t146.
                t198 = t199->value.
                DATA(t200) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t200->has = abap_true.
                t200->value = t198.
                t196 = t200.
              ELSE.
                DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t201.
                t196 = t201.
              ENDIF.
              t188 = t189->get_object( i_type_9913 = t191 i_name = t196 ).
              DATA t202 TYPE REF TO object.
              t202 = t188.
              t187 ?= t202.
              t186 = t187.
              DATA t203 TYPE REF TO zif_lnt_class_definition.
              CLEAR t203.
              DATA t204 TYPE abap_bool.
              DATA(t205) = t186.
              t204 = xsdbool( t205 IS BOUND ).
              IF t204 = abap_true.
                DATA t206 TYPE REF TO zif_lnt_class_definition.
                DATA t207 TYPE REF TO zcl_lnt_class.
                DATA(t208) = t186.
                t207 = t208.
                t206 = t207->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t203 = t206.
              ELSE.
                DATA t209 TYPE REF TO zif_lnt_class_definition.
                CLEAR t209.
                t203 = t209.
              ENDIF.
              t185 = t203.
              t177 = t185.
            ENDIF.
            t162 = t177.
            t153 = t162.
          ENDIF.
          t145 = t153.
          t144 = t145.
          DATA t210 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t210.
          DATA t211 TYPE abap_bool.
          DATA(t212) = t144.
          t211 = xsdbool( t212 IS BOUND ).
          IF t211 = abap_true.
            DATA t213 TYPE REF TO zif_lnt_interface_definition.
            DATA t214 TYPE REF TO zif_lnt_class_definition.
            DATA(t215) = t144.
            t214 = t215.
            t213 ?= t214.
            t210 = t213.
          ELSE.
            DATA t216 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t216.
            DATA t217 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t217.
            DATA t218 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t218.
            DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t219.
            DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t220.
            DATA(t221) = abap_true.
            IF t221 = abap_true.
              DATA t222 TYPE string.
              DATA(t223) = t122.
              t222 = t223->value.
              DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t224->has = abap_true.
              t224->value = t222.
              t220 = t224.
            ELSE.
              DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t225.
              t220 = t225.
            ENDIF.
            t219 = t220.
            DATA t226 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t226.
            DATA(t227) = VALUE abap_bool( ).
            DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t229) = t219.
            t228 = t229.
            DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t231.
            t230 = t231.
            DATA(t232) = VALUE abap_bool( ).
            DATA(t233) = t228.
            IF t233 IS INITIAL.
              t232 = abap_true.
            ELSEIF t233->has = abap_false.
              t232 = abap_true.
            ENDIF.
            t227 = t232.
            IF t227 = abap_true.
              DATA t234 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t234.
              t226 = t234.
            ELSE.
              DATA t235 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t235.
              DATA t236 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t236.
              DATA t237 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t237.
              DATA t238 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t239 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t240) = t120.
              t239 = t240->current.
              t238 = t239.
              DATA t241 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t241.
              DATA(t242) = VALUE abap_bool( ).
              DATA(t243) = t238.
              IF t243 IS INITIAL.
                t242 = abap_true.
              ENDIF.
              IF t242 = abap_true.
                DATA t244 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t244.
                t241 = t244.
              ELSE.
                DATA t245 TYPE REF TO zif_lnt_interface_definition.
                DATA t246 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t247) = t238.
                t246 = t247.
                DATA t248 TYPE string.
                DATA(t249) = t219.
                t248 = t249->value.
                t245 = t246->find_interface_definition( i_name = t248 ).
                t241 = t245.
              ENDIF.
              t237 = t241.
              t236 = t237.
              DATA t250 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t250.
              DATA t251 TYPE abap_bool.
              DATA(t252) = t236.
              t251 = xsdbool( t252 IS BOUND ).
              IF t251 = abap_true.
                DATA t253 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t253.
                DATA(t254) = abap_true.
                IF t254 = abap_true.
                  DATA t255 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t256) = t236.
                  t255 = t256.
                  t253 = t255.
                ELSE.
                  DATA t257 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t257.
                  t253 = t257.
                ENDIF.
                t250 = t253.
              ELSE.
                DATA t258 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t258.
                DATA t259 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t259.
                DATA t260 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t260.
                DATA t261 TYPE REF TO zif_lnt_object.
                CLEAR t261.
                DATA t262 TYPE REF TO zif_lnt_registry.
                DATA(t263) = t120.
                t262 = t263->reg.
                DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t264.
                DATA(t265) = abap_true.
                IF t265 = abap_true.
                  DATA(t266) = |INTF|.
                  DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t267->has = abap_true.
                  t267->value = t266.
                  t264 = t267.
                ELSE.
                  DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t268.
                  t264 = t268.
                ENDIF.
                DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t269.
                DATA(t270) = abap_true.
                IF t270 = abap_true.
                  DATA t271 TYPE string.
                  DATA(t272) = t219.
                  t271 = t272->value.
                  DATA(t273) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t273->has = abap_true.
                  t273->value = t271.
                  t269 = t273.
                ELSE.
                  DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t274.
                  t269 = t274.
                ENDIF.
                t261 = t262->get_object( i_type_9913 = t264 i_name = t269 ).
                DATA t275 TYPE REF TO object.
                t275 = t261.
                t260 ?= t275.
                t259 = t260.
                DATA t276 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t276.
                DATA t277 TYPE abap_bool.
                DATA(t278) = t259.
                t277 = xsdbool( t278 IS BOUND ).
                IF t277 = abap_true.
                  DATA t279 TYPE REF TO zif_lnt_interface_definition.
                  DATA t280 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t281 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t282) = t259.
                  t281 = t282.
                  t280 = t281.
                  DATA t283 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t284) = t280.
                  t283 = t284->def.
                  t279 = t283.
                  t276 = t279.
                ELSE.
                  DATA t285 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t285.
                  t276 = t285.
                ENDIF.
                t258 = t276.
                t250 = t258.
              ENDIF.
              t235 = t250.
              t226 = t235.
            ENDIF.
            t218 = t226.
            t217 = t218.
            DATA t286 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t286.
            DATA t287 TYPE abap_bool.
            DATA(t288) = t217.
            t287 = xsdbool( t288 IS BOUND ).
            IF t287 = abap_true.
              DATA t289 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t289.
              DATA(t290) = abap_true.
              IF t290 = abap_true.
                DATA t291 TYPE REF TO zif_lnt_interface_definition.
                DATA(t292) = t217.
                t291 = t292.
                t289 = t291.
              ELSE.
                DATA t293 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t293.
                t289 = t293.
              ENDIF.
              t286 = t289.
            ELSE.
              DATA t294 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t294.
              t286 = t294.
            ENDIF.
            t216 = t286.
            t210 = t216.
          ENDIF.
          t143 = t210.
          t134 = t143.
        ENDIF.
        t119 = t134.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        DATA t296 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t297) = t111.
        DATA(t298) = |~|.
        DATA(t299) = strlen( t297 ).
        DATA t300 TYPE i.
        DATA(t301) = VALUE i( ).
        DATA(t302) = VALUE i( ).
        DATA t303 TYPE i.
        DATA(t304) = VALUE string( ).
        CREATE OBJECT t296.
        t303 = strlen( t298 ).
        t300 = 0.
        IF t303 = 0.
          WHILE t300 < t299.
            t304 = t297+t300(1).
            APPEND t304 TO t296->items.
            t300 = t300 + 1.
          ENDWHILE.
        ELSE.
          WHILE t300 <= t299.
            FIND FIRST OCCURRENCE OF t298 IN SECTION OFFSET t300 OF t297 MATCH OFFSET t301.
            IF sy-subrc = 0.
              t302 = t301 - t300.
            ELSE.
              t301 = -1.
              t302 = t299 - t300.
            ENDIF.
            CLEAR t304.
            IF t302 > 0.
              t304 = t297+t300(t302).
            ENDIF.
            APPEND t304 TO t296->items.
            IF t301 < 0.
              EXIT.
            ENDIF.
            t300 = t301 + t303.
          ENDWHILE.
        ENDIF.
        DATA(t305) = 1.
        t295 = t296->get( p0 = t305 ).
        t118 = me->search_constant_name( i_def = t119 i_name = t295 ).
        t117 = t118.
        DATA t306 TYPE abap_bool.
        DATA(t307) = t117.
        t306 = xsdbool( t307 IS BOUND ).
        IF t306 = abap_true.
          DATA t308 TYPE REF TO zcl_lnt_class_constant.
          CLEAR t308.
          DATA(t309) = abap_true.
          IF t309 = abap_true.
            DATA t310 TYPE REF TO zcl_lnt_class_constant.
            DATA(t311) = t117.
            t310 = t311.
            t308 = t310.
          ELSE.
            DATA t312 TYPE REF TO zcl_lnt_class_constant.
            CLEAR t312.
            t308 = t312.
          ENDIF.
          result = t308.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t313) = VALUE abap_bool( ).
    DATA(t314) = VALUE i( ).
    DATA t315 TYPE string.
    DATA(t316) = t2.
    t315 = t316->value.
    DATA(t317) = |~|.
    DATA(t318) = strlen( t315 ).
    IF t317 IS INITIAL.
      t314 = 0.
    ELSE.
      FIND t317 IN t315 MATCH OFFSET t314.
      IF sy-subrc <> 0.
        t314 = -1.
      ENDIF.
    ENDIF.
    DATA(t319) = 0.
    t313 = xsdbool( t314 >= t319 ).
    IF t313 = abap_true.
      DATA(t320) = VALUE string( ).
      DATA(t321) = VALUE string( ).
      DATA t322 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t323) = t19.
      DATA(t324) = |~|.
      DATA(t325) = strlen( t323 ).
      DATA t326 TYPE i.
      DATA(t327) = VALUE i( ).
      DATA(t328) = VALUE i( ).
      DATA t329 TYPE i.
      DATA(t330) = VALUE string( ).
      CREATE OBJECT t322.
      t329 = strlen( t324 ).
      t326 = 0.
      IF t329 = 0.
        WHILE t326 < t325.
          t330 = t323+t326(1).
          APPEND t330 TO t322->items.
          t326 = t326 + 1.
        ENDWHILE.
      ELSE.
        WHILE t326 <= t325.
          FIND FIRST OCCURRENCE OF t324 IN SECTION OFFSET t326 OF t323 MATCH OFFSET t327.
          IF sy-subrc = 0.
            t328 = t327 - t326.
          ELSE.
            t327 = -1.
            t328 = t325 - t326.
          ENDIF.
          CLEAR t330.
          IF t328 > 0.
            t330 = t323+t326(t328).
          ENDIF.
          APPEND t330 TO t322->items.
          IF t327 < 0.
            EXIT.
          ENDIF.
          t326 = t327 + t329.
        ENDWHILE.
      ENDIF.
      IF t322->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t322->load( ).
      CLEAR t321.
      READ TABLE t322->items INDEX 1 INTO t321.
      t320 = t321.
      DATA(t331) = VALUE abap_bool( ).
      DATA t332 TYPE abap_bool.
      DATA(t333) = abap_false.
      t332 = t333.
      DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t335 TYPE REF TO zif_lnt_interface_definition.
      DATA(t336) = t1.
      t335 = t336.
      t334 = t335->get_implementing( ).
      DATA t337 TYPE REF TO zcl_lnt_iimplementing.
      CLEAR t337.
      DATA t338 TYPE REF TO object.
      CLEAR t338.
      DATA(t339) = VALUE i( ).
      DO.
        t334->load( ).
        IF t339 >= lines( t334->items ).
          EXIT.
        ENDIF.
        CLEAR t338.
        READ TABLE t334->items INDEX t339 + 1 INTO t338.
        t339 = t339 + 1.
        DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t340.
        CLEAR t337.
        IF t338 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t340 ?= t338.
          DATA t341 TYPE REF TO object.
          t341 = t340->as_ref( ).
          t337 ?= t341.
        ELSE.
          t337 ?= t338.
        ENDIF.
        DATA(t342) = VALUE abap_bool( ).
        DATA t343 TYPE string.
        DATA t344 TYPE string.
        DATA(t345) = t337.
        t344 = t345->name.
        DATA(t346) = strlen( t344 ).
        t343 = t344.
        IF t343 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t343 TO UPPER CASE.
        ELSE.
          t343 = zlnt_runtime_uppe_91169605024d=>full( t343 ).
        ENDIF.
        DATA(t347) = t320.
        t342 = xsdbool( t343 = t347 ).
        IF t342 = abap_true.
          DATA(t348) = abap_true.
          t332 = t348.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t349) = t332.
      t331 = t349.
      IF t331 = abap_true.
        DATA t350 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t350.
        DATA t351 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t351.
        DATA t352 TYPE REF TO zcl_lnt_current_scope.
        DATA(t353) = me->scope.
        t352 = t353.
        DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t354.
        DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t355.
        DATA(t356) = abap_true.
        IF t356 = abap_true.
          DATA(t357) = t320.
          DATA(t358) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t358->has = abap_true.
          t358->value = t357.
          t355 = t358.
        ELSE.
          DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t359.
          t355 = t359.
        ENDIF.
        t354 = t355.
        DATA t360 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t360.
        DATA(t361) = VALUE abap_bool( ).
        DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t363) = t354.
        t362 = t363.
        DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t365.
        t364 = t365.
        DATA(t366) = VALUE abap_bool( ).
        DATA(t367) = t362.
        IF t367 IS INITIAL.
          t366 = abap_true.
        ELSEIF t367->has = abap_false.
          t366 = abap_true.
        ENDIF.
        t361 = t366.
        IF t361 = abap_true.
          DATA t368 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t368.
          t360 = t368.
        ELSE.
          DATA t369 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t369.
          DATA t370 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t370.
          DATA t371 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t371.
          DATA t372 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t373 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t374) = t352.
          t373 = t374->current.
          t372 = t373.
          DATA t375 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t375.
          DATA(t376) = VALUE abap_bool( ).
          DATA(t377) = t372.
          IF t377 IS INITIAL.
            t376 = abap_true.
          ENDIF.
          IF t376 = abap_true.
            DATA t378 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t378.
            t375 = t378.
          ELSE.
            DATA t379 TYPE REF TO zif_lnt_interface_definition.
            DATA t380 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t381) = t372.
            t380 = t381.
            DATA t382 TYPE string.
            DATA(t383) = t354.
            t382 = t383->value.
            t379 = t380->find_interface_definition( i_name = t382 ).
            t375 = t379.
          ENDIF.
          t371 = t375.
          t370 = t371.
          DATA t384 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t384.
          DATA t385 TYPE abap_bool.
          DATA(t386) = t370.
          t385 = xsdbool( t386 IS BOUND ).
          IF t385 = abap_true.
            DATA t387 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t387.
            DATA(t388) = abap_true.
            IF t388 = abap_true.
              DATA t389 TYPE REF TO zif_lnt_interface_definition.
              DATA(t390) = t370.
              t389 = t390.
              t387 = t389.
            ELSE.
              DATA t391 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t391.
              t387 = t391.
            ENDIF.
            t384 = t387.
          ELSE.
            DATA t392 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t392.
            DATA t393 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t393.
            DATA t394 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t394.
            DATA t395 TYPE REF TO zif_lnt_object.
            CLEAR t395.
            DATA t396 TYPE REF TO zif_lnt_registry.
            DATA(t397) = t352.
            t396 = t397->reg.
            DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t398.
            DATA(t399) = abap_true.
            IF t399 = abap_true.
              DATA(t400) = |INTF|.
              DATA(t401) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t401->has = abap_true.
              t401->value = t400.
              t398 = t401.
            ELSE.
              DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t402.
              t398 = t402.
            ENDIF.
            DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t403.
            DATA(t404) = abap_true.
            IF t404 = abap_true.
              DATA t405 TYPE string.
              DATA(t406) = t354.
              t405 = t406->value.
              DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t407->has = abap_true.
              t407->value = t405.
              t403 = t407.
            ELSE.
              DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t408.
              t403 = t408.
            ENDIF.
            t395 = t396->get_object( i_type_9913 = t398 i_name = t403 ).
            DATA t409 TYPE REF TO object.
            t409 = t395.
            t394 ?= t409.
            t393 = t394.
            DATA t410 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t410.
            DATA t411 TYPE abap_bool.
            DATA(t412) = t393.
            t411 = xsdbool( t412 IS BOUND ).
            IF t411 = abap_true.
              DATA t413 TYPE REF TO zif_lnt_interface_definition.
              DATA t414 TYPE REF TO zcl_lnt_ob_interface.
              DATA t415 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t416) = t393.
              t415 = t416.
              t414 = t415.
              DATA t417 TYPE REF TO zif_lnt_interface_definition.
              DATA(t418) = t414.
              t417 = t418->def.
              t413 = t417.
              t410 = t413.
            ELSE.
              DATA t419 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t419.
              t410 = t419.
            ENDIF.
            t392 = t410.
            t384 = t392.
          ENDIF.
          t369 = t384.
          t360 = t369.
        ENDIF.
        t351 = t360.
        DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t420.
        DATA t421 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t422 TYPE string.
        DATA(t423) = t2.
        t422 = t423->value.
        DATA(t424) = |~|.
        DATA(t425) = strlen( t422 ).
        DATA t426 TYPE i.
        DATA(t427) = VALUE i( ).
        DATA(t428) = VALUE i( ).
        DATA t429 TYPE i.
        DATA(t430) = VALUE string( ).
        CREATE OBJECT t421.
        t429 = strlen( t424 ).
        t426 = 0.
        IF t429 = 0.
          WHILE t426 < t425.
            t430 = t422+t426(1).
            APPEND t430 TO t421->items.
            t426 = t426 + 1.
          ENDWHILE.
        ELSE.
          WHILE t426 <= t425.
            FIND FIRST OCCURRENCE OF t424 IN SECTION OFFSET t426 OF t422 MATCH OFFSET t427.
            IF sy-subrc = 0.
              t428 = t427 - t426.
            ELSE.
              t427 = -1.
              t428 = t425 - t426.
            ENDIF.
            CLEAR t430.
            IF t428 > 0.
              t430 = t422+t426(t428).
            ENDIF.
            APPEND t430 TO t421->items.
            IF t427 < 0.
              EXIT.
            ENDIF.
            t426 = t427 + t429.
          ENDWHILE.
        ENDIF.
        DATA(t431) = 1.
        t420 = t421->get( p0 = t431 ).
        t350 = me->search_constant_name( i_def = t351 i_name = t420 ).
        result = t350.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t434 TYPE REF TO zif_lnt_interface_definition.
    DATA(t435) = t1.
    t434 = t435.
    t433 = t434->get_super_class( ).
    t432 = t433.
    DATA(t436) = VALUE abap_bool( ).
    DATA(t437) = t432.
    IF t437 IS BOUND.
      IF t437->has = abap_true.
        t436 = xsdbool( strlen( t437->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t436 = abap_true.
      DATA t438 TYPE REF TO zcl_lnt_class_constant.
      CLEAR t438.
      DATA t439 TYPE REF TO zif_lnt_interface_definition.
      DATA t440 TYPE REF TO zif_lnt_class_definition.
      DATA t441 TYPE string.
      DATA(t442) = t432.
      t441 = t442->value.
      t440 = me->find_super_definition( i_name = t441 ).
      t439 ?= t440.
      DATA t443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t443.
      DATA(t444) = abap_true.
      IF t444 = abap_true.
        DATA t445 TYPE string.
        DATA(t446) = t2.
        t445 = t446->value.
        DATA(t447) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t447->has = abap_true.
        t447->value = t445.
        t443 = t447.
      ELSE.
        DATA t448 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t448.
        t443 = t448.
      ENDIF.
      t438 = me->search_constant_name( i_def = t439 i_name = t443 ).
      result = t438.
      RETURN.
    ENDIF.
    DATA t449 TYPE REF TO zcl_lnt_class_constant.
    CLEAR t449.
    result = t449.

  ENDMETHOD.

  METHOD search_method_name.
    DATA(t1) = i_def.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_interface_definition.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ELSEIF t17->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_shape_a38e878f.
      DATA t19 TYPE REF TO zif_lnt_method_definition.
      DATA t20 TYPE REF TO zif_lnt_method_definition.
      CLEAR t20.
      t19 = t20.
      DATA t21 TYPE REF TO zif_lnt_interface_definition.
      DATA t22 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t22.
      t21 = t22.
      t18 = NEW zcl_lnt_shape_a38e878f( i_method = t19 i_def = t21 ).
      CREATE OBJECT t18->zlnt_view_ownkeys_b0e8086400eb.
      t18->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      IF t18->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t18->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t23 ).
      ENDIF.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      IF t18->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t18->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t24 ).
      ENDIF.
      CREATE OBJECT t18->zlnt_json_ownkeys_70e5fd461788.
      t18->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t25) = |method|.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      IF t18->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = t25 p1 = t26 ).
      ENDIF.
      DATA(t27) = |def|.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      IF t18->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
      ENDIF.
      result = t18.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zif_lnt_method_definition.
    DATA t30 TYPE REF TO zif_lnt_method_definition.
    DATA t31 TYPE REF TO zif_lnt_interface_definition.
    DATA(t32) = t1.
    t31 = t32.
    DATA t33 TYPE string.
    DATA(t34) = t2.
    t33 = t34->value.
    t30 = me->find_method( i_def = t31 i_method_name = t33 ).
    t29 = t30.
    DATA t35 TYPE abap_bool.
    DATA(t36) = t29.
    t35 = xsdbool( t36 IS BOUND ).
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_method_definition.
      CLEAR t38.
      DATA t39 TYPE REF TO zif_lnt_method_definition.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA t41 TYPE REF TO zif_lnt_method_definition.
        DATA(t42) = t29.
        t41 = t42.
        t39 = t41.
      ELSE.
        DATA t43 TYPE REF TO zif_lnt_method_definition.
        CLEAR t43.
        t39 = t43.
      ENDIF.
      t38 = t39.
      DATA t44 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t44.
      DATA t45 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t45.
      DATA(t46) = abap_true.
      IF t46 = abap_true.
        DATA t47 TYPE REF TO zif_lnt_interface_definition.
        DATA(t48) = t1.
        t47 = t48.
        t45 = t47.
      ELSE.
        DATA t49 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t49.
        t45 = t49.
      ENDIF.
      t44 = t45.
      t37 = NEW zcl_lnt_shape_a38e878f( i_method = t38 i_def = t44 ).
      CREATE OBJECT t37->zlnt_view_ownkeys_b0e8086400eb.
      t37->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t50 ).
      ENDIF.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t51 ).
      ENDIF.
      CREATE OBJECT t37->zlnt_json_ownkeys_70e5fd461788.
      t37->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t52) = |method|.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
      ENDIF.
      DATA(t54) = |def|.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
      ENDIF.
      result = t37.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t57.
    t56 = t57.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = VALUE i( ).
    DATA t60 TYPE string.
    DATA(t61) = t2.
    t60 = t61->value.
    DATA(t62) = |~|.
    DATA(t63) = strlen( t60 ).
    IF t62 IS INITIAL.
      t59 = 0.
    ELSE.
      FIND t62 IN t60 MATCH OFFSET t59.
      IF sy-subrc <> 0.
        t59 = -1.
      ENDIF.
    ENDIF.
    DATA(t64) = 0.
    t58 = xsdbool( t59 >= t64 ).
    IF t58 = abap_true.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      DATA(t66) = abap_true.
      IF t66 = abap_true.
        DATA(t67) = VALUE string( ).
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t69 TYPE string.
        DATA(t70) = t2.
        t69 = t70->value.
        DATA(t71) = |~|.
        DATA(t72) = strlen( t69 ).
        DATA t73 TYPE i.
        DATA(t74) = VALUE i( ).
        DATA(t75) = VALUE i( ).
        DATA t76 TYPE i.
        DATA(t77) = VALUE string( ).
        CREATE OBJECT t68.
        t76 = strlen( t71 ).
        t73 = 0.
        IF t76 = 0.
          WHILE t73 < t72.
            t77 = t69+t73(1).
            APPEND t77 TO t68->items.
            t73 = t73 + 1.
          ENDWHILE.
        ELSE.
          WHILE t73 <= t72.
            FIND FIRST OCCURRENCE OF t71 IN SECTION OFFSET t73 OF t69 MATCH OFFSET t74.
            IF sy-subrc = 0.
              t75 = t74 - t73.
            ELSE.
              t74 = -1.
              t75 = t72 - t73.
            ENDIF.
            CLEAR t77.
            IF t75 > 0.
              t77 = t69+t73(t75).
            ENDIF.
            APPEND t77 TO t68->items.
            IF t74 < 0.
              EXIT.
            ENDIF.
            t73 = t74 + t76.
          ENDWHILE.
        ENDIF.
        IF t68->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t68->load( ).
        CLEAR t67.
        READ TABLE t68->items INDEX 1 INTO t67.
        DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t78->has = abap_true.
        t78->value = t67.
        t65 = t78.
      ELSE.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        t65 = t79.
      ENDIF.
      t56 = t65.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t56.
      IF t82 IS BOUND.
        IF t82->has = abap_true.
          t81 = xsdbool( strlen( t82->value ) > 0 ).
        ENDIF.
      ENDIF.
      t80 = t81.
      IF t81 = abap_true.
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = VALUE abap_bool( ).
        DATA t85 TYPE abap_bool.
        DATA(t86) = abap_false.
        t85 = t86.
        DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t88 TYPE REF TO zif_lnt_interface_definition.
        DATA(t89) = t1.
        t88 = t89.
        t87 = me->find_interfaces( i_cd = t88 ).
        DATA t90 TYPE REF TO zcl_lnt_iimplementing.
        CLEAR t90.
        DATA t91 TYPE REF TO object.
        CLEAR t91.
        DATA(t92) = VALUE i( ).
        DO.
          t87->load( ).
          IF t92 >= lines( t87->items ).
            EXIT.
          ENDIF.
          CLEAR t91.
          READ TABLE t87->items INDEX t92 + 1 INTO t91.
          t92 = t92 + 1.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          CLEAR t90.
          IF t91 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t93 ?= t91.
            DATA t94 TYPE REF TO object.
            t94 = t93->as_ref( ).
            t90 ?= t94.
          ELSE.
            t90 ?= t91.
          ENDIF.
          DATA(t95) = VALUE abap_bool( ).
          DATA t96 TYPE string.
          DATA t97 TYPE string.
          DATA(t98) = t90.
          t97 = t98->name.
          DATA(t99) = strlen( t97 ).
          t96 = t97.
          IF t96 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t96 TO UPPER CASE.
          ELSE.
            t96 = zlnt_runtime_uppe_91169605024d=>full( t96 ).
          ENDIF.
          DATA t100 TYPE string.
          DATA t101 TYPE string.
          DATA(t102) = t56.
          t101 = t102->value.
          DATA(t103) = strlen( t101 ).
          t100 = t101.
          IF t100 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t100 TO UPPER CASE.
          ELSE.
            t100 = zlnt_runtime_uppe_91169605024d=>full( t100 ).
          ENDIF.
          t95 = xsdbool( t96 = t100 ).
          IF t95 = abap_true.
            DATA(t104) = abap_true.
            t85 = t104.
            EXIT.
          ENDIF.
        ENDDO.
        DATA(t105) = t85.
        t84 = t105.
        DATA(t106) = abap_false.
        t83 = xsdbool( t84 = t106 ).
        t80 = t83.
      ENDIF.
      IF t80 = abap_true.
        DATA t107 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t108 TYPE REF TO zif_lnt_method_definition.
        DATA t109 TYPE REF TO zif_lnt_method_definition.
        CLEAR t109.
        t108 = t109.
        DATA t110 TYPE REF TO zif_lnt_interface_definition.
        DATA t111 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t111.
        t110 = t111.
        t107 = NEW zcl_lnt_shape_a38e878f( i_method = t108 i_def = t110 ).
        CREATE OBJECT t107->zlnt_view_ownkeys_b0e8086400eb.
        t107->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t112 ).
        ENDIF.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t113 ).
        ENDIF.
        CREATE OBJECT t107->zlnt_json_ownkeys_70e5fd461788.
        t107->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t114) = |method|.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
        ENDIF.
        DATA(t116) = |def|.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
        ENDIF.
        result = t107.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t118) = VALUE abap_bool( ).
    DATA(t119) = VALUE abap_bool( ).
    DATA t120 TYPE REF TO zif_lnt_method_definition.
    DATA(t121) = t29.
    t120 = t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    t122 = t123.
    DATA(t124) = VALUE abap_bool( ).
    DATA(t125) = t120.
    IF t125 IS INITIAL.
      t124 = abap_true.
    ENDIF.
    t119 = t124.
    t118 = t119.
    IF t119 = abap_true.
      DATA(t126) = VALUE abap_bool( ).
      DATA(t127) = t56.
      IF t127 IS BOUND.
        IF t127->has = abap_true.
          t126 = xsdbool( strlen( t127->value ) > 0 ).
        ENDIF.
      ENDIF.
      t118 = t126.
    ENDIF.
    IF t118 = abap_true.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      DATA(t129) = abap_true.
      IF t129 = abap_true.
        DATA(t130) = VALUE string( ).
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t132 TYPE string.
        DATA(t133) = t2.
        t132 = t133->value.
        DATA(t134) = |~|.
        DATA(t135) = strlen( t132 ).
        DATA t136 TYPE i.
        DATA(t137) = VALUE i( ).
        DATA(t138) = VALUE i( ).
        DATA t139 TYPE i.
        DATA(t140) = VALUE string( ).
        CREATE OBJECT t131.
        t139 = strlen( t134 ).
        t136 = 0.
        IF t139 = 0.
          WHILE t136 < t135.
            t140 = t132+t136(1).
            APPEND t140 TO t131->items.
            t136 = t136 + 1.
          ENDWHILE.
        ELSE.
          WHILE t136 <= t135.
            FIND FIRST OCCURRENCE OF t134 IN SECTION OFFSET t136 OF t132 MATCH OFFSET t137.
            IF sy-subrc = 0.
              t138 = t137 - t136.
            ELSE.
              t137 = -1.
              t138 = t135 - t136.
            ENDIF.
            CLEAR t140.
            IF t138 > 0.
              t140 = t132+t136(t138).
            ENDIF.
            APPEND t140 TO t131->items.
            IF t137 < 0.
              EXIT.
            ENDIF.
            t136 = t137 + t139.
          ENDWHILE.
        ENDIF.
        IF t131->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t131->load( ).
        CLEAR t130.
        READ TABLE t131->items INDEX 2 INTO t130.
        DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t141->has = abap_true.
        t141->value = t130.
        t128 = t141.
      ELSE.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        t128 = t142.
      ENDIF.
      t2 = t128.
      DATA t143 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t143.
      DATA t144 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t144.
      DATA t145 TYPE string.
      DATA t146 TYPE string.
      DATA(t147) = t56.
      t146 = t147->value.
      t145 = t146.
      DATA t148 TYPE string.
      DATA t149 TYPE string.
      DATA(t150) = t2.
      t149 = t150->value.
      t148 = t149.
      DATA t151 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t151.
      DATA t152 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t152.
      DATA t153 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t153.
      DATA t154 TYPE REF TO zcl_lnt_current_scope.
      DATA(t155) = me->scope.
      t154 = t155.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t156.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t157.
      DATA(t158) = abap_true.
      IF t158 = abap_true.
        DATA(t159) = t145.
        DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t160->has = abap_true.
        t160->value = t159.
        t157 = t160.
      ELSE.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t161.
        t157 = t161.
      ENDIF.
      t156 = t157.
      DATA t162 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t162.
      DATA(t163) = VALUE abap_bool( ).
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t165) = t156.
      t164 = t165.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      t166 = t167.
      DATA(t168) = VALUE abap_bool( ).
      DATA(t169) = t164.
      IF t169 IS INITIAL.
        t168 = abap_true.
      ELSEIF t169->has = abap_false.
        t168 = abap_true.
      ENDIF.
      t163 = t168.
      IF t163 = abap_true.
        DATA t170 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t170.
        t162 = t170.
      ELSE.
        DATA t171 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t171.
        DATA t172 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t172.
        DATA t173 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t173.
        DATA t174 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t175 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t176) = t154.
        t175 = t176->current.
        t174 = t175.
        DATA t177 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t177.
        DATA(t178) = VALUE abap_bool( ).
        DATA(t179) = t174.
        IF t179 IS INITIAL.
          t178 = abap_true.
        ENDIF.
        IF t178 = abap_true.
          DATA t180 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t180.
          t177 = t180.
        ELSE.
          DATA t181 TYPE REF TO zif_lnt_interface_definition.
          DATA t182 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t183) = t174.
          t182 = t183.
          DATA t184 TYPE string.
          DATA(t185) = t156.
          t184 = t185->value.
          t181 = t182->find_interface_definition( i_name = t184 ).
          t177 = t181.
        ENDIF.
        t173 = t177.
        t172 = t173.
        DATA t186 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t186.
        DATA t187 TYPE abap_bool.
        DATA(t188) = t172.
        t187 = xsdbool( t188 IS BOUND ).
        IF t187 = abap_true.
          DATA t189 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t189.
          DATA(t190) = abap_true.
          IF t190 = abap_true.
            DATA t191 TYPE REF TO zif_lnt_interface_definition.
            DATA(t192) = t172.
            t191 = t192.
            t189 = t191.
          ELSE.
            DATA t193 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t193.
            t189 = t193.
          ENDIF.
          t186 = t189.
        ELSE.
          DATA t194 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t194.
          DATA t195 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t195.
          DATA t196 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t196.
          DATA t197 TYPE REF TO zif_lnt_object.
          CLEAR t197.
          DATA t198 TYPE REF TO zif_lnt_registry.
          DATA(t199) = t154.
          t198 = t199->reg.
          DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t200.
          DATA(t201) = abap_true.
          IF t201 = abap_true.
            DATA(t202) = |INTF|.
            DATA(t203) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t203->has = abap_true.
            t203->value = t202.
            t200 = t203.
          ELSE.
            DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t204.
            t200 = t204.
          ENDIF.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t205.
          DATA(t206) = abap_true.
          IF t206 = abap_true.
            DATA t207 TYPE string.
            DATA(t208) = t156.
            t207 = t208->value.
            DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t209->has = abap_true.
            t209->value = t207.
            t205 = t209.
          ELSE.
            DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t210.
            t205 = t210.
          ENDIF.
          t197 = t198->get_object( i_type_9913 = t200 i_name = t205 ).
          DATA t211 TYPE REF TO object.
          t211 = t197.
          t196 ?= t211.
          t195 = t196.
          DATA t212 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t212.
          DATA t213 TYPE abap_bool.
          DATA(t214) = t195.
          t213 = xsdbool( t214 IS BOUND ).
          IF t213 = abap_true.
            DATA t215 TYPE REF TO zif_lnt_interface_definition.
            DATA t216 TYPE REF TO zcl_lnt_ob_interface.
            DATA t217 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t218) = t195.
            t217 = t218.
            t216 = t217.
            DATA t219 TYPE REF TO zif_lnt_interface_definition.
            DATA(t220) = t216.
            t219 = t220->def.
            t215 = t219.
            t212 = t215.
          ELSE.
            DATA t221 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t221.
            t212 = t221.
          ENDIF.
          t194 = t212.
          t186 = t194.
        ENDIF.
        t171 = t186.
        t162 = t171.
      ENDIF.
      t153 = t162.
      t152 = t153.
      DATA t222 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t222.
      DATA t223 TYPE abap_bool.
      DATA(t224) = t152.
      t223 = xsdbool( t224 IS BOUND ).
      IF t223 = abap_true.
        DATA t225 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t225.
        DATA t226 TYPE REF TO zif_lnt_method_definition.
        CLEAR t226.
        DATA t227 TYPE REF TO zif_lnt_method_definition.
        CLEAR t227.
        DATA t228 TYPE REF TO zif_lnt_method_definitions.
        DATA t229 TYPE REF TO zif_lnt_interface_definition.
        DATA(t230) = t152.
        t229 = t230.
        t228 = t229->get_method_definitions( ).
        DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t231.
        DATA(t232) = abap_true.
        IF t232 = abap_true.
          DATA(t233) = t148.
          DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t234->has = abap_true.
          t234->value = t233.
          t231 = t234.
        ELSE.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t235.
          t231 = t235.
        ENDIF.
        t227 = t228->get_by_name( i_name = t231 ).
        t226 = t227.
        DATA t236 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t236.
        DATA t237 TYPE abap_bool.
        DATA(t238) = t226.
        t237 = xsdbool( t238 IS BOUND ).
        IF t237 = abap_true.
          DATA t239 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t239.
          DATA(t240) = abap_true.
          IF t240 = abap_true.
            DATA t241 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t241.
            DATA t242 TYPE REF TO zif_lnt_method_definition.
            CLEAR t242.
            DATA t243 TYPE REF TO zif_lnt_method_definition.
            CLEAR t243.
            DATA(t244) = abap_true.
            IF t244 = abap_true.
              DATA t245 TYPE REF TO zif_lnt_method_definition.
              DATA(t246) = t226.
              t245 = t246.
              t243 = t245.
            ELSE.
              DATA t247 TYPE REF TO zif_lnt_method_definition.
              CLEAR t247.
              t243 = t247.
            ENDIF.
            t242 = t243.
            DATA t248 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t248.
            DATA t249 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t249.
            DATA(t250) = abap_true.
            IF t250 = abap_true.
              DATA t251 TYPE REF TO zif_lnt_interface_definition.
              DATA(t252) = t152.
              t251 = t252.
              t249 = t251.
            ELSE.
              DATA t253 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t253.
              t249 = t253.
            ENDIF.
            t248 = t249.
            t241 = NEW zcl_lnt_shape_a38e878f( i_method = t242 i_def = t248 ).
            CREATE OBJECT t241->zlnt_view_ownkeys_b0e8086400eb.
            t241->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t254.
            IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t254 ).
            ENDIF.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t255 ).
            ENDIF.
            CREATE OBJECT t241->zlnt_json_ownkeys_70e5fd461788.
            t241->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t256) = |method|.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
            ENDIF.
            DATA(t258) = |def|.
            DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t259.
            IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
            ENDIF.
            t239 = t241.
          ELSE.
            DATA t260 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t260.
            t239 = t260.
          ENDIF.
          t236 = t239.
        ELSE.
          DATA t261 TYPE REF TO zcl_lnt_shape_a38e878f.
          DATA(t262) = t148.
          DATA t263 TYPE REF TO zif_lnt_interface_definition.
          DATA(t264) = t152.
          t263 = t264.
          t261 = me->find_method_via_alias( i_method_name = t262 i_def = t263 ).
          t236 = t261.
        ENDIF.
        t225 = t236.
        t222 = t225.
      ELSE.
        DATA t265 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t265.
        t222 = t265.
      ENDIF.
      t151 = t222.
      t144 = t151.
      t143 = t144.
      DATA t266 TYPE abap_bool.
      DATA(t267) = t143.
      t266 = xsdbool( t267 IS BOUND ).
      IF t266 = abap_true.
        DATA t268 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA(t269) = t143.
        t268 = t269.
        result = t268.
        RETURN.
      ENDIF.
    ELSE.
      DATA(t270) = VALUE abap_bool( ).
      DATA t271 TYPE REF TO zif_lnt_method_definition.
      DATA(t272) = t29.
      t271 = t272.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t274.
      t273 = t274.
      DATA(t275) = VALUE abap_bool( ).
      DATA(t276) = t271.
      IF t276 IS INITIAL.
        t275 = abap_true.
      ENDIF.
      t270 = t275.
      IF t270 = abap_true.
        DATA t277 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t278 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t279 TYPE string.
        DATA(t280) = t2.
        t279 = t280->value.
        DATA t281 TYPE REF TO zif_lnt_interface_definition.
        DATA(t282) = t1.
        t281 = t282.
        t278 = me->find_method_via_alias( i_method_name = t279 i_def = t281 ).
        t277 = t278.
        DATA t283 TYPE abap_bool.
        DATA(t284) = t277.
        t283 = xsdbool( t284 IS BOUND ).
        IF t283 = abap_true.
          DATA t285 TYPE REF TO zcl_lnt_shape_a38e878f.
          DATA(t286) = t277.
          t285 = t286.
          result = t285.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t289 TYPE REF TO zif_lnt_interface_definition.
    DATA(t290) = t1.
    t289 = t290.
    t288 = t289->get_super_class( ).
    t287 = t288.
    DATA(t291) = VALUE abap_bool( ).
    DATA(t292) = VALUE abap_bool( ).
    DATA t293 TYPE REF TO zif_lnt_method_definition.
    DATA(t294) = t29.
    t293 = t294.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    t295 = t296.
    DATA(t297) = VALUE abap_bool( ).
    DATA(t298) = t293.
    IF t298 IS INITIAL.
      t297 = abap_true.
    ENDIF.
    t292 = t297.
    t291 = t292.
    IF t292 = abap_true.
      DATA(t299) = VALUE abap_bool( ).
      DATA(t300) = t287.
      IF t300 IS BOUND.
        IF t300->has = abap_true.
          t299 = xsdbool( strlen( t300->value ) > 0 ).
        ENDIF.
      ENDIF.
      t291 = t299.
    ENDIF.
    IF t291 = abap_true.
      DATA t301 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t301.
      DATA t302 TYPE REF TO zif_lnt_interface_definition.
      DATA t303 TYPE REF TO zif_lnt_class_definition.
      DATA t304 TYPE string.
      DATA(t305) = t287.
      t304 = t305->value.
      t303 = me->find_super_definition( i_name = t304 ).
      t302 ?= t303.
      DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t306.
      DATA(t307) = abap_true.
      IF t307 = abap_true.
        DATA t308 TYPE string.
        DATA(t309) = t2.
        t308 = t309->value.
        DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t310->has = abap_true.
        t310->value = t308.
        t306 = t310.
      ELSE.
        DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t311.
        t306 = t311.
      ENDIF.
      t301 = me->search_method_name( i_def = t302 i_name = t306 ).
      result = t301.
      RETURN.
    ENDIF.
    DATA t312 TYPE REF TO zcl_lnt_shape_a38e878f.
    DATA t313 TYPE REF TO zif_lnt_method_definition.
    DATA t314 TYPE REF TO zif_lnt_method_definition.
    CLEAR t314.
    t313 = t314.
    DATA t315 TYPE REF TO zif_lnt_interface_definition.
    DATA t316 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t316.
    t315 = t316.
    t312 = NEW zcl_lnt_shape_a38e878f( i_method = t313 i_def = t315 ).
    CREATE OBJECT t312->zlnt_view_ownkeys_b0e8086400eb.
    t312->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t317.
    IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t317 ).
    ENDIF.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t318.
    IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t318 ).
    ENDIF.
    CREATE OBJECT t312->zlnt_json_ownkeys_70e5fd461788.
    t312->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t319) = |method|.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t319 p1 = t320 ).
    ENDIF.
    DATA(t321) = |def|.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
    ENDIF.
    result = t312.

  ENDMETHOD.

  METHOD find_method.
    DATA(t1) = i_def.
    DATA(t2) = i_method_name.
    DATA t3 TYPE REF TO zif_lnt_method_definitions.
    DATA t4 TYPE REF TO zif_lnt_method_definitions.
    DATA(t5) = t1.
    t4 = t5->get_method_definitions( ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zif_lnt_method_definitions.
    DATA(t8) = t3.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    IF t6 = abap_true.
      DATA t13 TYPE REF TO zif_lnt_method_definition.
      CLEAR t13.
      result = t13.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zif_lnt_method_definition.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_method_definition.
    CLEAR t15.
    DATA(t16) = t3.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = t2.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t19.
      t17 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t17 = t21.
    ENDIF.
    t15 = t16->get_by_name( i_name = t17 ).
    t14 = t15.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zif_lnt_method_definition.
    DATA(t24) = t14.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t23.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ENDIF.
    t22 = t27.
    IF t22 = abap_true.
      DATA t29 TYPE REF TO zif_lnt_method_definition.
      CLEAR t29.
      result = t29.
      RETURN.
    ENDIF.
    DATA t30 TYPE abap_bool.
    DATA t31 TYPE REF TO zif_lnt_method_definition.
    DATA(t32) = t14.
    t31 = t32.
    t30 = t31->is_redefinition( ).
    IF t30 = abap_true.
      DATA t33 TYPE REF TO zif_lnt_method_definition.
      DATA(t34) = t1.
      DATA(t35) = t2.
      t33 = me->find_method_in_super( i_child = t34 i_method_name = t35 ).
      result = t33.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zif_lnt_method_definition.
    CLEAR t36.
    DATA(t37) = abap_true.
    IF t37 = abap_true.
      DATA t38 TYPE REF TO zif_lnt_method_definition.
      DATA(t39) = t14.
      t38 = t39.
      t36 = t38.
    ELSE.
      DATA t40 TYPE REF TO zif_lnt_method_definition.
      CLEAR t40.
      t36 = t40.
    ENDIF.
    result = t36.

  ENDMETHOD.

  METHOD find_method_in_super.
    DATA(t1) = i_child.
    DATA(t2) = i_method_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t5) = t1.
    t4 = t5->get_super_class( ).
    t3 = t4.
    DO.
      DATA(t6) = VALUE abap_bool( ).
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t8) = t3.
      t7 = t8.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      t9 = t10.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t7.
      IF t13 IS INITIAL.
        t12 = abap_true.
      ELSEIF t13->has = abap_false.
        t12 = abap_true.
      ENDIF.
      t11 = xsdbool( t12 = abap_false ).
      t6 = t11.
      IF t6 = abap_false.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_class_definition.
      DATA t15 TYPE REF TO zif_lnt_class_definition.
      DATA t16 TYPE string.
      DATA(t17) = t3.
      t16 = t17->value.
      t15 = me->find_super_definition( i_name = t16 ).
      t14 = t15.
      DATA t18 TYPE REF TO zif_lnt_method_definition.
      DATA t19 TYPE REF TO zif_lnt_method_definition.
      DATA t20 TYPE REF TO zif_lnt_interface_definition.
      DATA(t21) = t14.
      t20 ?= t21.
      DATA(t22) = t2.
      t19 = me->find_method( i_def = t20 i_method_name = t22 ).
      t18 = t19.
      DATA t23 TYPE abap_bool.
      DATA(t24) = t18.
      t23 = xsdbool( t24 IS BOUND ).
      IF t23 = abap_true.
        DATA t25 TYPE REF TO zif_lnt_method_definition.
        CLEAR t25.
        DATA(t26) = abap_true.
        IF t26 = abap_true.
          DATA t27 TYPE REF TO zif_lnt_method_definition.
          DATA(t28) = t18.
          t27 = t28.
          t25 = t27.
        ELSE.
          DATA t29 TYPE REF TO zif_lnt_method_definition.
          CLEAR t29.
          t25 = t29.
        ENDIF.
        result = t25.
        RETURN.
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t31) = t14.
      t30 = t31->get_super_class( ).
      t3 = t30.
    ENDDO.
    DATA t32 TYPE REF TO zif_lnt_method_definition.
    CLEAR t32.
    result = t32.

  ENDMETHOD.

  METHOD find_super_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zif_lnt_class_definition.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_class_definition.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t4.
    DATA(t5) = me->scope.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = t1.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t9.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t7 = t11.
    ENDIF.
    t6 = t7.
    DATA t12 TYPE REF TO zif_lnt_class_definition.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA(t15) = t6.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t14.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ELSEIF t19->has = abap_false.
      t18 = abap_true.
    ENDIF.
    t13 = t18.
    IF t13 = abap_true.
      DATA t20 TYPE REF TO zif_lnt_class_definition.
      CLEAR t20.
      t12 = t20.
    ELSE.
      DATA t21 TYPE REF TO zif_lnt_class_definition.
      CLEAR t21.
      DATA t22 TYPE REF TO zif_lnt_class_definition.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_class_definition.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t25.
      DATA(t26) = t4.
      t25 = t26->current.
      t24 = t25.
      DATA t27 TYPE REF TO zif_lnt_class_definition.
      CLEAR t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t24.
      IF t29 IS INITIAL.
        t28 = abap_true.
      ENDIF.
      IF t28 = abap_true.
        DATA t30 TYPE REF TO zif_lnt_class_definition.
        CLEAR t30.
        t27 = t30.
      ELSE.
        DATA t31 TYPE REF TO zif_lnt_class_definition.
        CLEAR t31.
        DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t32.
        DATA(t33) = t24.
        t32 = t33.
        DATA(t34) = VALUE string( ).
        DATA(t35) = t6.
        t34 = t35->value.
        t31 = t32->find_class_definition( i_name = t34 ).
        t27 = t31.
      ENDIF.
      t23 = t27.
      t22 = t23.
      DATA t36 TYPE REF TO zif_lnt_class_definition.
      CLEAR t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t22.
      t37 = xsdbool( t38 IS BOUND ).
      IF t37 = abap_true.
        DATA t39 TYPE REF TO zif_lnt_class_definition.
        CLEAR t39.
        DATA(t40) = abap_true.
        IF t40 = abap_true.
          DATA t41 TYPE REF TO zif_lnt_class_definition.
          CLEAR t41.
          DATA(t42) = t22.
          t41 = t42.
          t39 = t41.
        ELSE.
          DATA t43 TYPE REF TO zif_lnt_class_definition.
          CLEAR t43.
          t39 = t43.
        ENDIF.
        t36 = t39.
      ELSE.
        DATA t44 TYPE REF TO zif_lnt_class_definition.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_class.
        CLEAR t45.
        DATA t46 TYPE REF TO zcl_lnt_class.
        CLEAR t46.
        DATA t47 TYPE REF TO zif_lnt_object.
        CLEAR t47.
        DATA t48 TYPE REF TO zif_lnt_registry.
        CLEAR t48.
        DATA(t49) = t4.
        t48 = t49->reg.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA(t52) = |CLAS|.
          DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t53->has = abap_true.
          t53->value = t52.
          t50 = t53.
        ELSE.
          DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t54.
          t50 = t54.
        ENDIF.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA(t56) = abap_true.
        IF t56 = abap_true.
          DATA(t57) = VALUE string( ).
          DATA(t58) = t6.
          t57 = t58->value.
          DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t59->has = abap_true.
          t59->value = t57.
          t55 = t59.
        ELSE.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t55 = t60.
        ENDIF.
        t47 = t48->get_object( i_type_9913 = t50 i_name = t55 ).
        DATA t61 TYPE REF TO object.
        CLEAR t61.
        t61 = t47.
        t46 ?= t61.
        t45 = t46.
        DATA t62 TYPE REF TO zif_lnt_class_definition.
        CLEAR t62.
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = t45.
        t63 = xsdbool( t64 IS BOUND ).
        IF t63 = abap_true.
          DATA t65 TYPE REF TO zif_lnt_class_definition.
          CLEAR t65.
          DATA t66 TYPE REF TO zcl_lnt_class.
          CLEAR t66.
          DATA(t67) = t45.
          t66 = t67.
          t65 = t66->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t62 = t65.
        ELSE.
          DATA t68 TYPE REF TO zif_lnt_class_definition.
          CLEAR t68.
          t62 = t68.
        ENDIF.
        t44 = t62.
        t36 = t44.
      ENDIF.
      t21 = t36.
      t12 = t21.
    ENDIF.
    t3 = t12.
    t2 = t3.
    DATA(t69) = VALUE abap_bool( ).
    DATA t70 TYPE REF TO zif_lnt_class_definition.
    CLEAR t70.
    DATA(t71) = t2.
    t70 = t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    t72 = t73.
    DATA(t74) = VALUE abap_bool( ).
    DATA(t75) = t70.
    IF t75 IS INITIAL.
      t74 = abap_true.
    ENDIF.
    t69 = t74.
    IF t69 = abap_true.
      DATA t76 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t76.
      DATA t77 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t77.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t78.
      DATA(t79) = abap_true.
      IF t79 = abap_true.
        DATA(t80) = VALUE string( ).
        DATA(t81) = VALUE string( ).
        DATA(t82) = |Super class "|.
        DATA(t83) = t1.
        DATA(t84) = strlen( t82 ).
        t81 = |{ t82 }{ t83 }|.
        DATA(t85) = |" not found or contains errors|.
        DATA(t86) = strlen( t81 ).
        t80 = |{ t81 }{ t85 }|.
        DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t87->has = abap_true.
        t87->value = t80.
        t78 = t87.
      ELSE.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t78 = t88.
      ENDIF.
      t77 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t78 ).
      t76 = NEW #( ).
      t76->payload = t77.
      CLEAR t76->source_value.
      IF t77 IS BOUND.
        DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t89.
        DATA t90 TYPE REF TO object.
        CLEAR t90.
        CLEAR t89.
        t90 = t77.
        TRY.
            t76->source_value ?= t90.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76->source_value IS NOT BOUND.
          TRY.
              t89 ?= t77.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t89 IS BOUND.
            t76->source_value = t89->source( ).
          ENDIF.
          IF t76->source_value IS NOT BOUND.
            CREATE OBJECT t76->source_value.
            t76->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t76->source_value->oval = t77.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t76.
    ENDIF.
    DATA t91 TYPE REF TO zif_lnt_class_definition.
    CLEAR t91.
    DATA(t92) = t2.
    t91 = t92.
    result = t91.

  ENDMETHOD.

  METHOD frm_spr_clsss_and_intrfcs.
    DATA(t1) = i_child.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = t1.
    t3 = me->from_super_classes( i_child = t4 ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_interface_definition.
    DATA(t7) = t1.
    t6 ?= t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA(t10) = t2.
      t8 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t11.
      t8 = t11.
    ENDIF.
    t5 = me->from_interfaces( i_definition = t6 i_skip_34cc = t8 ).
  ENDMETHOD.

  METHOD from_super_classes.
    DATA(t1) = i_child.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4->get_super_class( ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t6.
    t5 = t6.
    DO.
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t9) = t2.
      t8 = t9.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      t10 = t11.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = t8.
      IF t14 IS INITIAL.
        t13 = abap_true.
      ELSEIF t14->has = abap_false.
        t13 = abap_true.
      ENDIF.
      t12 = xsdbool( t13 = abap_false ).
      t7 = t12.
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_class_definition.
      DATA t16 TYPE REF TO zif_lnt_class_definition.
      DATA t17 TYPE string.
      DATA(t18) = t2.
      t17 = t18->value.
      t16 = me->find_super_definition( i_name = t17 ).
      t15 = t16.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zif_lnt_attributes.
      DATA(t21) = t15.
      t20 = t21->get_attributes( ).
      t19 = t20->get_all( ).
      DATA t22 TYPE REF TO zcl_lnt_class_attribute.
      CLEAR t22.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      DATA(t24) = VALUE i( ).
      DO.
        t19->load( ).
        IF t24 >= lines( t19->items ).
          EXIT.
        ENDIF.
        CLEAR t23.
        READ TABLE t19->items INDEX t24 + 1 INTO t23.
        t24 = t24 + 1.
        DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t25.
        CLEAR t22.
        IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t25 ?= t23.
          DATA t26 TYPE REF TO object.
          t26 = t25->as_ref( ).
          t22 ?= t26.
        ELSE.
          t22 ?= t23.
        ENDIF.
        DATA t27 TYPE abap_bool.
        DATA t28 TYPE f.
        DATA t29 TYPE REF TO zcl_lnt_class_attribute.
        DATA(t30) = t22.
        t29 = t30.
        DATA t31 TYPE f.
        DATA(t32) = t29.
        t31 = t32->visibility.
        t28 = t31.
        DATA(t33) = CONV f( 1 ).
        t27 = xsdbool( t28 <> t33 ).
        IF t27 = abap_true.
          DATA t34 TYPE REF TO zcl_lnt_current_scope.
          DATA(t35) = me->scope.
          t34 = t35.
          DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t37) = t22.
          t36 = t37.
          DATA(t38) = VALUE abap_bool( ).
          DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t40) = t36.
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
          IF t38 = abap_true.
          ELSE.
            DATA(t45) = t34.
            DATA(t46) = VALUE string( ).
            DATA t47 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t48 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t49) = t36.
            t48 = t49.
            t47 = t48.
            DATA(t50) = VALUE string( ).
            DATA t51 TYPE string.
            DATA t52 TYPE string.
            DATA t53 TYPE REF TO zcl_lnt_abstract_token.
            DATA t54 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t55) = t47.
            t54 = t55->token.
            t53 = t54.
            DATA t56 TYPE string.
            DATA(t57) = t53.
            t56 = t57->str.
            t52 = t56.
            t51 = t52.
            DATA(t58) = VALUE abap_bool( ).
            DATA(t59) = VALUE string( ).
            DATA(t60) = t51.
            DATA(t61) = 0.
            DATA(t62) = 1.
            DATA(t63) = strlen( t60 ).
            IF t61 < 0.
              t61 = t61 + t63.
              IF t61 < 0.
                t61 = 0.
              ENDIF.
            ENDIF.
            IF t61 > t63 OR t62 <= 0.
              CLEAR t59.
            ELSE.
              IF t62 > t63 - t61.
                t62 = t63 - t61.
              ENDIF.
              t59 = t60+t61(t62).
            ENDIF.
            DATA(t64) = |!|.
            t58 = xsdbool( t59 = t64 ).
            IF t58 = abap_true.
              DATA(t65) = VALUE string( ).
              DATA t66 TYPE string.
              DATA(t67) = t51.
              t66 = t67.
              DATA(t68) = VALUE string( ).
              DATA(t69) = t66.
              DATA(t70) = 1.
              DATA t71 TYPE i.
              DATA(t72) = t66.
              DATA(t73) = strlen( t72 ).
              t71 = t73.
              DATA(t74) = strlen( t69 ).
              IF t70 < 0.
                t70 = t70 + t74.
                IF t70 < 0.
                  t70 = 0.
                ENDIF.
              ENDIF.
              IF t70 > t74 OR t71 <= 0.
                CLEAR t68.
              ELSE.
                IF t71 > t74 - t70.
                  t71 = t74 - t70.
                ENDIF.
                t68 = t69+t70(t71).
              ENDIF.
              t65 = t68.
              t51 = t65.
            ENDIF.
            DATA(t75) = t51.
            t50 = t75.
            t46 = t50.
            DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t77) = t36.
            t76 = t77.
            t45->add_named_identifier( i_name = t46 i_identifier = t76 ).
          ENDIF.
        ENDIF.
      ENDDO.
      DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t79 TYPE REF TO zif_lnt_attributes.
      DATA(t80) = t15.
      t79 = t80->get_attributes( ).
      t78 = t79->get_constants( ).
      DATA t81 TYPE REF TO zcl_lnt_class_constant.
      CLEAR t81.
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      DATA(t83) = VALUE i( ).
      DO.
        t78->load( ).
        IF t83 >= lines( t78->items ).
          EXIT.
        ENDIF.
        CLEAR t82.
        READ TABLE t78->items INDEX t83 + 1 INTO t82.
        t83 = t83 + 1.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        CLEAR t81.
        IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t84 ?= t82.
          DATA t85 TYPE REF TO object.
          t85 = t84->as_ref( ).
          t81 ?= t85.
        ELSE.
          t81 ?= t82.
        ENDIF.
        DATA t86 TYPE abap_bool.
        DATA t87 TYPE f.
        DATA t88 TYPE REF TO zcl_lnt_class_constant.
        DATA(t89) = t81.
        t88 = t89.
        DATA t90 TYPE f.
        DATA(t91) = t88.
        t90 = t91->visibility.
        t87 = t90.
        DATA(t92) = CONV f( 1 ).
        t86 = xsdbool( t87 <> t92 ).
        IF t86 = abap_true.
          DATA t93 TYPE REF TO zcl_lnt_current_scope.
          DATA(t94) = me->scope.
          t93 = t94.
          DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t96) = t81.
          t95 = t96.
          DATA(t97) = VALUE abap_bool( ).
          DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t99) = t95.
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
          ELSE.
            DATA(t104) = t93.
            DATA(t105) = VALUE string( ).
            DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t108) = t95.
            t107 = t108.
            t106 = t107.
            DATA(t109) = VALUE string( ).
            DATA t110 TYPE string.
            DATA t111 TYPE string.
            DATA t112 TYPE REF TO zcl_lnt_abstract_token.
            DATA t113 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t114) = t106.
            t113 = t114->token.
            t112 = t113.
            DATA t115 TYPE string.
            DATA(t116) = t112.
            t115 = t116->str.
            t111 = t115.
            t110 = t111.
            DATA(t117) = VALUE abap_bool( ).
            DATA(t118) = VALUE string( ).
            DATA(t119) = t110.
            DATA(t120) = 0.
            DATA(t121) = 1.
            DATA(t122) = strlen( t119 ).
            IF t120 < 0.
              t120 = t120 + t122.
              IF t120 < 0.
                t120 = 0.
              ENDIF.
            ENDIF.
            IF t120 > t122 OR t121 <= 0.
              CLEAR t118.
            ELSE.
              IF t121 > t122 - t120.
                t121 = t122 - t120.
              ENDIF.
              t118 = t119+t120(t121).
            ENDIF.
            DATA(t123) = |!|.
            t117 = xsdbool( t118 = t123 ).
            IF t117 = abap_true.
              DATA(t124) = VALUE string( ).
              DATA t125 TYPE string.
              DATA(t126) = t110.
              t125 = t126.
              DATA(t127) = VALUE string( ).
              DATA(t128) = t125.
              DATA(t129) = 1.
              DATA t130 TYPE i.
              DATA(t131) = t125.
              DATA(t132) = strlen( t131 ).
              t130 = t132.
              DATA(t133) = strlen( t128 ).
              IF t129 < 0.
                t129 = t129 + t133.
                IF t129 < 0.
                  t129 = 0.
                ENDIF.
              ENDIF.
              IF t129 > t133 OR t130 <= 0.
                CLEAR t127.
              ELSE.
                IF t130 > t133 - t129.
                  t130 = t133 - t129.
                ENDIF.
                t127 = t128+t129(t130).
              ENDIF.
              t124 = t127.
              t110 = t124.
            ENDIF.
            DATA(t134) = t110.
            t109 = t134.
            t105 = t109.
            DATA t135 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t136) = t95.
            t135 = t136.
            t104->add_named_identifier( i_name = t105 i_identifier = t135 ).
          ENDIF.
        ENDIF.
      ENDDO.
      DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t138 TYPE REF TO zif_lnt_type_definitions.
      DATA(t139) = t15.
      t138 = t139->get_type_definitions( ).
      t137 = t138->get_all( ).
      DATA t140 TYPE REF TO zcl_lnt_type_definitions_entry.
      CLEAR t140.
      DATA t141 TYPE REF TO object.
      CLEAR t141.
      DATA(t142) = VALUE i( ).
      DO.
        t137->load( ).
        IF t142 >= lines( t137->items ).
          EXIT.
        ENDIF.
        CLEAR t141.
        READ TABLE t137->items INDEX t142 + 1 INTO t141.
        t142 = t142 + 1.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        CLEAR t140.
        IF t141 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t143 ?= t141.
          DATA t144 TYPE REF TO object.
          t144 = t143->as_ref( ).
          t140 ?= t144.
        ELSE.
          t140 ?= t141.
        ENDIF.
        DATA t145 TYPE abap_bool.
        DATA t146 TYPE f.
        DATA(t147) = t140.
        t146 = t147->visibility.
        DATA(t148) = CONV f( 1 ).
        t145 = xsdbool( t146 <> t148 ).
        IF t145 = abap_true.
          DATA t149 TYPE REF TO zcl_lnt_current_scope.
          DATA(t150) = me->scope.
          t149 = t150.
          DATA t151 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t151.
          DATA t152 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t152.
          DATA(t153) = abap_true.
          IF t153 = abap_true.
            DATA t154 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t155) = t140.
            t154 = t155->type_cba0.
            t152 = t154.
          ELSE.
            DATA t156 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t156.
            t152 = t156.
          ENDIF.
          t151 = t152.
          DATA(t157) = VALUE abap_bool( ).
          DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t159) = t151.
          t158 = t159.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          t160 = t161.
          DATA(t162) = VALUE abap_bool( ).
          DATA(t163) = t158.
          IF t163 IS INITIAL.
            t162 = abap_true.
          ENDIF.
          t157 = t162.
          IF t157 = abap_true.
          ELSE.
            DATA(t164) = t149.
            DATA(t165) = VALUE string( ).
            DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t167 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t168) = t151.
            t167 = t168.
            t166 = t167.
            DATA(t169) = VALUE string( ).
            DATA t170 TYPE string.
            DATA t171 TYPE string.
            DATA t172 TYPE REF TO zcl_lnt_abstract_token.
            DATA t173 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t174) = t166.
            t173 = t174->token.
            t172 = t173.
            DATA t175 TYPE string.
            DATA(t176) = t172.
            t175 = t176->str.
            t171 = t175.
            t170 = t171.
            DATA(t177) = VALUE abap_bool( ).
            DATA(t178) = VALUE string( ).
            DATA(t179) = t170.
            DATA(t180) = 0.
            DATA(t181) = 1.
            DATA(t182) = strlen( t179 ).
            IF t180 < 0.
              t180 = t180 + t182.
              IF t180 < 0.
                t180 = 0.
              ENDIF.
            ENDIF.
            IF t180 > t182 OR t181 <= 0.
              CLEAR t178.
            ELSE.
              IF t181 > t182 - t180.
                t181 = t182 - t180.
              ENDIF.
              t178 = t179+t180(t181).
            ENDIF.
            DATA(t183) = |!|.
            t177 = xsdbool( t178 = t183 ).
            IF t177 = abap_true.
              DATA(t184) = VALUE string( ).
              DATA t185 TYPE string.
              DATA(t186) = t170.
              t185 = t186.
              DATA(t187) = VALUE string( ).
              DATA(t188) = t185.
              DATA(t189) = 1.
              DATA t190 TYPE i.
              DATA(t191) = t185.
              DATA(t192) = strlen( t191 ).
              t190 = t192.
              DATA(t193) = strlen( t188 ).
              IF t189 < 0.
                t189 = t189 + t193.
                IF t189 < 0.
                  t189 = 0.
                ENDIF.
              ENDIF.
              IF t189 > t193 OR t190 <= 0.
                CLEAR t187.
              ELSE.
                IF t190 > t193 - t189.
                  t190 = t193 - t189.
                ENDIF.
                t187 = t188+t189(t190).
              ENDIF.
              t184 = t187.
              t170 = t184.
            ENDIF.
            DATA(t194) = t170.
            t169 = t194.
            t165 = t169.
            DATA t195 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t195.
            DATA(t196) = abap_true.
            IF t196 = abap_true.
              DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t198) = t151.
              t197 = t198.
              t195 = t197.
            ELSE.
              DATA t199 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t199.
              t195 = t199.
            ENDIF.
            t164->add_type_named( i_name = t165 i_type_9913 = t195 ).
          ENDIF.
        ENDIF.
      ENDDO.
      DATA(t200) = VALUE i( ).
      DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t201.
      DATA t202 TYPE REF TO zif_lnt_interface_definition.
      DATA(t203) = t15.
      t202 ?= t203.
      DATA t204 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t204.
      DATA(t205) = abap_true.
      IF t205 = abap_true.
        DATA(t206) = t5.
        t204 = t206.
      ELSE.
        DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t207.
        t204 = t207.
      ENDIF.
      t201 = me->from_interfaces( i_definition = t202 i_skip_34cc = t204 ).
      DATA(t208) = VALUE string( ).
      t201->dense( ).
      DATA(t209) = VALUE i( ).
      DO.
        t201->load( ).
        IF t209 >= lines( t201->items ).
          EXIT.
        ENDIF.
        CLEAR t208.
        READ TABLE t201->items INDEX t209 + 1 INTO t208.
        IF t201->has( t209 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t209 = t209 + 1.
        DATA(t210) = t5.
        DATA(t211) = t208.
        t210->load( ).
        APPEND t211 TO t210->items.
        t210->save( ).
      ENDDO.
      DATA t212 TYPE i.
      DATA(t213) = t5.
      t213->load( ).
      t212 = lines( t213->items ).
      t200 = t212.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t215) = t15.
      t214 = t215->get_super_class( ).
      t2 = t214.
    ENDDO.
    DATA(t216) = t5.
    result = t216.

  ENDMETHOD.

  METHOD list_interfaces_recursive.
    DATA(t1) = i_definition.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    t4 = t5->get_implementing( ).
    DATA t6 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t4->load( ).
      IF t8 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t4->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      DATA(t14) = t6.
      t13 = t14->name.
      DATA(t15) = strlen( t13 ).
      t12 = t13.
      IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t12 TO UPPER CASE.
      ELSE.
        t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
      ENDIF.
      t11 = t12.
      DATA(t16) = t2.
      DATA(t17) = t11.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA t18 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_current_scope.
      DATA(t21) = me->scope.
      t20 = t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA(t24) = abap_true.
      IF t24 = abap_true.
        DATA(t25) = t11.
        DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t26->has = abap_true.
        t26->value = t25.
        t23 = t26.
      ELSE.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t27.
        t23 = t27.
      ENDIF.
      t22 = t23.
      DATA t28 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t31) = t22.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      t32 = t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t30.
      IF t35 IS INITIAL.
        t34 = abap_true.
      ELSEIF t35->has = abap_false.
        t34 = abap_true.
      ENDIF.
      t29 = t34.
      IF t29 = abap_true.
        DATA t36 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t36.
        t28 = t36.
      ELSE.
        DATA t37 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t37.
        DATA t38 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t38.
        DATA t39 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t39.
        DATA t40 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t42) = t20.
        t41 = t42->current.
        t40 = t41.
        DATA t43 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t43.
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = t40.
        IF t45 IS INITIAL.
          t44 = abap_true.
        ENDIF.
        IF t44 = abap_true.
          DATA t46 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t46.
          t43 = t46.
        ELSE.
          DATA t47 TYPE REF TO zif_lnt_interface_definition.
          DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t49) = t40.
          t48 = t49.
          DATA t50 TYPE string.
          DATA(t51) = t22.
          t50 = t51->value.
          t47 = t48->find_interface_definition( i_name = t50 ).
          t43 = t47.
        ENDIF.
        t39 = t43.
        t38 = t39.
        DATA t52 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t52.
        DATA t53 TYPE abap_bool.
        DATA(t54) = t38.
        t53 = xsdbool( t54 IS BOUND ).
        IF t53 = abap_true.
          DATA t55 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t55.
          DATA(t56) = abap_true.
          IF t56 = abap_true.
            DATA t57 TYPE REF TO zif_lnt_interface_definition.
            DATA(t58) = t38.
            t57 = t58.
            t55 = t57.
          ELSE.
            DATA t59 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t59.
            t55 = t59.
          ENDIF.
          t52 = t55.
        ELSE.
          DATA t60 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t60.
          DATA t61 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t61.
          DATA t62 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t62.
          DATA t63 TYPE REF TO zif_lnt_object.
          CLEAR t63.
          DATA t64 TYPE REF TO zif_lnt_registry.
          DATA(t65) = t20.
          t64 = t65->reg.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          DATA(t67) = abap_true.
          IF t67 = abap_true.
            DATA(t68) = |INTF|.
            DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t69->has = abap_true.
            t69->value = t68.
            t66 = t69.
          ELSE.
            DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t70.
            t66 = t70.
          ENDIF.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          DATA(t72) = abap_true.
          IF t72 = abap_true.
            DATA t73 TYPE string.
            DATA(t74) = t22.
            t73 = t74->value.
            DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t75->has = abap_true.
            t75->value = t73.
            t71 = t75.
          ELSE.
            DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t76.
            t71 = t76.
          ENDIF.
          t63 = t64->get_object( i_type_9913 = t66 i_name = t71 ).
          DATA t77 TYPE REF TO object.
          t77 = t63.
          t62 ?= t77.
          t61 = t62.
          DATA t78 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t78.
          DATA t79 TYPE abap_bool.
          DATA(t80) = t61.
          t79 = xsdbool( t80 IS BOUND ).
          IF t79 = abap_true.
            DATA t81 TYPE REF TO zif_lnt_interface_definition.
            DATA t82 TYPE REF TO zcl_lnt_ob_interface.
            DATA t83 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t84) = t61.
            t83 = t84.
            t82 = t83.
            DATA t85 TYPE REF TO zif_lnt_interface_definition.
            DATA(t86) = t82.
            t85 = t86->def.
            t81 = t85.
            t78 = t81.
          ELSE.
            DATA t87 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t87.
            t78 = t87.
          ENDIF.
          t60 = t78.
          t52 = t60.
        ENDIF.
        t37 = t52.
        t28 = t37.
      ENDIF.
      t19 = t28.
      t18 = t19.
      DATA t88 TYPE abap_bool.
      DATA(t89) = t18.
      t88 = xsdbool( t89 IS BOUND ).
      IF t88 = abap_true.
        DATA(t90) = VALUE i( ).
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t92 TYPE REF TO zif_lnt_interface_definition.
        DATA(t93) = t18.
        t92 = t93.
        t91 = me->list_interfaces_recursive( i_definition = t92 ).
        DATA(t94) = VALUE string( ).
        t91->dense( ).
        DATA(t95) = VALUE i( ).
        DO.
          t91->load( ).
          IF t95 >= lines( t91->items ).
            EXIT.
          ENDIF.
          CLEAR t94.
          READ TABLE t91->items INDEX t95 + 1 INTO t94.
          IF t91->has( t95 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t95 = t95 + 1.
          DATA(t96) = t2.
          DATA(t97) = t94.
          t96->load( ).
          APPEND t97 TO t96->items.
          t96->save( ).
        ENDDO.
        DATA t98 TYPE i.
        DATA(t99) = t2.
        t99->load( ).
        t98 = lines( t99->items ).
        t90 = t98.
      ENDIF.
    ENDDO.
    DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t102.
    t101 = t102.
    DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t105) = t101.
    DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t107 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t108) = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA(t109) = t2.
    t107 = t108->fromarray( p0 = t109 ).
    t106 = t107->values( ).
    t104 = t105->concat( p0 = t106 ).
    t103 = t104.
    DATA(t110) = t103.
    t100 = t110.
    result = t100.

  ENDMETHOD.

  METHOD from_interfaces.
    DATA(t1) = i_definition.
    DATA(t2) = i_skip_34cc.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = t6->get_implementing( ).
    DATA t7 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t5->load( ).
      IF t9 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t5->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA(t12) = VALUE i( ).
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t13.
      DATA t14 TYPE string.
      DATA(t15) = t7.
      t14 = t15->name.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t16.
      DATA(t17) = t3.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t20) = t2.
      t19 = t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t19.
      t22 = xsdbool( t23 IS BOUND ).
      IF t22 = abap_true.
        DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t25) = t19.
        t24 = t25.
        t21 = t24.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t26.
        t21 = t26.
      ENDIF.
      t18 = t21.
      t16 = t17->concat( p0 = t18 ).
      t13 = me->from_interface_by_name( i_name = t14 i_ignore = t16 ).
      DATA(t27) = VALUE string( ).
      t13->dense( ).
      DATA(t28) = VALUE i( ).
      DO.
        t13->load( ).
        IF t28 >= lines( t13->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t13->items INDEX t28 + 1 INTO t27.
        IF t13->has( t28 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t28 = t28 + 1.
        DATA(t29) = t3.
        DATA(t30) = t27.
        t29->load( ).
        APPEND t30 TO t29->items.
        t29->save( ).
      ENDDO.
      DATA t31 TYPE i.
      DATA(t32) = t3.
      t32->load( ).
      t31 = lines( t32->items ).
      t12 = t31.
    ENDDO.
    DATA(t33) = t3.
    result = t33.

  ENDMETHOD.

  METHOD fn_is_friend.
    DATA(t1) = i_cd.
    DATA(t2) = i_friends.
    DATA(t3) = i_name.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    DATA t7 TYPE string.
    DATA(t8) = t3.
    DATA(t9) = strlen( t8 ).
    t7 = t8.
    IF t7 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t7 TO UPPER CASE.
    ELSE.
      t7 = zlnt_runtime_uppe_91169605024d=>full( t7 ).
    ENDIF.
    t5 = t6->includes( p0 = t7 ).
    t4 = t5.
    IF t5 = abap_false.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zcl_lnt_current_scope.
      DATA(t12) = me->scope.
      t11 = t12.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA(t15) = t1.
      t14 = t15->get_name( ).
      t13 = t14.
      DATA t16 TYPE string.
      DATA(t17) = t3.
      t16 = t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
      DATA(t23) = t11.
      t22 = t23->local_friends.
      DATA t24 TYPE string.
      DATA(t25) = t13.
      DATA(t26) = strlen( t25 ).
      t24 = t25.
      IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t24 TO UPPER CASE.
      ELSE.
        t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
      ENDIF.
      t21 = t22->get( p0 = t24 ).
      t20 = t21.
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t20.
      IF t29 IS INITIAL.
        t28 = abap_true.
      ENDIF.
      IF t28 = abap_true.
        DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t30.
        t27 = t30.
      ELSE.
        DATA(t31) = VALUE abap_bool( ).
        DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t33) = t20.
        t32 = t33.
        DATA t34 TYPE string.
        DATA(t35) = t16.
        DATA(t36) = strlen( t35 ).
        t34 = t35.
        IF t34 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t34 TO UPPER CASE.
        ELSE.
          t34 = zlnt_runtime_uppe_91169605024d=>full( t34 ).
        ENDIF.
        t31 = t32->includes( p0 = t34 ).
        DATA(t37) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t37->has = abap_true.
        t37->value = t31.
        t27 = t37.
      ENDIF.
      t19 = t27.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      DATA(t39) = abap_true.
      IF t39 = abap_true.
        DATA(t40) = abap_true.
        DATA(t41) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t41->has = abap_true.
        t41->value = t40.
        t38 = t41.
      ELSE.
        DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t42.
        t38 = t42.
      ENDIF.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = VALUE abap_bool( ).
      IF t19 IS BOUND.
        t43 = t19->has.
      ENDIF.
      IF t38 IS BOUND.
        t44 = t38->has.
      ENDIF.
      IF t43 = t44.
        IF t43 = abap_false.
          t18 = abap_true.
        ELSEIF t19->value = t38->value.
          t18 = abap_true.
        ENDIF.
      ENDIF.
      t10 = t18.
      t4 = t10.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d773_5be5782ab7ce.
  ENDMETHOD.
ENDCLASS.
