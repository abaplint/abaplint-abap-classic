* TS: src/abap/5_syntax/_object_oriented.ts:18:1 ObjectOriented
CLASS zcl_lnt_object_oriented DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_object_oriented IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_scope.
    DATA(t2) = t1.
    me->scope = t2.
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
    APPEND t92 TO t91->items.
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
    LOOP AT t96->items INTO t101.
      t100 ?= t101.
      DATA(t102) = VALUE string( ).
      DATA(t103) = VALUE string( ).
      DATA t104 TYPE string.
      DATA(t105) = t1.
      DATA(t106) = |~|.
      DATA(t107) = strlen( t105 ).
      t104 = |{ t105 }{ t106 }|.
      DATA(t108) = VALUE string( ).
      DATA t109 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t111) = t100.
      t110 = t111->type_cba0.
      t109 = t110.
      DATA(t112) = VALUE string( ).
      DATA t113 TYPE string.
      DATA t114 TYPE string.
      DATA t115 TYPE REF TO zcl_lnt_abstract_token.
      DATA t116 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t117) = t109.
      t116 = t117->token.
      t115 = t116.
      DATA t118 TYPE string.
      DATA(t119) = t115.
      t118 = t119->str.
      t114 = t118.
      t113 = t114.
      DATA(t120) = VALUE abap_bool( ).
      DATA(t121) = VALUE string( ).
      DATA(t122) = t113.
      DATA(t123) = 0.
      DATA(t124) = 1.
      DATA(t125) = strlen( t122 ).
      IF t123 < 0.
        t123 = t123 + t125.
        IF t123 < 0.
          t123 = 0.
        ENDIF.
      ENDIF.
      IF t123 > t125 OR t124 <= 0.
        CLEAR t121.
      ELSE.
        IF t124 > t125 - t123.
          t124 = t125 - t123.
        ENDIF.
        t121 = t122+t123(t124).
      ENDIF.
      DATA(t126) = |!|.
      t120 = xsdbool( t121 = t126 ).
      IF t120 = abap_true.
        DATA(t127) = VALUE string( ).
        DATA t128 TYPE string.
        DATA(t129) = t113.
        t128 = t129.
        DATA(t130) = VALUE string( ).
        DATA(t131) = t128.
        DATA(t132) = 1.
        DATA t133 TYPE i.
        DATA(t134) = t128.
        DATA(t135) = strlen( t134 ).
        t133 = t135.
        DATA(t136) = strlen( t131 ).
        IF t132 < 0.
          t132 = t132 + t136.
          IF t132 < 0.
            t132 = 0.
          ENDIF.
        ENDIF.
        IF t132 > t136 OR t133 <= 0.
          CLEAR t130.
        ELSE.
          IF t133 > t136 - t132.
            t133 = t136 - t132.
          ENDIF.
          t130 = t131+t132(t133).
        ENDIF.
        t127 = t130.
        t113 = t127.
      ENDIF.
      DATA(t137) = t113.
      t112 = t137.
      t108 = t112.
      DATA(t138) = strlen( t104 ).
      t103 = |{ t104 }{ t108 }|.
      t102 = t103.
      DATA(t139) = me->scope.
      DATA(t140) = t102.
      DATA t141 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t141.
      DATA(t142) = abap_true.
      IF t142 = abap_true.
        DATA t143 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t144) = t100.
        t143 = t144->type_cba0.
        t141 = t143.
      ELSE.
        DATA t145 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t145.
        t141 = t145.
      ENDIF.
      t139->add_type_named( i_name = t140 i_type_9913 = t141 ).
    ENDLOOP.
    DATA(t146) = me->scope.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t148 TYPE REF TO zif_lnt_attributes.
    DATA t149 TYPE REF TO zif_lnt_interface_definition.
    DATA(t150) = t3.
    t149 = t150.
    t148 = t149->get_attributes( ).
    t147 = t148->get_constants( ).
    DATA t151 TYPE string.
    DATA(t152) = t1.
    DATA(t153) = |~|.
    DATA(t154) = strlen( t152 ).
    t151 = |{ t152 }{ t153 }|.
    t146->add_list_prefix( i_identifiers = t147 i_prefix = t151 ).
    DATA(t155) = me->scope.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t157 TYPE REF TO zif_lnt_attributes.
    DATA t158 TYPE REF TO zif_lnt_interface_definition.
    DATA(t159) = t3.
    t158 = t159.
    t157 = t158->get_attributes( ).
    t156 = t157->get_static( ).
    DATA t160 TYPE string.
    DATA(t161) = t1.
    DATA(t162) = |~|.
    DATA(t163) = strlen( t161 ).
    t160 = |{ t161 }{ t162 }|.
    t155->add_list_prefix( i_identifiers = t156 i_prefix = t160 ).
    DATA(t164) = me->scope.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t166 TYPE REF TO zif_lnt_attributes.
    DATA t167 TYPE REF TO zif_lnt_interface_definition.
    DATA(t168) = t3.
    t167 = t168.
    t166 = t167->get_attributes( ).
    t165 = t166->get_instance( ).
    DATA t169 TYPE string.
    DATA(t170) = t1.
    DATA(t171) = |~|.
    DATA(t172) = strlen( t170 ).
    t169 = |{ t170 }{ t171 }|.
    t164->add_list_prefix( i_identifiers = t165 i_prefix = t169 ).
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t174 TYPE REF TO zif_lnt_interface_definition.
    DATA(t175) = t3.
    t174 = t175.
    t173 = t174->get_implementing( ).
    DATA t176 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t176.
    DATA t177 TYPE REF TO object.
    CLEAR t177.
    LOOP AT t173->items INTO t177.
      t176 ?= t177.
      DATA(t178) = VALUE abap_bool( ).
      DATA(t179) = t2.
      DATA t180 TYPE string.
      DATA t181 TYPE string.
      DATA(t182) = t176.
      t181 = t182->name.
      DATA(t183) = strlen( t181 ).
      t180 = t181.
      IF t180 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t180 TO UPPER CASE.
      ELSE.
        t180 = zlnt_runtime_uppe_91169605024d=>full( t180 ).
      ENDIF.
      t178 = t179->includes( p0 = t180 ).
      IF t178 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t184) = VALUE i( ).
      DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t186 TYPE string.
      DATA(t187) = t176.
      t186 = t187->name.
      DATA(t188) = t2.
      t185 = me->from_interface_by_name( i_name = t186 i_ignore = t188 ).
      DATA(t189) = VALUE string( ).
      LOOP AT t185->items INTO t189.
        DATA(t190) = t87.
        DATA(t191) = t189.
        APPEND t191 TO t190->items.
      ENDLOOP.
      DATA t192 TYPE i.
      DATA(t193) = t87.
      t192 = lines( t193->items ).
      t184 = t192.
      DATA(t194) = t2.
      DATA t195 TYPE string.
      DATA t196 TYPE string.
      DATA(t197) = t176.
      t196 = t197->name.
      DATA(t198) = strlen( t196 ).
      t195 = t196.
      IF t195 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t195 TO UPPER CASE.
      ELSE.
        t195 = zlnt_runtime_uppe_91169605024d=>full( t195 ).
      ENDIF.
      APPEND t195 TO t194->items.
      DATA(t199) = t87.
      DATA t200 TYPE string.
      DATA t201 TYPE string.
      DATA(t202) = t176.
      t201 = t202->name.
      DATA(t203) = strlen( t201 ).
      t200 = t201.
      IF t200 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t200 TO UPPER CASE.
      ELSE.
        t200 = zlnt_runtime_uppe_91169605024d=>full( t200 ).
      ENDIF.
      APPEND t200 TO t199->items.
    ENDLOOP.
    DATA(t204) = t87.
    result = t204.

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
    LOOP AT t2->items INTO t12.
      t11 ?= t12.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA t15 TYPE REF TO zcl_lnt_alias.
      DATA(t16) = t11.
      t15 = t16.
      DATA t17 TYPE string.
      DATA(t18) = t15.
      t17 = t18->component.
      t14 = t17.
      t13 = t14.
      DATA t19 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_current_scope.
      DATA(t22) = me->scope.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA(t26) = VALUE string( ).
        DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t28) = t13.
        DATA(t29) = |~|.
        DATA(t30) = strlen( t28 ).
        DATA t31 TYPE i.
        DATA(t32) = VALUE i( ).
        DATA(t33) = VALUE i( ).
        DATA t34 TYPE i.
        DATA(t35) = VALUE string( ).
        CREATE OBJECT t27.
        t34 = strlen( t29 ).
        t31 = 0.
        IF t34 = 0.
          WHILE t31 < t30.
            t35 = t28+t31(1).
            APPEND t35 TO t27->items.
            t31 = t31 + 1.
          ENDWHILE.
        ELSE.
          WHILE t31 <= t30.
            FIND FIRST OCCURRENCE OF t29 IN SECTION OFFSET t31 OF t28 MATCH OFFSET t32.
            IF sy-subrc = 0.
              t33 = t32 - t31.
            ELSE.
              t32 = -1.
              t33 = t30 - t31.
            ENDIF.
            CLEAR t35.
            IF t33 > 0.
              t35 = t28+t31(t33).
            ENDIF.
            APPEND t35 TO t27->items.
            IF t32 < 0.
              EXIT.
            ENDIF.
            t31 = t32 + t34.
          ENDWHILE.
        ENDIF.
        READ TABLE t27->items INDEX 1 INTO t26.
        DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t36->has = abap_true.
        t36->value = t26.
        t24 = t36.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        t24 = t37.
      ENDIF.
      t23 = t24.
      DATA t38 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t38.
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t41) = t23.
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
        DATA(t52) = t21.
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
          DATA(t61) = t23.
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
          DATA(t75) = t21.
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
            DATA(t84) = t23.
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
      t20 = t38.
      t19 = t20.
      DATA t98 TYPE abap_bool.
      DATA(t99) = t19.
      t98 = xsdbool( t99 IS BOUND ).
      IF t98 = abap_true.
        DATA t100 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t100.
        DATA t101 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t101.
        DATA t102 TYPE REF TO zif_lnt_attributes.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        DATA(t104) = t19.
        t103 = t104.
        t102 = t103->get_attributes( ).
        DATA(t105) = VALUE string( ).
        DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t107) = t13.
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
    ENDLOOP.
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
    LOOP AT t2->items INTO t12.
      t11 ?= t12.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA t15 TYPE REF TO zcl_lnt_alias.
      DATA(t16) = t11.
      t15 = t16.
      DATA t17 TYPE string.
      DATA(t18) = t15.
      t17 = t18->component.
      t14 = t17.
      t13 = t14.
      DATA t19 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_current_scope.
      DATA(t22) = me->scope.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA(t26) = VALUE string( ).
        DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t28) = t13.
        DATA(t29) = |~|.
        DATA(t30) = strlen( t28 ).
        DATA t31 TYPE i.
        DATA(t32) = VALUE i( ).
        DATA(t33) = VALUE i( ).
        DATA t34 TYPE i.
        DATA(t35) = VALUE string( ).
        CREATE OBJECT t27.
        t34 = strlen( t29 ).
        t31 = 0.
        IF t34 = 0.
          WHILE t31 < t30.
            t35 = t28+t31(1).
            APPEND t35 TO t27->items.
            t31 = t31 + 1.
          ENDWHILE.
        ELSE.
          WHILE t31 <= t30.
            FIND FIRST OCCURRENCE OF t29 IN SECTION OFFSET t31 OF t28 MATCH OFFSET t32.
            IF sy-subrc = 0.
              t33 = t32 - t31.
            ELSE.
              t32 = -1.
              t33 = t30 - t31.
            ENDIF.
            CLEAR t35.
            IF t33 > 0.
              t35 = t28+t31(t33).
            ENDIF.
            APPEND t35 TO t27->items.
            IF t32 < 0.
              EXIT.
            ENDIF.
            t31 = t32 + t34.
          ENDWHILE.
        ENDIF.
        READ TABLE t27->items INDEX 1 INTO t26.
        DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t36->has = abap_true.
        t36->value = t26.
        t24 = t36.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        t24 = t37.
      ENDIF.
      t23 = t24.
      DATA t38 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t38.
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t41) = t23.
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
        DATA(t52) = t21.
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
          DATA(t61) = t23.
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
          DATA(t75) = t21.
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
            DATA(t84) = t23.
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
      t20 = t38.
      t19 = t20.
      DATA t98 TYPE abap_bool.
      DATA(t99) = t19.
      t98 = xsdbool( t99 IS BOUND ).
      IF t98 = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t100.
        DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t101.
        DATA t102 TYPE REF TO zif_lnt_type_definitions.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        DATA(t104) = t19.
        t103 = t104.
        t102 = t103->get_type_definitions( ).
        DATA(t105) = VALUE string( ).
        DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t107) = t13.
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
    ENDLOOP.
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
          DATA(t91) = abap_true.
          IF t91 = abap_true.
            DATA t92 TYPE REF TO zif_lnt_method_definition.
            DATA(t93) = t75.
            t92 = t93.
            t90 = t92.
          ELSE.
            DATA t94 TYPE REF TO zif_lnt_method_definition.
            CLEAR t94.
            t90 = t94.
          ENDIF.
          DATA t95 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t95.
          DATA(t96) = abap_true.
          IF t96 = abap_true.
            DATA t97 TYPE REF TO zif_lnt_interface_definition.
            DATA(t98) = t3.
            t97 = t98.
            t95 = t97.
          ELSE.
            DATA t99 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t99.
            t95 = t99.
          ENDIF.
          t89 = NEW zcl_lnt_shape_a38e878f( i_method = t90 i_def = t95 ).
          t87 = t89.
        ELSE.
          DATA t100 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t100.
          t87 = t100.
        ENDIF.
        result = t87.
        RETURN.
      ENDIF.
      DATA t101 TYPE REF TO zcl_lnt_shape_a38e878f.
      DATA(t102) = t2.
      DATA t103 TYPE REF TO zif_lnt_interface_definition.
      DATA(t104) = t3.
      t103 = t104.
      t101 = me->find_method_via_alias( i_method_name = t102 i_def = t103 ).
      result = t101.
      RETURN.
    ENDIF.
    DATA t105 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t105.
    result = t105.

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
    LOOP AT t3->items INTO t13.
      t12 ?= t13.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA t17 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t18) = t12.
      t17 = t18.
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = t17.
      t23 = t24->token.
      t22 = t23.
      DATA t25 TYPE string.
      DATA(t26) = t22.
      t25 = t26->str.
      t21 = t25.
      t20 = t21.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE string( ).
      DATA(t29) = t20.
      DATA(t30) = 0.
      DATA(t31) = 1.
      DATA(t32) = strlen( t29 ).
      IF t30 < 0.
        t30 = t30 + t32.
        IF t30 < 0.
          t30 = 0.
        ENDIF.
      ENDIF.
      IF t30 > t32 OR t31 <= 0.
        CLEAR t28.
      ELSE.
        IF t31 > t32 - t30.
          t31 = t32 - t30.
        ENDIF.
        t28 = t29+t30(t31).
      ENDIF.
      DATA(t33) = |!|.
      t27 = xsdbool( t28 = t33 ).
      IF t27 = abap_true.
        DATA(t34) = VALUE string( ).
        DATA t35 TYPE string.
        DATA(t36) = t20.
        t35 = t36.
        DATA(t37) = VALUE string( ).
        DATA(t38) = t35.
        DATA(t39) = 1.
        DATA t40 TYPE i.
        DATA(t41) = t35.
        DATA(t42) = strlen( t41 ).
        t40 = t42.
        DATA(t43) = strlen( t38 ).
        IF t39 < 0.
          t39 = t39 + t43.
          IF t39 < 0.
            t39 = 0.
          ENDIF.
        ENDIF.
        IF t39 > t43 OR t40 <= 0.
          CLEAR t37.
        ELSE.
          IF t40 > t43 - t39.
            t40 = t43 - t39.
          ENDIF.
          t37 = t38+t39(t40).
        ENDIF.
        t34 = t37.
        t20 = t34.
      ENDIF.
      DATA(t44) = t20.
      t19 = t44.
      t16 = t19.
      DATA(t45) = strlen( t16 ).
      t15 = t16.
      IF t15 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t15 TO UPPER CASE.
      ELSE.
        t15 = zlnt_runtime_uppe_91169605024d=>full( t15 ).
      ENDIF.
      DATA t46 TYPE string.
      DATA(t47) = t1.
      DATA(t48) = strlen( t47 ).
      t46 = t47.
      IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t46 TO UPPER CASE.
      ELSE.
        t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
      ENDIF.
      t14 = xsdbool( t15 = t46 ).
      IF t14 = abap_true.
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        DATA t51 TYPE REF TO zcl_lnt_alias.
        DATA(t52) = t12.
        t51 = t52.
        DATA t53 TYPE string.
        DATA(t54) = t51.
        t53 = t54->component.
        t50 = t53.
        t49 = t50.
        DATA t55 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t56.
        DATA(t57) = VALUE string( ).
        DATA(t58) = VALUE string( ).
        DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t60) = t49.
        DATA(t61) = |~|.
        DATA(t62) = strlen( t60 ).
        DATA t63 TYPE i.
        DATA(t64) = VALUE i( ).
        DATA(t65) = VALUE i( ).
        DATA t66 TYPE i.
        DATA(t67) = VALUE string( ).
        CREATE OBJECT t59.
        t66 = strlen( t61 ).
        t63 = 0.
        IF t66 = 0.
          WHILE t63 < t62.
            t67 = t60+t63(1).
            APPEND t67 TO t59->items.
            t63 = t63 + 1.
          ENDWHILE.
        ELSE.
          WHILE t63 <= t62.
            FIND FIRST OCCURRENCE OF t61 IN SECTION OFFSET t63 OF t60 MATCH OFFSET t64.
            IF sy-subrc = 0.
              t65 = t64 - t63.
            ELSE.
              t64 = -1.
              t65 = t62 - t63.
            ENDIF.
            CLEAR t67.
            IF t65 > 0.
              t67 = t60+t63(t65).
            ENDIF.
            APPEND t67 TO t59->items.
            IF t64 < 0.
              EXIT.
            ENDIF.
            t63 = t64 + t66.
          ENDWHILE.
        ENDIF.
        READ TABLE t59->items INDEX 1 INTO t58.
        t57 = t58.
        DATA(t68) = VALUE string( ).
        DATA(t69) = VALUE string( ).
        DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t71) = t49.
        DATA(t72) = |~|.
        DATA(t73) = strlen( t71 ).
        DATA t74 TYPE i.
        DATA(t75) = VALUE i( ).
        DATA(t76) = VALUE i( ).
        DATA t77 TYPE i.
        DATA(t78) = VALUE string( ).
        CREATE OBJECT t70.
        t77 = strlen( t72 ).
        t74 = 0.
        IF t77 = 0.
          WHILE t74 < t73.
            t78 = t71+t74(1).
            APPEND t78 TO t70->items.
            t74 = t74 + 1.
          ENDWHILE.
        ELSE.
          WHILE t74 <= t73.
            FIND FIRST OCCURRENCE OF t72 IN SECTION OFFSET t74 OF t71 MATCH OFFSET t75.
            IF sy-subrc = 0.
              t76 = t75 - t74.
            ELSE.
              t75 = -1.
              t76 = t73 - t74.
            ENDIF.
            CLEAR t78.
            IF t76 > 0.
              t78 = t71+t74(t76).
            ENDIF.
            APPEND t78 TO t70->items.
            IF t75 < 0.
              EXIT.
            ENDIF.
            t74 = t75 + t77.
          ENDWHILE.
        ENDIF.
        READ TABLE t70->items INDEX 2 INTO t69.
        t68 = t69.
        DATA t79 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t79.
        DATA t80 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t80.
        DATA t81 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_current_scope.
        DATA(t83) = me->scope.
        t82 = t83.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA(t86) = abap_true.
        IF t86 = abap_true.
          DATA(t87) = t57.
          DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t88->has = abap_true.
          t88->value = t87.
          t85 = t88.
        ELSE.
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t89.
          t85 = t89.
        ENDIF.
        t84 = t85.
        DATA t90 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t90.
        DATA(t91) = VALUE abap_bool( ).
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t93) = t84.
        t92 = t93.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        t94 = t95.
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = t92.
        IF t97 IS INITIAL.
          t96 = abap_true.
        ELSEIF t97->has = abap_false.
          t96 = abap_true.
        ENDIF.
        t91 = t96.
        IF t91 = abap_true.
          DATA t98 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t98.
          t90 = t98.
        ELSE.
          DATA t99 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t99.
          DATA t100 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t100.
          DATA t101 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t101.
          DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t103 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t104) = t82.
          t103 = t104->current.
          t102 = t103.
          DATA t105 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t105.
          DATA(t106) = VALUE abap_bool( ).
          DATA(t107) = t102.
          IF t107 IS INITIAL.
            t106 = abap_true.
          ENDIF.
          IF t106 = abap_true.
            DATA t108 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t108.
            t105 = t108.
          ELSE.
            DATA t109 TYPE REF TO zif_lnt_interface_definition.
            DATA t110 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t111) = t102.
            t110 = t111.
            DATA t112 TYPE string.
            DATA(t113) = t84.
            t112 = t113->value.
            t109 = t110->find_interface_definition( i_name = t112 ).
            t105 = t109.
          ENDIF.
          t101 = t105.
          t100 = t101.
          DATA t114 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t114.
          DATA t115 TYPE abap_bool.
          DATA(t116) = t100.
          t115 = xsdbool( t116 IS BOUND ).
          IF t115 = abap_true.
            DATA t117 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t117.
            DATA(t118) = abap_true.
            IF t118 = abap_true.
              DATA t119 TYPE REF TO zif_lnt_interface_definition.
              DATA(t120) = t100.
              t119 = t120.
              t117 = t119.
            ELSE.
              DATA t121 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t121.
              t117 = t121.
            ENDIF.
            t114 = t117.
          ELSE.
            DATA t122 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t122.
            DATA t123 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t123.
            DATA t124 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t124.
            DATA t125 TYPE REF TO zif_lnt_object.
            CLEAR t125.
            DATA t126 TYPE REF TO zif_lnt_registry.
            DATA(t127) = t82.
            t126 = t127->reg.
            DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t128.
            DATA(t129) = abap_true.
            IF t129 = abap_true.
              DATA(t130) = |INTF|.
              DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t131->has = abap_true.
              t131->value = t130.
              t128 = t131.
            ELSE.
              DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t132.
              t128 = t132.
            ENDIF.
            DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t133.
            DATA(t134) = abap_true.
            IF t134 = abap_true.
              DATA t135 TYPE string.
              DATA(t136) = t84.
              t135 = t136->value.
              DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t137->has = abap_true.
              t137->value = t135.
              t133 = t137.
            ELSE.
              DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t138.
              t133 = t138.
            ENDIF.
            t125 = t126->get_object( i_type_9913 = t128 i_name = t133 ).
            DATA t139 TYPE REF TO object.
            t139 = t125.
            t124 ?= t139.
            t123 = t124.
            DATA t140 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t140.
            DATA t141 TYPE abap_bool.
            DATA(t142) = t123.
            t141 = xsdbool( t142 IS BOUND ).
            IF t141 = abap_true.
              DATA t143 TYPE REF TO zif_lnt_interface_definition.
              DATA t144 TYPE REF TO zcl_lnt_ob_interface.
              DATA t145 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t146) = t123.
              t145 = t146.
              t144 = t145.
              DATA t147 TYPE REF TO zif_lnt_interface_definition.
              DATA(t148) = t144.
              t147 = t148->def.
              t143 = t147.
              t140 = t143.
            ELSE.
              DATA t149 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t149.
              t140 = t149.
            ENDIF.
            t122 = t140.
            t114 = t122.
          ENDIF.
          t99 = t114.
          t90 = t99.
        ENDIF.
        t81 = t90.
        t80 = t81.
        DATA t150 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t150.
        DATA t151 TYPE abap_bool.
        DATA(t152) = t80.
        t151 = xsdbool( t152 IS BOUND ).
        IF t151 = abap_true.
          DATA t153 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t153.
          DATA t154 TYPE REF TO zif_lnt_method_definition.
          CLEAR t154.
          DATA t155 TYPE REF TO zif_lnt_method_definition.
          CLEAR t155.
          DATA t156 TYPE REF TO zif_lnt_method_definitions.
          DATA t157 TYPE REF TO zif_lnt_interface_definition.
          DATA(t158) = t80.
          t157 = t158.
          t156 = t157->get_method_definitions( ).
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA(t160) = abap_true.
          IF t160 = abap_true.
            DATA(t161) = t68.
            DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t162->has = abap_true.
            t162->value = t161.
            t159 = t162.
          ELSE.
            DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t163.
            t159 = t163.
          ENDIF.
          t155 = t156->get_by_name( i_name = t159 ).
          t154 = t155.
          DATA t164 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t164.
          DATA t165 TYPE abap_bool.
          DATA(t166) = t154.
          t165 = xsdbool( t166 IS BOUND ).
          IF t165 = abap_true.
            DATA t167 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t167.
            DATA(t168) = abap_true.
            IF t168 = abap_true.
              DATA t169 TYPE REF TO zcl_lnt_shape_a38e878f.
              CLEAR t169.
              DATA t170 TYPE REF TO zif_lnt_method_definition.
              CLEAR t170.
              DATA(t171) = abap_true.
              IF t171 = abap_true.
                DATA t172 TYPE REF TO zif_lnt_method_definition.
                DATA(t173) = t154.
                t172 = t173.
                t170 = t172.
              ELSE.
                DATA t174 TYPE REF TO zif_lnt_method_definition.
                CLEAR t174.
                t170 = t174.
              ENDIF.
              DATA t175 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t175.
              DATA(t176) = abap_true.
              IF t176 = abap_true.
                DATA t177 TYPE REF TO zif_lnt_interface_definition.
                DATA(t178) = t80.
                t177 = t178.
                t175 = t177.
              ELSE.
                DATA t179 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t179.
                t175 = t179.
              ENDIF.
              t169 = NEW zcl_lnt_shape_a38e878f( i_method = t170 i_def = t175 ).
              t167 = t169.
            ELSE.
              DATA t180 TYPE REF TO zcl_lnt_shape_a38e878f.
              CLEAR t180.
              t167 = t180.
            ENDIF.
            t164 = t167.
          ELSE.
            DATA t181 TYPE REF TO zcl_lnt_shape_a38e878f.
            DATA(t182) = t68.
            DATA t183 TYPE REF TO zif_lnt_interface_definition.
            DATA(t184) = t80.
            t183 = t184.
            t181 = me->find_method_via_alias( i_method_name = t182 i_def = t183 ).
            t164 = t181.
          ENDIF.
          t153 = t164.
          t150 = t153.
        ELSE.
          DATA t185 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t185.
          t150 = t185.
        ENDIF.
        t79 = t150.
        t56 = t79.
        t55 = t56.
        DATA t186 TYPE abap_bool.
        DATA(t187) = t55.
        t186 = xsdbool( t187 IS BOUND ).
        IF t186 = abap_true.
          DATA t188 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t188.
          DATA(t189) = abap_true.
          IF t189 = abap_true.
            DATA t190 TYPE REF TO zcl_lnt_shape_a38e878f.
            DATA(t191) = t55.
            t190 = t191.
            t188 = t190.
          ELSE.
            DATA t192 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t192.
            t188 = t192.
          ENDIF.
          result = t188.
          RETURN.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t193 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t193.
    result = t193.

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
      DATA(t11) = t2.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t13.
      t10 = NEW zcl_lnt_ireference_extras( i_oo_name = t11 i_oo_type = t12 i_found_qualified = t13 ).
      result = t10.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_interface_definition.
    DATA t17 TYPE REF TO zif_lnt_interface_definition.
    DATA(t18) = t1.
    t17 = t18.
    t16 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t16.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE string.
      DATA(t24) = t16.
      t23 = t24->get_name( ).
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t23.
      t19 = t25.
    ENDIF.
    t15 = t19.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA(t28) = VALUE string( ).
      DATA t29 TYPE abap_bool.
      DATA(t30) = t1.
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_ty_class_definition ).
      IF t29 = abap_true.
        DATA(t31) = |CLAS|.
        t28 = t31.
      ELSE.
        DATA(t32) = |INTF|.
        t28 = t32.
      ENDIF.
      DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t33->has = abap_true.
      t33->value = t28.
      t26 = t33.
    ELSE.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      t26 = t34.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t35.
    t14 = NEW zcl_lnt_ireference_extras( i_oo_name = t15 i_oo_type = t26 i_found_qualified = t35 ).
    result = t14.

  ENDMETHOD.

  METHOD find_class_name.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO zif_lnt_statement.
    DATA(t6) = t1.
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
    t3 = t4.
    IF t4 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE REF TO zif_lnt_statement.
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
      RAISE EXCEPTION t10.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t19) = t1.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687.
    t18 = t19->find_first_expression( i_type_9913 = t20 ).
    t17 = t18.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA(t23) = t17.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
        DATA(t32) = |findClassName, unexpected node type|.
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
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t35 TYPE string.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    DATA t37 TYPE REF TO zcl_lnt_abstract_token.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    DATA(t39) = t17.
    t38 = t39.
    t37 = t38->get_first_token( ).
    t36 = t37.
    DATA t40 TYPE string.
    DATA(t41) = t36.
    t40 = t41->str.
    t35 = t40.
    result = t35.

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
    LOOP AT t12->items INTO t14.
      t13 ?= t14.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t19.
      DATA(t20) = me->scope.
      t19 = t20.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA(t24) = VALUE string( ).
        DATA(t25) = t13.
        t24 = t25->name.
        DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t26->has = abap_true.
        t26->value = t24.
        t22 = t26.
      ELSE.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t27.
        t22 = t27.
      ENDIF.
      t21 = t22.
      DATA t28 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = t21.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
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
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t41.
        DATA(t42) = t19.
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
          CLEAR t47.
          DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t48.
          DATA(t49) = t40.
          t48 = t49.
          DATA(t50) = VALUE string( ).
          DATA(t51) = t21.
          t50 = t51->value.
          t47 = t48->find_interface_definition( i_name = t50 ).
          t43 = t47.
        ENDIF.
        t39 = t43.
        t38 = t39.
        DATA t52 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t52.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = t38.
        t53 = xsdbool( t54 IS BOUND ).
        IF t53 = abap_true.
          DATA t55 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t55.
          DATA(t56) = abap_true.
          IF t56 = abap_true.
            DATA t57 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t57.
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
          CLEAR t64.
          DATA(t65) = t19.
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
            DATA(t73) = VALUE string( ).
            DATA(t74) = t21.
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
          CLEAR t77.
          t77 = t63.
          t62 ?= t77.
          t61 = t62.
          DATA t78 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t78.
          DATA(t79) = VALUE abap_bool( ).
          DATA(t80) = t61.
          t79 = xsdbool( t80 IS BOUND ).
          IF t79 = abap_true.
            DATA t81 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t81.
            DATA t82 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t82.
            DATA t83 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t83.
            DATA(t84) = t61.
            t83 = t84.
            t82 = t83.
            DATA t85 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t85.
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
      t18 = t28.
      t17 = t18.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t88.
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = t17.
      IF t90 IS INITIAL.
        t89 = abap_true.
      ENDIF.
      IF t89 = abap_true.
        DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t91.
        t88 = t91.
      ELSE.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t92.
        DATA t93 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t93.
        DATA(t94) = t17.
        t93 = t94.
        t92 = t93->get_implementing( ).
        t88 = t92.
      ENDIF.
      t16 = t88.
      t15 = t16.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = t15.
      t95 = xsdbool( t96 IS BOUND ).
      IF t95 = abap_true.
        DATA(t97) = VALUE i( ).
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t98.
        DATA(t99) = t15.
        t98 = t99.
        DATA t100 TYPE REF TO zcl_lnt_iimplementing.
        CLEAR t100.
        DATA t101 TYPE REF TO object.
        CLEAR t101.
        LOOP AT t98->items INTO t101.
          t100 ?= t101.
          DATA(t102) = t2.
          DATA(t103) = t100.
          APPEND t103 TO t102->items.
        ENDLOOP.
        DATA(t104) = VALUE i( ).
        DATA(t105) = t2.
        t104 = lines( t105->items ).
        t97 = t104.
      ENDIF.
    ENDLOOP.
    DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t107.
    DATA(t108) = t1.
    t107 = t108->get_super_class( ).
    t106 = t107.
    DATA(t109) = VALUE abap_bool( ).
    DATA(t110) = t106.
    IF t110 IS BOUND.
      IF t110->has = abap_true.
        t109 = xsdbool( strlen( t110->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t109 = abap_true.
      DATA t111 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t111.
      TRY.
          DATA(t112) = VALUE i( ).
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t113.
          DATA t114 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t114.
          DATA t115 TYPE REF TO zif_lnt_class_definition.
          CLEAR t115.
          DATA(t116) = VALUE string( ).
          DATA(t117) = t106.
          t116 = t117->value.
          t115 = me->find_super_definition( i_name = t116 ).
          t114 ?= t115.
          t113 = me->find_interfaces( i_cd = t114 ).
          DATA t118 TYPE REF TO zcl_lnt_iimplementing.
          CLEAR t118.
          DATA t119 TYPE REF TO object.
          CLEAR t119.
          LOOP AT t113->items INTO t119.
            t118 ?= t119.
            DATA(t120) = t2.
            DATA(t121) = t118.
            APPEND t121 TO t120->items.
          ENDLOOP.
          DATA(t122) = VALUE i( ).
          DATA(t123) = t2.
          t122 = lines( t123->items ).
          t112 = t122.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t111.
          DATA(t124) = t111->payload.
      ENDTRY.
    ENDIF.
    DATA(t125) = t2.
    result = t125.

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
    LOOP AT t7->items INTO t9.
      DATA(t10) = t5.
      DATA t11 TYPE string.
      DATA(t12) = t9.
      DATA(t13) = strlen( t12 ).
      t11 = t12.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      APPEND t11 TO t10->items.
    ENDLOOP.
    DATA(t14) = t5.
    t4 = t14.
    t3 = t4.
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zif_lnt_class_definition.
    DATA(t17) = t1.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t19) = t3.
    t18 = t19.
    DATA t20 TYPE string.
    DATA(t21) = t2.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t18.
    DATA t25 TYPE string.
    DATA(t26) = t20.
    DATA(t27) = strlen( t26 ).
    t25 = t26.
    IF t25 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t25 TO UPPER CASE.
    ELSE.
      t25 = zlnt_runtime_uppe_91169605024d=>full( t25 ).
    ENDIF.
    t23 = t24->includes( p0 = t25 ).
    t22 = t23.
    IF t23 = abap_false.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zcl_lnt_current_scope.
      DATA(t30) = me->scope.
      t29 = t30.
      DATA t31 TYPE string.
      DATA t32 TYPE string.
      DATA(t33) = t16.
      t32 = t33->get_name( ).
      t31 = t32.
      DATA t34 TYPE string.
      DATA(t35) = t20.
      t34 = t35.
      DATA(t36) = VALUE abap_bool( ).
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
      DATA(t41) = t29.
      t40 = t41->local_friends.
      DATA t42 TYPE string.
      DATA(t43) = t31.
      DATA(t44) = strlen( t43 ).
      t42 = t43.
      IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t42 TO UPPER CASE.
      ELSE.
        t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
      ENDIF.
      t39 = t40->get( p0 = t42 ).
      t38 = t39.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = t38.
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      IF t46 = abap_true.
        DATA t48 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t48.
        t45 = t48.
      ELSE.
        DATA(t49) = VALUE abap_bool( ).
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t51) = t38.
        t50 = t51.
        DATA t52 TYPE string.
        DATA(t53) = t34.
        DATA(t54) = strlen( t53 ).
        t52 = t53.
        IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t52 TO UPPER CASE.
        ELSE.
          t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
        ENDIF.
        t49 = t50->includes( p0 = t52 ).
        DATA(t55) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t55->has = abap_true.
        t55->value = t49.
        t45 = t55.
      ENDIF.
      t37 = t45.
      DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t56.
      DATA(t57) = abap_true.
      IF t57 = abap_true.
        DATA(t58) = abap_true.
        DATA(t59) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t59->has = abap_true.
        t59->value = t58.
        t56 = t59.
      ELSE.
        DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t60.
        t56 = t60.
      ENDIF.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = VALUE abap_bool( ).
      IF t37 IS BOUND.
        t61 = t37->has.
      ENDIF.
      IF t56 IS BOUND.
        t62 = t56->has.
      ENDIF.
      IF t61 = t62.
        IF t61 = abap_false.
          t36 = abap_true.
        ELSEIF t37->value = t56->value.
          t36 = abap_true.
        ENDIF.
      ENDIF.
      t28 = t36.
      t22 = t28.
    ENDIF.
    t15 = t22.
    IF t15 = abap_true.
      DATA(t63) = abap_true.
      result = t63.
      RETURN.
    ENDIF.
    DATA t64 TYPE REF TO zif_lnt_class_definition.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_class_definition.
    CLEAR t65.
    DATA t66 TYPE REF TO zcl_lnt_current_scope.
    DATA(t67) = me->scope.
    t66 = t67.
    DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t69.
    DATA(t70) = abap_true.
    IF t70 = abap_true.
      DATA(t71) = t2.
      DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t72->has = abap_true.
      t72->value = t71.
      t69 = t72.
    ELSE.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      t69 = t73.
    ENDIF.
    t68 = t69.
    DATA t74 TYPE REF TO zif_lnt_class_definition.
    CLEAR t74.
    DATA(t75) = VALUE abap_bool( ).
    DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t77) = t68.
    t76 = t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    t78 = t79.
    DATA(t80) = VALUE abap_bool( ).
    DATA(t81) = t76.
    IF t81 IS INITIAL.
      t80 = abap_true.
    ELSEIF t81->has = abap_false.
      t80 = abap_true.
    ENDIF.
    t75 = t80.
    IF t75 = abap_true.
      DATA t82 TYPE REF TO zif_lnt_class_definition.
      CLEAR t82.
      t74 = t82.
    ELSE.
      DATA t83 TYPE REF TO zif_lnt_class_definition.
      CLEAR t83.
      DATA t84 TYPE REF TO zif_lnt_class_definition.
      CLEAR t84.
      DATA t85 TYPE REF TO zif_lnt_class_definition.
      CLEAR t85.
      DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t87 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t88) = t66.
      t87 = t88->current.
      t86 = t87.
      DATA t89 TYPE REF TO zif_lnt_class_definition.
      CLEAR t89.
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = t86.
      IF t91 IS INITIAL.
        t90 = abap_true.
      ENDIF.
      IF t90 = abap_true.
        DATA t92 TYPE REF TO zif_lnt_class_definition.
        CLEAR t92.
        t89 = t92.
      ELSE.
        DATA t93 TYPE REF TO zif_lnt_class_definition.
        DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t95) = t86.
        t94 = t95.
        DATA t96 TYPE string.
        DATA(t97) = t68.
        t96 = t97->value.
        t93 = t94->find_class_definition( i_name = t96 ).
        t89 = t93.
      ENDIF.
      t85 = t89.
      t84 = t85.
      DATA t98 TYPE REF TO zif_lnt_class_definition.
      CLEAR t98.
      DATA t99 TYPE abap_bool.
      DATA(t100) = t84.
      t99 = xsdbool( t100 IS BOUND ).
      IF t99 = abap_true.
        DATA t101 TYPE REF TO zif_lnt_class_definition.
        CLEAR t101.
        DATA(t102) = abap_true.
        IF t102 = abap_true.
          DATA t103 TYPE REF TO zif_lnt_class_definition.
          DATA(t104) = t84.
          t103 = t104.
          t101 = t103.
        ELSE.
          DATA t105 TYPE REF TO zif_lnt_class_definition.
          CLEAR t105.
          t101 = t105.
        ENDIF.
        t98 = t101.
      ELSE.
        DATA t106 TYPE REF TO zif_lnt_class_definition.
        CLEAR t106.
        DATA t107 TYPE REF TO zcl_lnt_class.
        CLEAR t107.
        DATA t108 TYPE REF TO zcl_lnt_class.
        CLEAR t108.
        DATA t109 TYPE REF TO zif_lnt_object.
        CLEAR t109.
        DATA t110 TYPE REF TO zif_lnt_registry.
        DATA(t111) = t66.
        t110 = t111->reg.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = abap_true.
        IF t113 = abap_true.
          DATA(t114) = |CLAS|.
          DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t115->has = abap_true.
          t115->value = t114.
          t112 = t115.
        ELSE.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          t112 = t116.
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA(t118) = abap_true.
        IF t118 = abap_true.
          DATA t119 TYPE string.
          DATA(t120) = t68.
          t119 = t120->value.
          DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t121->has = abap_true.
          t121->value = t119.
          t117 = t121.
        ELSE.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          t117 = t122.
        ENDIF.
        t109 = t110->get_object( i_type_9913 = t112 i_name = t117 ).
        DATA t123 TYPE REF TO object.
        t123 = t109.
        t108 ?= t123.
        t107 = t108.
        DATA t124 TYPE REF TO zif_lnt_class_definition.
        CLEAR t124.
        DATA t125 TYPE abap_bool.
        DATA(t126) = t107.
        t125 = xsdbool( t126 IS BOUND ).
        IF t125 = abap_true.
          DATA t127 TYPE REF TO zif_lnt_class_definition.
          DATA t128 TYPE REF TO zcl_lnt_class.
          DATA(t129) = t107.
          t128 = t129.
          t127 = t128->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t124 = t127.
        ELSE.
          DATA t130 TYPE REF TO zif_lnt_class_definition.
          CLEAR t130.
          t124 = t130.
        ENDIF.
        t106 = t124.
        t98 = t106.
      ENDIF.
      t83 = t98.
      t74 = t83.
    ENDIF.
    t65 = t74.
    t64 = t65.
    DATA(t131) = VALUE abap_bool( ).
    DATA t132 TYPE REF TO zif_lnt_class_definition.
    DATA(t133) = t64.
    t132 = t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    t134 = t135.
    DATA(t136) = VALUE abap_bool( ).
    DATA(t137) = t132.
    IF t137 IS INITIAL.
      t136 = abap_true.
    ENDIF.
    t131 = t136.
    IF t131 = abap_true.
      DATA(t138) = abap_false.
      result = t138.
      RETURN.
    ENDIF.
    DATA(t139) = VALUE abap_bool( ).
    DATA t140 TYPE abap_bool.
    DATA(t141) = abap_false.
    t140 = t141.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t143 TYPE REF TO zif_lnt_interface_definition.
    DATA t144 TYPE REF TO zif_lnt_class_definition.
    DATA(t145) = t64.
    t144 = t145.
    t143 ?= t144.
    t142 = me->find_interfaces( i_cd = t143 ).
    DATA t146 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t146.
    DATA t147 TYPE REF TO object.
    CLEAR t147.
    LOOP AT t142->items INTO t147.
      t146 ?= t147.
      DATA(t148) = VALUE abap_bool( ).
      DATA(t149) = t3.
      DATA t150 TYPE string.
      DATA t151 TYPE string.
      DATA(t152) = t146.
      t151 = t152->name.
      DATA(t153) = strlen( t151 ).
      t150 = t151.
      IF t150 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t150 TO UPPER CASE.
      ELSE.
        t150 = zlnt_runtime_uppe_91169605024d=>full( t150 ).
      ENDIF.
      t148 = t149->includes( p0 = t150 ).
      IF t148 = abap_true.
        DATA(t154) = abap_true.
        t140 = t154.
        EXIT.
      ENDIF.
    ENDLOOP.
    DATA(t155) = t140.
    t139 = t155.
    IF t139 = abap_true.
      DATA(t156) = abap_true.
      result = t156.
      RETURN.
    ENDIF.
    DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t159 TYPE REF TO zif_lnt_class_definition.
    DATA(t160) = t64.
    t159 = t160.
    t158 = t159->get_super_class( ).
    t157 = t158.
    DO.
      DATA(t161) = VALUE abap_bool( ).
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t163) = t157.
      t162 = t163.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      t164 = t165.
      DATA(t166) = VALUE abap_bool( ).
      DATA(t167) = VALUE abap_bool( ).
      DATA(t168) = t162.
      IF t168 IS INITIAL.
        t167 = abap_true.
      ELSEIF t168->has = abap_false.
        t167 = abap_true.
      ENDIF.
      t166 = xsdbool( t167 = abap_false ).
      t161 = t166.
      IF t161 = abap_false.
        EXIT.
      ENDIF.
      DATA(t169) = VALUE abap_bool( ).
      DATA t170 TYPE REF TO zif_lnt_class_definition.
      DATA(t171) = t1.
      t170 = t171.
      DATA t172 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t173) = t3.
      t172 = t173.
      DATA t174 TYPE string.
      DATA t175 TYPE string.
      DATA(t176) = t157.
      t175 = t176->value.
      t174 = t175.
      DATA(t177) = VALUE abap_bool( ).
      DATA(t178) = VALUE abap_bool( ).
      DATA(t179) = t172.
      DATA t180 TYPE string.
      DATA(t181) = t174.
      DATA(t182) = strlen( t181 ).
      t180 = t181.
      IF t180 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t180 TO UPPER CASE.
      ELSE.
        t180 = zlnt_runtime_uppe_91169605024d=>full( t180 ).
      ENDIF.
      t178 = t179->includes( p0 = t180 ).
      t177 = t178.
      IF t178 = abap_false.
        DATA(t183) = VALUE abap_bool( ).
        DATA t184 TYPE REF TO zcl_lnt_current_scope.
        DATA(t185) = me->scope.
        t184 = t185.
        DATA t186 TYPE string.
        DATA t187 TYPE string.
        DATA(t188) = t170.
        t187 = t188->get_name( ).
        t186 = t187.
        DATA t189 TYPE string.
        DATA(t190) = t174.
        t189 = t190.
        DATA(t191) = VALUE abap_bool( ).
        DATA t192 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t192.
        DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t193.
        DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t194.
        DATA t195 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
        DATA(t196) = t184.
        t195 = t196->local_friends.
        DATA t197 TYPE string.
        DATA(t198) = t186.
        DATA(t199) = strlen( t198 ).
        t197 = t198.
        IF t197 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t197 TO UPPER CASE.
        ELSE.
          t197 = zlnt_runtime_uppe_91169605024d=>full( t197 ).
        ENDIF.
        t194 = t195->get( p0 = t197 ).
        t193 = t194.
        DATA t200 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t200.
        DATA(t201) = VALUE abap_bool( ).
        DATA(t202) = t193.
        IF t202 IS INITIAL.
          t201 = abap_true.
        ENDIF.
        IF t201 = abap_true.
          DATA t203 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t203.
          t200 = t203.
        ELSE.
          DATA(t204) = VALUE abap_bool( ).
          DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t206) = t193.
          t205 = t206.
          DATA t207 TYPE string.
          DATA(t208) = t189.
          DATA(t209) = strlen( t208 ).
          t207 = t208.
          IF t207 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t207 TO UPPER CASE.
          ELSE.
            t207 = zlnt_runtime_uppe_91169605024d=>full( t207 ).
          ENDIF.
          t204 = t205->includes( p0 = t207 ).
          DATA(t210) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t210->has = abap_true.
          t210->value = t204.
          t200 = t210.
        ENDIF.
        t192 = t200.
        DATA t211 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t211.
        DATA(t212) = abap_true.
        IF t212 = abap_true.
          DATA(t213) = abap_true.
          DATA(t214) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t214->has = abap_true.
          t214->value = t213.
          t211 = t214.
        ELSE.
          DATA t215 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t215.
          t211 = t215.
        ENDIF.
        DATA(t216) = VALUE abap_bool( ).
        DATA(t217) = VALUE abap_bool( ).
        IF t192 IS BOUND.
          t216 = t192->has.
        ENDIF.
        IF t211 IS BOUND.
          t217 = t211->has.
        ENDIF.
        IF t216 = t217.
          IF t216 = abap_false.
            t191 = abap_true.
          ELSEIF t192->value = t211->value.
            t191 = abap_true.
          ENDIF.
        ENDIF.
        t183 = t191.
        t177 = t183.
      ENDIF.
      t169 = t177.
      IF t169 = abap_true.
        DATA(t218) = abap_true.
        result = t218.
        RETURN.
      ENDIF.
      DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t219.
      DATA t220 TYPE REF TO zif_lnt_class_definition.
      CLEAR t220.
      DATA t221 TYPE REF TO zif_lnt_class_definition.
      CLEAR t221.
      DATA t222 TYPE REF TO zcl_lnt_current_scope.
      DATA(t223) = me->scope.
      t222 = t223.
      DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t224.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t225.
      DATA(t226) = abap_true.
      IF t226 = abap_true.
        DATA t227 TYPE string.
        DATA(t228) = t157.
        t227 = t228->value.
        DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t229->has = abap_true.
        t229->value = t227.
        t225 = t229.
      ELSE.
        DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t230.
        t225 = t230.
      ENDIF.
      t224 = t225.
      DATA t231 TYPE REF TO zif_lnt_class_definition.
      CLEAR t231.
      DATA(t232) = VALUE abap_bool( ).
      DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t234) = t224.
      t233 = t234.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      t235 = t236.
      DATA(t237) = VALUE abap_bool( ).
      DATA(t238) = t233.
      IF t238 IS INITIAL.
        t237 = abap_true.
      ELSEIF t238->has = abap_false.
        t237 = abap_true.
      ENDIF.
      t232 = t237.
      IF t232 = abap_true.
        DATA t239 TYPE REF TO zif_lnt_class_definition.
        CLEAR t239.
        t231 = t239.
      ELSE.
        DATA t240 TYPE REF TO zif_lnt_class_definition.
        CLEAR t240.
        DATA t241 TYPE REF TO zif_lnt_class_definition.
        CLEAR t241.
        DATA t242 TYPE REF TO zif_lnt_class_definition.
        CLEAR t242.
        DATA t243 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t244 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t245) = t222.
        t244 = t245->current.
        t243 = t244.
        DATA t246 TYPE REF TO zif_lnt_class_definition.
        CLEAR t246.
        DATA(t247) = VALUE abap_bool( ).
        DATA(t248) = t243.
        IF t248 IS INITIAL.
          t247 = abap_true.
        ENDIF.
        IF t247 = abap_true.
          DATA t249 TYPE REF TO zif_lnt_class_definition.
          CLEAR t249.
          t246 = t249.
        ELSE.
          DATA t250 TYPE REF TO zif_lnt_class_definition.
          DATA t251 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t252) = t243.
          t251 = t252.
          DATA t253 TYPE string.
          DATA(t254) = t224.
          t253 = t254->value.
          t250 = t251->find_class_definition( i_name = t253 ).
          t246 = t250.
        ENDIF.
        t242 = t246.
        t241 = t242.
        DATA t255 TYPE REF TO zif_lnt_class_definition.
        CLEAR t255.
        DATA t256 TYPE abap_bool.
        DATA(t257) = t241.
        t256 = xsdbool( t257 IS BOUND ).
        IF t256 = abap_true.
          DATA t258 TYPE REF TO zif_lnt_class_definition.
          CLEAR t258.
          DATA(t259) = abap_true.
          IF t259 = abap_true.
            DATA t260 TYPE REF TO zif_lnt_class_definition.
            DATA(t261) = t241.
            t260 = t261.
            t258 = t260.
          ELSE.
            DATA t262 TYPE REF TO zif_lnt_class_definition.
            CLEAR t262.
            t258 = t262.
          ENDIF.
          t255 = t258.
        ELSE.
          DATA t263 TYPE REF TO zif_lnt_class_definition.
          CLEAR t263.
          DATA t264 TYPE REF TO zcl_lnt_class.
          CLEAR t264.
          DATA t265 TYPE REF TO zcl_lnt_class.
          CLEAR t265.
          DATA t266 TYPE REF TO zif_lnt_object.
          CLEAR t266.
          DATA t267 TYPE REF TO zif_lnt_registry.
          DATA(t268) = t222.
          t267 = t268->reg.
          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t269.
          DATA(t270) = abap_true.
          IF t270 = abap_true.
            DATA(t271) = |CLAS|.
            DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t272->has = abap_true.
            t272->value = t271.
            t269 = t272.
          ELSE.
            DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t273.
            t269 = t273.
          ENDIF.
          DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t274.
          DATA(t275) = abap_true.
          IF t275 = abap_true.
            DATA t276 TYPE string.
            DATA(t277) = t224.
            t276 = t277->value.
            DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t278->has = abap_true.
            t278->value = t276.
            t274 = t278.
          ELSE.
            DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t279.
            t274 = t279.
          ENDIF.
          t266 = t267->get_object( i_type_9913 = t269 i_name = t274 ).
          DATA t280 TYPE REF TO object.
          t280 = t266.
          t265 ?= t280.
          t264 = t265.
          DATA t281 TYPE REF TO zif_lnt_class_definition.
          CLEAR t281.
          DATA t282 TYPE abap_bool.
          DATA(t283) = t264.
          t282 = xsdbool( t283 IS BOUND ).
          IF t282 = abap_true.
            DATA t284 TYPE REF TO zif_lnt_class_definition.
            DATA t285 TYPE REF TO zcl_lnt_class.
            DATA(t286) = t264.
            t285 = t286.
            t284 = t285->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t281 = t284.
          ELSE.
            DATA t287 TYPE REF TO zif_lnt_class_definition.
            CLEAR t287.
            t281 = t287.
          ENDIF.
          t263 = t281.
          t255 = t263.
        ENDIF.
        t240 = t255.
        t231 = t240.
      ENDIF.
      t221 = t231.
      t220 = t221.
      DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t288.
      DATA(t289) = VALUE abap_bool( ).
      DATA(t290) = t220.
      IF t290 IS INITIAL.
        t289 = abap_true.
      ENDIF.
      IF t289 = abap_true.
        DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t291.
        t288 = t291.
      ELSE.
        DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t293 TYPE REF TO zif_lnt_class_definition.
        DATA(t294) = t220.
        t293 = t294.
        t292 = t293->get_super_class( ).
        t288 = t292.
      ENDIF.
      t219 = t288.
      t157 = t219.
    ENDDO.
    DATA(t295) = abap_false.
    result = t295.

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
      DATA t36 TYPE REF TO zif_lnt_event_definition.
      DATA t37 TYPE REF TO zif_lnt_event_definition.
      DATA(t38) = t21.
      DATA(t39) = t28.
      DATA t40 TYPE REF TO object.
      t40 = t38->get( p0 = t39 ).
      t37 ?= t40.
      t36 = t37.
      t35 = t36.
      DATA(t41) = VALUE abap_bool( ).
      DATA t42 TYPE string.
      DATA t43 TYPE string.
      DATA(t44) = t35.
      t43 = t44->get_name( ).
      DATA(t45) = strlen( t43 ).
      t42 = t43.
      IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t42 TO UPPER CASE.
      ELSE.
        t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
      ENDIF.
      DATA t46 TYPE string.
      DATA t47 TYPE string.
      DATA(t48) = t2.
      t47 = t48->value.
      DATA(t49) = strlen( t47 ).
      t46 = t47.
      IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t46 TO UPPER CASE.
      ELSE.
        t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
      ENDIF.
      t41 = xsdbool( t42 = t46 ).
      IF t41 = abap_true.
        DATA t50 TYPE REF TO zif_lnt_event_definition.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA(t52) = t35.
          t50 = t52.
        ELSE.
          DATA t53 TYPE REF TO zif_lnt_event_definition.
          CLEAR t53.
          t50 = t53.
        ENDIF.
        t30 = t50.
        EXIT.
      ENDIF.
      DATA t54 TYPE i.
      DATA(t55) = t28.
      DATA(t56) = 1.
      t54 = t55 + t56.
      t28 = t54.
    ENDDO.
    DATA(t57) = t30.
    t20 = t57.
    t19 = t20.
    DATA t58 TYPE abap_bool.
    DATA(t59) = t19.
    t58 = xsdbool( t59 IS BOUND ).
    IF t58 = abap_true.
      DATA t60 TYPE REF TO zif_lnt_event_definition.
      CLEAR t60.
      DATA(t61) = abap_true.
      IF t61 = abap_true.
        DATA t62 TYPE REF TO zif_lnt_event_definition.
        DATA(t63) = t19.
        t62 = t63.
        t60 = t62.
      ELSE.
        DATA t64 TYPE REF TO zif_lnt_event_definition.
        CLEAR t64.
        t60 = t64.
      ENDIF.
      result = t60.
      RETURN.
    ENDIF.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = VALUE i( ).
    DATA t67 TYPE string.
    DATA(t68) = t2.
    t67 = t68->value.
    DATA(t69) = |~|.
    DATA(t70) = strlen( t67 ).
    IF t69 IS INITIAL.
      t66 = 0.
    ELSE.
      FIND t69 IN t67 MATCH OFFSET t66.
      IF sy-subrc <> 0.
        t66 = -1.
      ENDIF.
    ENDIF.
    DATA(t71) = 0.
    t65 = xsdbool( t66 >= t71 ).
    IF t65 = abap_true.
      DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t72.
      DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t74 TYPE string.
      DATA(t75) = t2.
      t74 = t75->value.
      DATA(t76) = |~|.
      DATA(t77) = strlen( t74 ).
      DATA t78 TYPE i.
      DATA(t79) = VALUE i( ).
      DATA(t80) = VALUE i( ).
      DATA t81 TYPE i.
      DATA(t82) = VALUE string( ).
      CREATE OBJECT t73.
      t81 = strlen( t76 ).
      t78 = 0.
      IF t81 = 0.
        WHILE t78 < t77.
          t82 = t74+t78(1).
          APPEND t82 TO t73->items.
          t78 = t78 + 1.
        ENDWHILE.
      ELSE.
        WHILE t78 <= t77.
          FIND FIRST OCCURRENCE OF t76 IN SECTION OFFSET t78 OF t74 MATCH OFFSET t79.
          IF sy-subrc = 0.
            t80 = t79 - t78.
          ELSE.
            t79 = -1.
            t80 = t77 - t78.
          ENDIF.
          CLEAR t82.
          IF t80 > 0.
            t82 = t74+t78(t80).
          ENDIF.
          APPEND t82 TO t73->items.
          IF t79 < 0.
            EXIT.
          ENDIF.
          t78 = t79 + t81.
        ENDWHILE.
      ENDIF.
      t72 = t73.
      DATA t83 TYPE string.
      DATA(t84) = VALUE string( ).
      DATA(t85) = t72.
      READ TABLE t85->items INDEX 1 INTO t84.
      t83 = t84.
      DATA t86 TYPE string.
      DATA(t87) = VALUE string( ).
      DATA(t88) = t72.
      READ TABLE t88->items INDEX 2 INTO t87.
      t86 = t87.
      DATA t89 TYPE REF TO zif_lnt_event_definition.
      CLEAR t89.
      DATA t90 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_current_scope.
      DATA(t92) = me->scope.
      t91 = t92.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA(t95) = abap_true.
      IF t95 = abap_true.
        DATA(t96) = t83.
        DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t97->has = abap_true.
        t97->value = t96.
        t94 = t97.
      ELSE.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t94 = t98.
      ENDIF.
      t93 = t94.
      DATA t99 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t99.
      DATA(t100) = VALUE abap_bool( ).
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t102) = t93.
      t101 = t102.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      t103 = t104.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = t101.
      IF t106 IS INITIAL.
        t105 = abap_true.
      ELSEIF t106->has = abap_false.
        t105 = abap_true.
      ENDIF.
      t100 = t105.
      IF t100 = abap_true.
        DATA t107 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t107.
        t99 = t107.
      ELSE.
        DATA t108 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t108.
        DATA t109 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t109.
        DATA t110 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t110.
        DATA t111 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t113) = t91.
        t112 = t113->current.
        t111 = t112.
        DATA t114 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t114.
        DATA(t115) = VALUE abap_bool( ).
        DATA(t116) = t111.
        IF t116 IS INITIAL.
          t115 = abap_true.
        ENDIF.
        IF t115 = abap_true.
          DATA t117 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t117.
          t114 = t117.
        ELSE.
          DATA t118 TYPE REF TO zif_lnt_interface_definition.
          DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t120) = t111.
          t119 = t120.
          DATA t121 TYPE string.
          DATA(t122) = t93.
          t121 = t122->value.
          t118 = t119->find_interface_definition( i_name = t121 ).
          t114 = t118.
        ENDIF.
        t110 = t114.
        t109 = t110.
        DATA t123 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t123.
        DATA t124 TYPE abap_bool.
        DATA(t125) = t109.
        t124 = xsdbool( t125 IS BOUND ).
        IF t124 = abap_true.
          DATA t126 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t126.
          DATA(t127) = abap_true.
          IF t127 = abap_true.
            DATA t128 TYPE REF TO zif_lnt_interface_definition.
            DATA(t129) = t109.
            t128 = t129.
            t126 = t128.
          ELSE.
            DATA t130 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t130.
            t126 = t130.
          ENDIF.
          t123 = t126.
        ELSE.
          DATA t131 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t131.
          DATA t132 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t132.
          DATA t133 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t133.
          DATA t134 TYPE REF TO zif_lnt_object.
          CLEAR t134.
          DATA t135 TYPE REF TO zif_lnt_registry.
          DATA(t136) = t91.
          t135 = t136->reg.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          DATA(t138) = abap_true.
          IF t138 = abap_true.
            DATA(t139) = |INTF|.
            DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t140->has = abap_true.
            t140->value = t139.
            t137 = t140.
          ELSE.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            t137 = t141.
          ENDIF.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t142.
          DATA(t143) = abap_true.
          IF t143 = abap_true.
            DATA t144 TYPE string.
            DATA(t145) = t93.
            t144 = t145->value.
            DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t146->has = abap_true.
            t146->value = t144.
            t142 = t146.
          ELSE.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t147.
            t142 = t147.
          ENDIF.
          t134 = t135->get_object( i_type_9913 = t137 i_name = t142 ).
          DATA t148 TYPE REF TO object.
          t148 = t134.
          t133 ?= t148.
          t132 = t133.
          DATA t149 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t149.
          DATA t150 TYPE abap_bool.
          DATA(t151) = t132.
          t150 = xsdbool( t151 IS BOUND ).
          IF t150 = abap_true.
            DATA t152 TYPE REF TO zif_lnt_interface_definition.
            DATA t153 TYPE REF TO zcl_lnt_ob_interface.
            DATA t154 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t155) = t132.
            t154 = t155.
            t153 = t154.
            DATA t156 TYPE REF TO zif_lnt_interface_definition.
            DATA(t157) = t153.
            t156 = t157->def.
            t152 = t156.
            t149 = t152.
          ELSE.
            DATA t158 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t158.
            t149 = t158.
          ENDIF.
          t131 = t149.
          t123 = t131.
        ENDIF.
        t108 = t123.
        t99 = t108.
      ENDIF.
      t90 = t99.
      DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t159.
      DATA(t160) = abap_true.
      IF t160 = abap_true.
        DATA(t161) = t86.
        DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t162->has = abap_true.
        t162->value = t161.
        t159 = t162.
      ELSE.
        DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t163.
        t159 = t163.
      ENDIF.
      t89 = me->search_event( i_def = t90 i_name = t159 ).
      result = t89.
      RETURN.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t167 TYPE REF TO zif_lnt_interface_definition.
    DATA(t168) = t1.
    t167 = t168.
    t166 = t167->get_aliases( ).
    t165 = t166.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t169.
    DATA t170 TYPE abap_bool.
    DATA(t171) = t165.
    t170 = xsdbool( t171 IS BOUND ).
    IF t170 = abap_true.
      DATA(t172) = t165.
      t169 = t172.
    ELSE.
      DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t173.
      t169 = t173.
    ENDIF.
    t164 = t169.
    DATA t174 TYPE REF TO zcl_lnt_alias.
    CLEAR t174.
    DATA t175 TYPE REF TO object.
    CLEAR t175.
    LOOP AT t164->items INTO t175.
      t174 ?= t175.
      DATA(t176) = VALUE abap_bool( ).
      DATA(t177) = VALUE string( ).
      DATA(t178) = VALUE string( ).
      DATA t179 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t180) = t174.
      t179 = t180.
      DATA(t181) = VALUE string( ).
      DATA t182 TYPE string.
      DATA t183 TYPE string.
      DATA t184 TYPE REF TO zcl_lnt_abstract_token.
      DATA t185 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t186) = t179.
      t185 = t186->token.
      t184 = t185.
      DATA t187 TYPE string.
      DATA(t188) = t184.
      t187 = t188->str.
      t183 = t187.
      t182 = t183.
      DATA(t189) = VALUE abap_bool( ).
      DATA(t190) = VALUE string( ).
      DATA(t191) = t182.
      DATA(t192) = 0.
      DATA(t193) = 1.
      DATA(t194) = strlen( t191 ).
      IF t192 < 0.
        t192 = t192 + t194.
        IF t192 < 0.
          t192 = 0.
        ENDIF.
      ENDIF.
      IF t192 > t194 OR t193 <= 0.
        CLEAR t190.
      ELSE.
        IF t193 > t194 - t192.
          t193 = t194 - t192.
        ENDIF.
        t190 = t191+t192(t193).
      ENDIF.
      DATA(t195) = |!|.
      t189 = xsdbool( t190 = t195 ).
      IF t189 = abap_true.
        DATA(t196) = VALUE string( ).
        DATA t197 TYPE string.
        DATA(t198) = t182.
        t197 = t198.
        DATA(t199) = VALUE string( ).
        DATA(t200) = t197.
        DATA(t201) = 1.
        DATA t202 TYPE i.
        DATA(t203) = t197.
        DATA(t204) = strlen( t203 ).
        t202 = t204.
        DATA(t205) = strlen( t200 ).
        IF t201 < 0.
          t201 = t201 + t205.
          IF t201 < 0.
            t201 = 0.
          ENDIF.
        ENDIF.
        IF t201 > t205 OR t202 <= 0.
          CLEAR t199.
        ELSE.
          IF t202 > t205 - t201.
            t202 = t205 - t201.
          ENDIF.
          t199 = t200+t201(t202).
        ENDIF.
        t196 = t199.
        t182 = t196.
      ENDIF.
      DATA(t206) = t182.
      t181 = t206.
      t178 = t181.
      DATA(t207) = strlen( t178 ).
      t177 = t178.
      IF t177 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t177 TO UPPER CASE.
      ELSE.
        t177 = zlnt_runtime_uppe_91169605024d=>full( t177 ).
      ENDIF.
      DATA t208 TYPE string.
      DATA t209 TYPE string.
      DATA(t210) = t2.
      t209 = t210->value.
      DATA(t211) = strlen( t209 ).
      t208 = t209.
      IF t208 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t208 TO UPPER CASE.
      ELSE.
        t208 = zlnt_runtime_uppe_91169605024d=>full( t208 ).
      ENDIF.
      t176 = xsdbool( t177 = t208 ).
      IF t176 = abap_true.
        DATA t212 TYPE string.
        DATA t213 TYPE string.
        DATA t214 TYPE REF TO zcl_lnt_alias.
        DATA(t215) = t174.
        t214 = t215.
        DATA t216 TYPE string.
        DATA(t217) = t214.
        t216 = t217->component.
        t213 = t216.
        t212 = t213.
        DATA t218 TYPE REF TO zif_lnt_event_definition.
        CLEAR t218.
        DATA t219 TYPE REF TO zif_lnt_event_definition.
        CLEAR t219.
        DATA t220 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t220.
        DATA t221 TYPE REF TO zcl_lnt_current_scope.
        DATA(t222) = me->scope.
        t221 = t222.
        DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t223.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        DATA(t225) = abap_true.
        IF t225 = abap_true.
          DATA(t226) = VALUE string( ).
          DATA t227 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t228) = t212.
          DATA(t229) = |~|.
          DATA(t230) = strlen( t228 ).
          DATA t231 TYPE i.
          DATA(t232) = VALUE i( ).
          DATA(t233) = VALUE i( ).
          DATA t234 TYPE i.
          DATA(t235) = VALUE string( ).
          CREATE OBJECT t227.
          t234 = strlen( t229 ).
          t231 = 0.
          IF t234 = 0.
            WHILE t231 < t230.
              t235 = t228+t231(1).
              APPEND t235 TO t227->items.
              t231 = t231 + 1.
            ENDWHILE.
          ELSE.
            WHILE t231 <= t230.
              FIND FIRST OCCURRENCE OF t229 IN SECTION OFFSET t231 OF t228 MATCH OFFSET t232.
              IF sy-subrc = 0.
                t233 = t232 - t231.
              ELSE.
                t232 = -1.
                t233 = t230 - t231.
              ENDIF.
              CLEAR t235.
              IF t233 > 0.
                t235 = t228+t231(t233).
              ENDIF.
              APPEND t235 TO t227->items.
              IF t232 < 0.
                EXIT.
              ENDIF.
              t231 = t232 + t234.
            ENDWHILE.
          ENDIF.
          READ TABLE t227->items INDEX 1 INTO t226.
          DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t236->has = abap_true.
          t236->value = t226.
          t224 = t236.
        ELSE.
          DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t237.
          t224 = t237.
        ENDIF.
        t223 = t224.
        DATA t238 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t238.
        DATA(t239) = VALUE abap_bool( ).
        DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t241) = t223.
        t240 = t241.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        t242 = t243.
        DATA(t244) = VALUE abap_bool( ).
        DATA(t245) = t240.
        IF t245 IS INITIAL.
          t244 = abap_true.
        ELSEIF t245->has = abap_false.
          t244 = abap_true.
        ENDIF.
        t239 = t244.
        IF t239 = abap_true.
          DATA t246 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t246.
          t238 = t246.
        ELSE.
          DATA t247 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t247.
          DATA t248 TYPE REF TO zif_lnt_class_definition.
          CLEAR t248.
          DATA t249 TYPE REF TO zif_lnt_class_definition.
          CLEAR t249.
          DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t250.
          DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t251.
          DATA(t252) = abap_true.
          IF t252 = abap_true.
            DATA t253 TYPE string.
            DATA(t254) = t223.
            t253 = t254->value.
            DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t255->has = abap_true.
            t255->value = t253.
            t251 = t255.
          ELSE.
            DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t256.
            t251 = t256.
          ENDIF.
          t250 = t251.
          DATA t257 TYPE REF TO zif_lnt_class_definition.
          CLEAR t257.
          DATA(t258) = VALUE abap_bool( ).
          DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t260) = t250.
          t259 = t260.
          DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t262.
          t261 = t262.
          DATA(t263) = VALUE abap_bool( ).
          DATA(t264) = t259.
          IF t264 IS INITIAL.
            t263 = abap_true.
          ELSEIF t264->has = abap_false.
            t263 = abap_true.
          ENDIF.
          t258 = t263.
          IF t258 = abap_true.
            DATA t265 TYPE REF TO zif_lnt_class_definition.
            CLEAR t265.
            t257 = t265.
          ELSE.
            DATA t266 TYPE REF TO zif_lnt_class_definition.
            CLEAR t266.
            DATA t267 TYPE REF TO zif_lnt_class_definition.
            CLEAR t267.
            DATA t268 TYPE REF TO zif_lnt_class_definition.
            CLEAR t268.
            DATA t269 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t270 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t271) = t221.
            t270 = t271->current.
            t269 = t270.
            DATA t272 TYPE REF TO zif_lnt_class_definition.
            CLEAR t272.
            DATA(t273) = VALUE abap_bool( ).
            DATA(t274) = t269.
            IF t274 IS INITIAL.
              t273 = abap_true.
            ENDIF.
            IF t273 = abap_true.
              DATA t275 TYPE REF TO zif_lnt_class_definition.
              CLEAR t275.
              t272 = t275.
            ELSE.
              DATA t276 TYPE REF TO zif_lnt_class_definition.
              DATA t277 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t278) = t269.
              t277 = t278.
              DATA t279 TYPE string.
              DATA(t280) = t250.
              t279 = t280->value.
              t276 = t277->find_class_definition( i_name = t279 ).
              t272 = t276.
            ENDIF.
            t268 = t272.
            t267 = t268.
            DATA t281 TYPE REF TO zif_lnt_class_definition.
            CLEAR t281.
            DATA t282 TYPE abap_bool.
            DATA(t283) = t267.
            t282 = xsdbool( t283 IS BOUND ).
            IF t282 = abap_true.
              DATA t284 TYPE REF TO zif_lnt_class_definition.
              CLEAR t284.
              DATA(t285) = abap_true.
              IF t285 = abap_true.
                DATA t286 TYPE REF TO zif_lnt_class_definition.
                DATA(t287) = t267.
                t286 = t287.
                t284 = t286.
              ELSE.
                DATA t288 TYPE REF TO zif_lnt_class_definition.
                CLEAR t288.
                t284 = t288.
              ENDIF.
              t281 = t284.
            ELSE.
              DATA t289 TYPE REF TO zif_lnt_class_definition.
              CLEAR t289.
              DATA t290 TYPE REF TO zcl_lnt_class.
              CLEAR t290.
              DATA t291 TYPE REF TO zcl_lnt_class.
              CLEAR t291.
              DATA t292 TYPE REF TO zif_lnt_object.
              CLEAR t292.
              DATA t293 TYPE REF TO zif_lnt_registry.
              DATA(t294) = t221.
              t293 = t294->reg.
              DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t295.
              DATA(t296) = abap_true.
              IF t296 = abap_true.
                DATA(t297) = |CLAS|.
                DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t298->has = abap_true.
                t298->value = t297.
                t295 = t298.
              ELSE.
                DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t299.
                t295 = t299.
              ENDIF.
              DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t300.
              DATA(t301) = abap_true.
              IF t301 = abap_true.
                DATA t302 TYPE string.
                DATA(t303) = t250.
                t302 = t303->value.
                DATA(t304) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t304->has = abap_true.
                t304->value = t302.
                t300 = t304.
              ELSE.
                DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t305.
                t300 = t305.
              ENDIF.
              t292 = t293->get_object( i_type_9913 = t295 i_name = t300 ).
              DATA t306 TYPE REF TO object.
              t306 = t292.
              t291 ?= t306.
              t290 = t291.
              DATA t307 TYPE REF TO zif_lnt_class_definition.
              CLEAR t307.
              DATA t308 TYPE abap_bool.
              DATA(t309) = t290.
              t308 = xsdbool( t309 IS BOUND ).
              IF t308 = abap_true.
                DATA t310 TYPE REF TO zif_lnt_class_definition.
                DATA t311 TYPE REF TO zcl_lnt_class.
                DATA(t312) = t290.
                t311 = t312.
                t310 = t311->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t307 = t310.
              ELSE.
                DATA t313 TYPE REF TO zif_lnt_class_definition.
                CLEAR t313.
                t307 = t313.
              ENDIF.
              t289 = t307.
              t281 = t289.
            ENDIF.
            t266 = t281.
            t257 = t266.
          ENDIF.
          t249 = t257.
          t248 = t249.
          DATA t314 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t314.
          DATA t315 TYPE abap_bool.
          DATA(t316) = t248.
          t315 = xsdbool( t316 IS BOUND ).
          IF t315 = abap_true.
            DATA t317 TYPE REF TO zif_lnt_interface_definition.
            DATA t318 TYPE REF TO zif_lnt_class_definition.
            DATA(t319) = t248.
            t318 = t319.
            t317 ?= t318.
            t314 = t317.
          ELSE.
            DATA t320 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t320.
            DATA t321 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t321.
            DATA t322 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t322.
            DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t323.
            DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t324.
            DATA(t325) = abap_true.
            IF t325 = abap_true.
              DATA t326 TYPE string.
              DATA(t327) = t223.
              t326 = t327->value.
              DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t328->has = abap_true.
              t328->value = t326.
              t324 = t328.
            ELSE.
              DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t329.
              t324 = t329.
            ENDIF.
            t323 = t324.
            DATA t330 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t330.
            DATA(t331) = VALUE abap_bool( ).
            DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t333) = t323.
            t332 = t333.
            DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t335.
            t334 = t335.
            DATA(t336) = VALUE abap_bool( ).
            DATA(t337) = t332.
            IF t337 IS INITIAL.
              t336 = abap_true.
            ELSEIF t337->has = abap_false.
              t336 = abap_true.
            ENDIF.
            t331 = t336.
            IF t331 = abap_true.
              DATA t338 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t338.
              t330 = t338.
            ELSE.
              DATA t339 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t339.
              DATA t340 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t340.
              DATA t341 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t341.
              DATA t342 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t343 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t344) = t221.
              t343 = t344->current.
              t342 = t343.
              DATA t345 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t345.
              DATA(t346) = VALUE abap_bool( ).
              DATA(t347) = t342.
              IF t347 IS INITIAL.
                t346 = abap_true.
              ENDIF.
              IF t346 = abap_true.
                DATA t348 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t348.
                t345 = t348.
              ELSE.
                DATA t349 TYPE REF TO zif_lnt_interface_definition.
                DATA t350 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t351) = t342.
                t350 = t351.
                DATA t352 TYPE string.
                DATA(t353) = t323.
                t352 = t353->value.
                t349 = t350->find_interface_definition( i_name = t352 ).
                t345 = t349.
              ENDIF.
              t341 = t345.
              t340 = t341.
              DATA t354 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t354.
              DATA t355 TYPE abap_bool.
              DATA(t356) = t340.
              t355 = xsdbool( t356 IS BOUND ).
              IF t355 = abap_true.
                DATA t357 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t357.
                DATA(t358) = abap_true.
                IF t358 = abap_true.
                  DATA t359 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t360) = t340.
                  t359 = t360.
                  t357 = t359.
                ELSE.
                  DATA t361 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t361.
                  t357 = t361.
                ENDIF.
                t354 = t357.
              ELSE.
                DATA t362 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t362.
                DATA t363 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t363.
                DATA t364 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t364.
                DATA t365 TYPE REF TO zif_lnt_object.
                CLEAR t365.
                DATA t366 TYPE REF TO zif_lnt_registry.
                DATA(t367) = t221.
                t366 = t367->reg.
                DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t368.
                DATA(t369) = abap_true.
                IF t369 = abap_true.
                  DATA(t370) = |INTF|.
                  DATA(t371) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t371->has = abap_true.
                  t371->value = t370.
                  t368 = t371.
                ELSE.
                  DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t372.
                  t368 = t372.
                ENDIF.
                DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t373.
                DATA(t374) = abap_true.
                IF t374 = abap_true.
                  DATA t375 TYPE string.
                  DATA(t376) = t323.
                  t375 = t376->value.
                  DATA(t377) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t377->has = abap_true.
                  t377->value = t375.
                  t373 = t377.
                ELSE.
                  DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t378.
                  t373 = t378.
                ENDIF.
                t365 = t366->get_object( i_type_9913 = t368 i_name = t373 ).
                DATA t379 TYPE REF TO object.
                t379 = t365.
                t364 ?= t379.
                t363 = t364.
                DATA t380 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t380.
                DATA t381 TYPE abap_bool.
                DATA(t382) = t363.
                t381 = xsdbool( t382 IS BOUND ).
                IF t381 = abap_true.
                  DATA t383 TYPE REF TO zif_lnt_interface_definition.
                  DATA t384 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t385 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t386) = t363.
                  t385 = t386.
                  t384 = t385.
                  DATA t387 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t388) = t384.
                  t387 = t388->def.
                  t383 = t387.
                  t380 = t383.
                ELSE.
                  DATA t389 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t389.
                  t380 = t389.
                ENDIF.
                t362 = t380.
                t354 = t362.
              ENDIF.
              t339 = t354.
              t330 = t339.
            ENDIF.
            t322 = t330.
            t321 = t322.
            DATA t390 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t390.
            DATA t391 TYPE abap_bool.
            DATA(t392) = t321.
            t391 = xsdbool( t392 IS BOUND ).
            IF t391 = abap_true.
              DATA t393 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t393.
              DATA(t394) = abap_true.
              IF t394 = abap_true.
                DATA t395 TYPE REF TO zif_lnt_interface_definition.
                DATA(t396) = t321.
                t395 = t396.
                t393 = t395.
              ELSE.
                DATA t397 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t397.
                t393 = t397.
              ENDIF.
              t390 = t393.
            ELSE.
              DATA t398 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t398.
              t390 = t398.
            ENDIF.
            t320 = t390.
            t314 = t320.
          ENDIF.
          t247 = t314.
          t238 = t247.
        ENDIF.
        t220 = t238.
        DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t399.
        DATA(t400) = abap_true.
        IF t400 = abap_true.
          DATA(t401) = VALUE string( ).
          DATA t402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t403) = t212.
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
          READ TABLE t402->items INDEX 2 INTO t401.
          DATA(t411) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t411->has = abap_true.
          t411->value = t401.
          t399 = t411.
        ELSE.
          DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t412.
          t399 = t412.
        ENDIF.
        t219 = me->search_event( i_def = t220 i_name = t399 ).
        t218 = t219.
        DATA t413 TYPE abap_bool.
        DATA(t414) = t218.
        t413 = xsdbool( t414 IS BOUND ).
        IF t413 = abap_true.
          DATA t415 TYPE REF TO zif_lnt_event_definition.
          CLEAR t415.
          DATA(t416) = abap_true.
          IF t416 = abap_true.
            DATA t417 TYPE REF TO zif_lnt_event_definition.
            DATA(t418) = t218.
            t417 = t418.
            t415 = t417.
          ELSE.
            DATA t419 TYPE REF TO zif_lnt_event_definition.
            CLEAR t419.
            t415 = t419.
          ENDIF.
          result = t415.
          RETURN.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t422 TYPE REF TO zif_lnt_interface_definition.
    DATA(t423) = t1.
    t422 = t423.
    t421 = t422->get_super_class( ).
    t420 = t421.
    DATA(t424) = VALUE abap_bool( ).
    DATA(t425) = t420.
    IF t425 IS BOUND.
      IF t425->has = abap_true.
        t424 = xsdbool( strlen( t425->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t424 = abap_true.
      DATA t426 TYPE REF TO zif_lnt_event_definition.
      CLEAR t426.
      DATA t427 TYPE REF TO zif_lnt_interface_definition.
      DATA t428 TYPE REF TO zif_lnt_class_definition.
      DATA t429 TYPE string.
      DATA(t430) = t420.
      t429 = t430->value.
      t428 = me->find_super_definition( i_name = t429 ).
      t427 ?= t428.
      DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t431.
      DATA(t432) = abap_true.
      IF t432 = abap_true.
        DATA t433 TYPE string.
        DATA(t434) = t2.
        t433 = t434->value.
        DATA(t435) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t435->has = abap_true.
        t435->value = t433.
        t431 = t435.
      ELSE.
        DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t436.
        t431 = t436.
      ENDIF.
      t426 = me->search_event( i_def = t427 i_name = t431 ).
      result = t426.
      RETURN.
    ENDIF.
    DATA t437 TYPE REF TO zif_lnt_event_definition.
    CLEAR t437.
    result = t437.

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
      LOOP AT t30->items INTO t33.
        t32 ?= t33.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = VALUE string( ).
        DATA(t36) = VALUE string( ).
        DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t38) = t32.
        t37 = t38.
        DATA(t39) = VALUE string( ).
        DATA t40 TYPE string.
        DATA t41 TYPE string.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        DATA t43 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t44) = t37.
        t43 = t44->token.
        t42 = t43.
        DATA t45 TYPE string.
        DATA(t46) = t42.
        t45 = t46->str.
        t41 = t45.
        t40 = t41.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = VALUE string( ).
        DATA(t49) = t40.
        DATA(t50) = 0.
        DATA(t51) = 1.
        DATA(t52) = strlen( t49 ).
        IF t50 < 0.
          t50 = t50 + t52.
          IF t50 < 0.
            t50 = 0.
          ENDIF.
        ENDIF.
        IF t50 > t52 OR t51 <= 0.
          CLEAR t48.
        ELSE.
          IF t51 > t52 - t50.
            t51 = t52 - t50.
          ENDIF.
          t48 = t49+t50(t51).
        ENDIF.
        DATA(t53) = |!|.
        t47 = xsdbool( t48 = t53 ).
        IF t47 = abap_true.
          DATA(t54) = VALUE string( ).
          DATA t55 TYPE string.
          DATA(t56) = t40.
          t55 = t56.
          DATA(t57) = VALUE string( ).
          DATA(t58) = t55.
          DATA(t59) = 1.
          DATA t60 TYPE i.
          DATA(t61) = t55.
          DATA(t62) = strlen( t61 ).
          t60 = t62.
          DATA(t63) = strlen( t58 ).
          IF t59 < 0.
            t59 = t59 + t63.
            IF t59 < 0.
              t59 = 0.
            ENDIF.
          ENDIF.
          IF t59 > t63 OR t60 <= 0.
            CLEAR t57.
          ELSE.
            IF t60 > t63 - t59.
              t60 = t63 - t59.
            ENDIF.
            t57 = t58+t59(t60).
          ENDIF.
          t54 = t57.
          t40 = t54.
        ENDIF.
        DATA(t64) = t40.
        t39 = t64.
        t36 = t39.
        DATA(t65) = strlen( t36 ).
        t35 = t36.
        IF t35 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t35 TO UPPER CASE.
        ELSE.
          t35 = zlnt_runtime_uppe_91169605024d=>full( t35 ).
        ENDIF.
        DATA(t66) = t19.
        t34 = xsdbool( t35 = t66 ).
        IF t34 = abap_true.
          DATA t67 TYPE REF TO zcl_lnt_class_attribute.
          CLEAR t67.
          DATA(t68) = abap_true.
          IF t68 = abap_true.
            DATA(t69) = t32.
            t67 = t69.
          ELSE.
            DATA t70 TYPE REF TO zcl_lnt_class_attribute.
            CLEAR t70.
            t67 = t70.
          ENDIF.
          result = t67.
          RETURN.
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t74 TYPE REF TO zif_lnt_interface_definition.
    DATA(t75) = t1.
    t74 = t75.
    t73 = t74->get_aliases( ).
    t72 = t73.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA t77 TYPE abap_bool.
    DATA(t78) = t72.
    t77 = xsdbool( t78 IS BOUND ).
    IF t77 = abap_true.
      DATA(t79) = t72.
      t76 = t79.
    ELSE.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t80.
      t76 = t80.
    ENDIF.
    t71 = t76.
    DATA t81 TYPE REF TO zcl_lnt_alias.
    CLEAR t81.
    DATA t82 TYPE REF TO object.
    CLEAR t82.
    LOOP AT t71->items INTO t82.
      t81 ?= t82.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = VALUE string( ).
      DATA(t85) = VALUE string( ).
      DATA t86 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t87) = t81.
      t86 = t87.
      DATA(t88) = VALUE string( ).
      DATA t89 TYPE string.
      DATA t90 TYPE string.
      DATA t91 TYPE REF TO zcl_lnt_abstract_token.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t93) = t86.
      t92 = t93->token.
      t91 = t92.
      DATA t94 TYPE string.
      DATA(t95) = t91.
      t94 = t95->str.
      t90 = t94.
      t89 = t90.
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = VALUE string( ).
      DATA(t98) = t89.
      DATA(t99) = 0.
      DATA(t100) = 1.
      DATA(t101) = strlen( t98 ).
      IF t99 < 0.
        t99 = t99 + t101.
        IF t99 < 0.
          t99 = 0.
        ENDIF.
      ENDIF.
      IF t99 > t101 OR t100 <= 0.
        CLEAR t97.
      ELSE.
        IF t100 > t101 - t99.
          t100 = t101 - t99.
        ENDIF.
        t97 = t98+t99(t100).
      ENDIF.
      DATA(t102) = |!|.
      t96 = xsdbool( t97 = t102 ).
      IF t96 = abap_true.
        DATA(t103) = VALUE string( ).
        DATA t104 TYPE string.
        DATA(t105) = t89.
        t104 = t105.
        DATA(t106) = VALUE string( ).
        DATA(t107) = t104.
        DATA(t108) = 1.
        DATA t109 TYPE i.
        DATA(t110) = t104.
        DATA(t111) = strlen( t110 ).
        t109 = t111.
        DATA(t112) = strlen( t107 ).
        IF t108 < 0.
          t108 = t108 + t112.
          IF t108 < 0.
            t108 = 0.
          ENDIF.
        ENDIF.
        IF t108 > t112 OR t109 <= 0.
          CLEAR t106.
        ELSE.
          IF t109 > t112 - t108.
            t109 = t112 - t108.
          ENDIF.
          t106 = t107+t108(t109).
        ENDIF.
        t103 = t106.
        t89 = t103.
      ENDIF.
      DATA(t113) = t89.
      t88 = t113.
      t85 = t88.
      DATA(t114) = strlen( t85 ).
      t84 = t85.
      IF t84 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t84 TO UPPER CASE.
      ELSE.
        t84 = zlnt_runtime_uppe_91169605024d=>full( t84 ).
      ENDIF.
      DATA(t115) = t19.
      t83 = xsdbool( t84 = t115 ).
      IF t83 = abap_true.
        DATA t116 TYPE string.
        DATA t117 TYPE string.
        DATA t118 TYPE REF TO zcl_lnt_alias.
        DATA(t119) = t81.
        t118 = t119.
        DATA t120 TYPE string.
        DATA(t121) = t118.
        t120 = t121->component.
        t117 = t120.
        t116 = t117.
        DATA t122 TYPE REF TO zcl_lnt_class_attribute.
        CLEAR t122.
        DATA t123 TYPE REF TO zcl_lnt_class_attribute.
        CLEAR t123.
        DATA t124 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t124.
        DATA t125 TYPE REF TO zcl_lnt_current_scope.
        DATA(t126) = me->scope.
        t125 = t126.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA(t130) = VALUE string( ).
          DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t132) = t116.
          DATA(t133) = |~|.
          DATA(t134) = strlen( t132 ).
          DATA t135 TYPE i.
          DATA(t136) = VALUE i( ).
          DATA(t137) = VALUE i( ).
          DATA t138 TYPE i.
          DATA(t139) = VALUE string( ).
          CREATE OBJECT t131.
          t138 = strlen( t133 ).
          t135 = 0.
          IF t138 = 0.
            WHILE t135 < t134.
              t139 = t132+t135(1).
              APPEND t139 TO t131->items.
              t135 = t135 + 1.
            ENDWHILE.
          ELSE.
            WHILE t135 <= t134.
              FIND FIRST OCCURRENCE OF t133 IN SECTION OFFSET t135 OF t132 MATCH OFFSET t136.
              IF sy-subrc = 0.
                t137 = t136 - t135.
              ELSE.
                t136 = -1.
                t137 = t134 - t135.
              ENDIF.
              CLEAR t139.
              IF t137 > 0.
                t139 = t132+t135(t137).
              ENDIF.
              APPEND t139 TO t131->items.
              IF t136 < 0.
                EXIT.
              ENDIF.
              t135 = t136 + t138.
            ENDWHILE.
          ENDIF.
          READ TABLE t131->items INDEX 1 INTO t130.
          DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t140->has = abap_true.
          t140->value = t130.
          t128 = t140.
        ELSE.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          t128 = t141.
        ENDIF.
        t127 = t128.
        DATA t142 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t142.
        DATA(t143) = VALUE abap_bool( ).
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t145) = t127.
        t144 = t145.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        t146 = t147.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = t144.
        IF t149 IS INITIAL.
          t148 = abap_true.
        ELSEIF t149->has = abap_false.
          t148 = abap_true.
        ENDIF.
        t143 = t148.
        IF t143 = abap_true.
          DATA t150 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t150.
          t142 = t150.
        ELSE.
          DATA t151 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t151.
          DATA t152 TYPE REF TO zif_lnt_class_definition.
          CLEAR t152.
          DATA t153 TYPE REF TO zif_lnt_class_definition.
          CLEAR t153.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          DATA(t156) = abap_true.
          IF t156 = abap_true.
            DATA t157 TYPE string.
            DATA(t158) = t127.
            t157 = t158->value.
            DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t159->has = abap_true.
            t159->value = t157.
            t155 = t159.
          ELSE.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t160.
            t155 = t160.
          ENDIF.
          t154 = t155.
          DATA t161 TYPE REF TO zif_lnt_class_definition.
          CLEAR t161.
          DATA(t162) = VALUE abap_bool( ).
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t164) = t154.
          t163 = t164.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t166.
          t165 = t166.
          DATA(t167) = VALUE abap_bool( ).
          DATA(t168) = t163.
          IF t168 IS INITIAL.
            t167 = abap_true.
          ELSEIF t168->has = abap_false.
            t167 = abap_true.
          ENDIF.
          t162 = t167.
          IF t162 = abap_true.
            DATA t169 TYPE REF TO zif_lnt_class_definition.
            CLEAR t169.
            t161 = t169.
          ELSE.
            DATA t170 TYPE REF TO zif_lnt_class_definition.
            CLEAR t170.
            DATA t171 TYPE REF TO zif_lnt_class_definition.
            CLEAR t171.
            DATA t172 TYPE REF TO zif_lnt_class_definition.
            CLEAR t172.
            DATA t173 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t174 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t175) = t125.
            t174 = t175->current.
            t173 = t174.
            DATA t176 TYPE REF TO zif_lnt_class_definition.
            CLEAR t176.
            DATA(t177) = VALUE abap_bool( ).
            DATA(t178) = t173.
            IF t178 IS INITIAL.
              t177 = abap_true.
            ENDIF.
            IF t177 = abap_true.
              DATA t179 TYPE REF TO zif_lnt_class_definition.
              CLEAR t179.
              t176 = t179.
            ELSE.
              DATA t180 TYPE REF TO zif_lnt_class_definition.
              DATA t181 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t182) = t173.
              t181 = t182.
              DATA t183 TYPE string.
              DATA(t184) = t154.
              t183 = t184->value.
              t180 = t181->find_class_definition( i_name = t183 ).
              t176 = t180.
            ENDIF.
            t172 = t176.
            t171 = t172.
            DATA t185 TYPE REF TO zif_lnt_class_definition.
            CLEAR t185.
            DATA t186 TYPE abap_bool.
            DATA(t187) = t171.
            t186 = xsdbool( t187 IS BOUND ).
            IF t186 = abap_true.
              DATA t188 TYPE REF TO zif_lnt_class_definition.
              CLEAR t188.
              DATA(t189) = abap_true.
              IF t189 = abap_true.
                DATA t190 TYPE REF TO zif_lnt_class_definition.
                DATA(t191) = t171.
                t190 = t191.
                t188 = t190.
              ELSE.
                DATA t192 TYPE REF TO zif_lnt_class_definition.
                CLEAR t192.
                t188 = t192.
              ENDIF.
              t185 = t188.
            ELSE.
              DATA t193 TYPE REF TO zif_lnt_class_definition.
              CLEAR t193.
              DATA t194 TYPE REF TO zcl_lnt_class.
              CLEAR t194.
              DATA t195 TYPE REF TO zcl_lnt_class.
              CLEAR t195.
              DATA t196 TYPE REF TO zif_lnt_object.
              CLEAR t196.
              DATA t197 TYPE REF TO zif_lnt_registry.
              DATA(t198) = t125.
              t197 = t198->reg.
              DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t199.
              DATA(t200) = abap_true.
              IF t200 = abap_true.
                DATA(t201) = |CLAS|.
                DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t202->has = abap_true.
                t202->value = t201.
                t199 = t202.
              ELSE.
                DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t203.
                t199 = t203.
              ENDIF.
              DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t204.
              DATA(t205) = abap_true.
              IF t205 = abap_true.
                DATA t206 TYPE string.
                DATA(t207) = t154.
                t206 = t207->value.
                DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t208->has = abap_true.
                t208->value = t206.
                t204 = t208.
              ELSE.
                DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t209.
                t204 = t209.
              ENDIF.
              t196 = t197->get_object( i_type_9913 = t199 i_name = t204 ).
              DATA t210 TYPE REF TO object.
              t210 = t196.
              t195 ?= t210.
              t194 = t195.
              DATA t211 TYPE REF TO zif_lnt_class_definition.
              CLEAR t211.
              DATA t212 TYPE abap_bool.
              DATA(t213) = t194.
              t212 = xsdbool( t213 IS BOUND ).
              IF t212 = abap_true.
                DATA t214 TYPE REF TO zif_lnt_class_definition.
                DATA t215 TYPE REF TO zcl_lnt_class.
                DATA(t216) = t194.
                t215 = t216.
                t214 = t215->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t211 = t214.
              ELSE.
                DATA t217 TYPE REF TO zif_lnt_class_definition.
                CLEAR t217.
                t211 = t217.
              ENDIF.
              t193 = t211.
              t185 = t193.
            ENDIF.
            t170 = t185.
            t161 = t170.
          ENDIF.
          t153 = t161.
          t152 = t153.
          DATA t218 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t218.
          DATA t219 TYPE abap_bool.
          DATA(t220) = t152.
          t219 = xsdbool( t220 IS BOUND ).
          IF t219 = abap_true.
            DATA t221 TYPE REF TO zif_lnt_interface_definition.
            DATA t222 TYPE REF TO zif_lnt_class_definition.
            DATA(t223) = t152.
            t222 = t223.
            t221 ?= t222.
            t218 = t221.
          ELSE.
            DATA t224 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t224.
            DATA t225 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t225.
            DATA t226 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t226.
            DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t227.
            DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t228.
            DATA(t229) = abap_true.
            IF t229 = abap_true.
              DATA t230 TYPE string.
              DATA(t231) = t127.
              t230 = t231->value.
              DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t232->has = abap_true.
              t232->value = t230.
              t228 = t232.
            ELSE.
              DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t233.
              t228 = t233.
            ENDIF.
            t227 = t228.
            DATA t234 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t234.
            DATA(t235) = VALUE abap_bool( ).
            DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t237) = t227.
            t236 = t237.
            DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t239.
            t238 = t239.
            DATA(t240) = VALUE abap_bool( ).
            DATA(t241) = t236.
            IF t241 IS INITIAL.
              t240 = abap_true.
            ELSEIF t241->has = abap_false.
              t240 = abap_true.
            ENDIF.
            t235 = t240.
            IF t235 = abap_true.
              DATA t242 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t242.
              t234 = t242.
            ELSE.
              DATA t243 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t243.
              DATA t244 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t244.
              DATA t245 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t245.
              DATA t246 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t247 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t248) = t125.
              t247 = t248->current.
              t246 = t247.
              DATA t249 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t249.
              DATA(t250) = VALUE abap_bool( ).
              DATA(t251) = t246.
              IF t251 IS INITIAL.
                t250 = abap_true.
              ENDIF.
              IF t250 = abap_true.
                DATA t252 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t252.
                t249 = t252.
              ELSE.
                DATA t253 TYPE REF TO zif_lnt_interface_definition.
                DATA t254 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t255) = t246.
                t254 = t255.
                DATA t256 TYPE string.
                DATA(t257) = t227.
                t256 = t257->value.
                t253 = t254->find_interface_definition( i_name = t256 ).
                t249 = t253.
              ENDIF.
              t245 = t249.
              t244 = t245.
              DATA t258 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t258.
              DATA t259 TYPE abap_bool.
              DATA(t260) = t244.
              t259 = xsdbool( t260 IS BOUND ).
              IF t259 = abap_true.
                DATA t261 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t261.
                DATA(t262) = abap_true.
                IF t262 = abap_true.
                  DATA t263 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t264) = t244.
                  t263 = t264.
                  t261 = t263.
                ELSE.
                  DATA t265 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t265.
                  t261 = t265.
                ENDIF.
                t258 = t261.
              ELSE.
                DATA t266 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t266.
                DATA t267 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t267.
                DATA t268 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t268.
                DATA t269 TYPE REF TO zif_lnt_object.
                CLEAR t269.
                DATA t270 TYPE REF TO zif_lnt_registry.
                DATA(t271) = t125.
                t270 = t271->reg.
                DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t272.
                DATA(t273) = abap_true.
                IF t273 = abap_true.
                  DATA(t274) = |INTF|.
                  DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t275->has = abap_true.
                  t275->value = t274.
                  t272 = t275.
                ELSE.
                  DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t276.
                  t272 = t276.
                ENDIF.
                DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t277.
                DATA(t278) = abap_true.
                IF t278 = abap_true.
                  DATA t279 TYPE string.
                  DATA(t280) = t227.
                  t279 = t280->value.
                  DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t281->has = abap_true.
                  t281->value = t279.
                  t277 = t281.
                ELSE.
                  DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t282.
                  t277 = t282.
                ENDIF.
                t269 = t270->get_object( i_type_9913 = t272 i_name = t277 ).
                DATA t283 TYPE REF TO object.
                t283 = t269.
                t268 ?= t283.
                t267 = t268.
                DATA t284 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t284.
                DATA t285 TYPE abap_bool.
                DATA(t286) = t267.
                t285 = xsdbool( t286 IS BOUND ).
                IF t285 = abap_true.
                  DATA t287 TYPE REF TO zif_lnt_interface_definition.
                  DATA t288 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t289 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t290) = t267.
                  t289 = t290.
                  t288 = t289.
                  DATA t291 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t292) = t288.
                  t291 = t292->def.
                  t287 = t291.
                  t284 = t287.
                ELSE.
                  DATA t293 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t293.
                  t284 = t293.
                ENDIF.
                t266 = t284.
                t258 = t266.
              ENDIF.
              t243 = t258.
              t234 = t243.
            ENDIF.
            t226 = t234.
            t225 = t226.
            DATA t294 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t294.
            DATA t295 TYPE abap_bool.
            DATA(t296) = t225.
            t295 = xsdbool( t296 IS BOUND ).
            IF t295 = abap_true.
              DATA t297 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t297.
              DATA(t298) = abap_true.
              IF t298 = abap_true.
                DATA t299 TYPE REF TO zif_lnt_interface_definition.
                DATA(t300) = t225.
                t299 = t300.
                t297 = t299.
              ELSE.
                DATA t301 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t301.
                t297 = t301.
              ENDIF.
              t294 = t297.
            ELSE.
              DATA t302 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t302.
              t294 = t302.
            ENDIF.
            t224 = t294.
            t218 = t224.
          ENDIF.
          t151 = t218.
          t142 = t151.
        ENDIF.
        t124 = t142.
        DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t303.
        DATA(t304) = abap_true.
        IF t304 = abap_true.
          DATA(t305) = VALUE string( ).
          DATA t306 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t307) = t116.
          DATA(t308) = |~|.
          DATA(t309) = strlen( t307 ).
          DATA t310 TYPE i.
          DATA(t311) = VALUE i( ).
          DATA(t312) = VALUE i( ).
          DATA t313 TYPE i.
          DATA(t314) = VALUE string( ).
          CREATE OBJECT t306.
          t313 = strlen( t308 ).
          t310 = 0.
          IF t313 = 0.
            WHILE t310 < t309.
              t314 = t307+t310(1).
              APPEND t314 TO t306->items.
              t310 = t310 + 1.
            ENDWHILE.
          ELSE.
            WHILE t310 <= t309.
              FIND FIRST OCCURRENCE OF t308 IN SECTION OFFSET t310 OF t307 MATCH OFFSET t311.
              IF sy-subrc = 0.
                t312 = t311 - t310.
              ELSE.
                t311 = -1.
                t312 = t309 - t310.
              ENDIF.
              CLEAR t314.
              IF t312 > 0.
                t314 = t307+t310(t312).
              ENDIF.
              APPEND t314 TO t306->items.
              IF t311 < 0.
                EXIT.
              ENDIF.
              t310 = t311 + t313.
            ENDWHILE.
          ENDIF.
          READ TABLE t306->items INDEX 2 INTO t305.
          DATA(t315) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t315->has = abap_true.
          t315->value = t305.
          t303 = t315.
        ELSE.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          t303 = t316.
        ENDIF.
        t123 = me->search_attribute_name( i_def = t124 i_name = t303 ).
        t122 = t123.
        DATA t317 TYPE abap_bool.
        DATA(t318) = t122.
        t317 = xsdbool( t318 IS BOUND ).
        IF t317 = abap_true.
          DATA t319 TYPE REF TO zcl_lnt_class_attribute.
          CLEAR t319.
          DATA(t320) = abap_true.
          IF t320 = abap_true.
            DATA t321 TYPE REF TO zcl_lnt_class_attribute.
            DATA(t322) = t122.
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
    ENDLOOP.
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
        DATA(t418) = abap_true.
        IF t418 = abap_true.
          DATA(t419) = VALUE string( ).
          DATA t420 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t421 TYPE string.
          DATA(t422) = t2.
          t421 = t422->value.
          DATA(t423) = |~|.
          DATA(t424) = strlen( t421 ).
          DATA t425 TYPE i.
          DATA(t426) = VALUE i( ).
          DATA(t427) = VALUE i( ).
          DATA t428 TYPE i.
          DATA(t429) = VALUE string( ).
          CREATE OBJECT t420.
          t428 = strlen( t423 ).
          t425 = 0.
          IF t428 = 0.
            WHILE t425 < t424.
              t429 = t421+t425(1).
              APPEND t429 TO t420->items.
              t425 = t425 + 1.
            ENDWHILE.
          ELSE.
            WHILE t425 <= t424.
              FIND FIRST OCCURRENCE OF t423 IN SECTION OFFSET t425 OF t421 MATCH OFFSET t426.
              IF sy-subrc = 0.
                t427 = t426 - t425.
              ELSE.
                t426 = -1.
                t427 = t424 - t425.
              ENDIF.
              CLEAR t429.
              IF t427 > 0.
                t429 = t421+t425(t427).
              ENDIF.
              APPEND t429 TO t420->items.
              IF t426 < 0.
                EXIT.
              ENDIF.
              t425 = t426 + t428.
            ENDWHILE.
          ENDIF.
          READ TABLE t420->items INDEX 2 INTO t419.
          DATA(t430) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t430->has = abap_true.
          t430->value = t419.
          t417 = t430.
        ELSE.
          DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t431.
          t417 = t431.
        ENDIF.
        t347 = me->search_attribute_name( i_def = t348 i_name = t417 ).
        result = t347.
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
      DATA t438 TYPE REF TO zcl_lnt_class_attribute.
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
      t438 = me->search_attribute_name( i_def = t439 i_name = t443 ).
      result = t438.
      RETURN.
    ENDIF.
    DATA t449 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t449.
    result = t449.

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
    LOOP AT t33->items INTO t37.
      t36 ?= t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE string( ).
      DATA(t40) = VALUE string( ).
      DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t42) = t36.
      t41 = t42.
      DATA(t43) = VALUE string( ).
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t48) = t41.
      t47 = t48->token.
      t46 = t47.
      DATA t49 TYPE string.
      DATA(t50) = t46.
      t49 = t50->str.
      t45 = t49.
      t44 = t45.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE string( ).
      DATA(t53) = t44.
      DATA(t54) = 0.
      DATA(t55) = 1.
      DATA(t56) = strlen( t53 ).
      IF t54 < 0.
        t54 = t54 + t56.
        IF t54 < 0.
          t54 = 0.
        ENDIF.
      ENDIF.
      IF t54 > t56 OR t55 <= 0.
        CLEAR t52.
      ELSE.
        IF t55 > t56 - t54.
          t55 = t56 - t54.
        ENDIF.
        t52 = t53+t54(t55).
      ENDIF.
      DATA(t57) = |!|.
      t51 = xsdbool( t52 = t57 ).
      IF t51 = abap_true.
        DATA(t58) = VALUE string( ).
        DATA t59 TYPE string.
        DATA(t60) = t44.
        t59 = t60.
        DATA(t61) = VALUE string( ).
        DATA(t62) = t59.
        DATA(t63) = 1.
        DATA t64 TYPE i.
        DATA(t65) = t59.
        DATA(t66) = strlen( t65 ).
        t64 = t66.
        DATA(t67) = strlen( t62 ).
        IF t63 < 0.
          t63 = t63 + t67.
          IF t63 < 0.
            t63 = 0.
          ENDIF.
        ENDIF.
        IF t63 > t67 OR t64 <= 0.
          CLEAR t61.
        ELSE.
          IF t64 > t67 - t63.
            t64 = t67 - t63.
          ENDIF.
          t61 = t62+t63(t64).
        ENDIF.
        t58 = t61.
        t44 = t58.
      ENDIF.
      DATA(t68) = t44.
      t43 = t68.
      t40 = t43.
      DATA(t69) = strlen( t40 ).
      t39 = t40.
      IF t39 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t39 TO UPPER CASE.
      ELSE.
        t39 = zlnt_runtime_uppe_91169605024d=>full( t39 ).
      ENDIF.
      DATA t70 TYPE string.
      DATA t71 TYPE string.
      DATA(t72) = t2.
      t71 = t72->value.
      DATA(t73) = strlen( t71 ).
      t70 = t71.
      IF t70 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t70 TO UPPER CASE.
      ELSE.
        t70 = zlnt_runtime_uppe_91169605024d=>full( t70 ).
      ENDIF.
      t38 = xsdbool( t39 = t70 ).
      IF t38 = abap_true.
        DATA t74 TYPE string.
        DATA t75 TYPE string.
        DATA t76 TYPE REF TO zcl_lnt_alias.
        DATA(t77) = t36.
        t76 = t77.
        DATA t78 TYPE string.
        DATA(t79) = t76.
        t78 = t79->component.
        t75 = t78.
        t74 = t75.
        DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t80.
        DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t81.
        DATA t82 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_current_scope.
        DATA(t84) = me->scope.
        t83 = t84.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA(t87) = abap_true.
        IF t87 = abap_true.
          DATA(t88) = VALUE string( ).
          DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t90) = t74.
          DATA(t91) = |~|.
          DATA(t92) = strlen( t90 ).
          DATA t93 TYPE i.
          DATA(t94) = VALUE i( ).
          DATA(t95) = VALUE i( ).
          DATA t96 TYPE i.
          DATA(t97) = VALUE string( ).
          CREATE OBJECT t89.
          t96 = strlen( t91 ).
          t93 = 0.
          IF t96 = 0.
            WHILE t93 < t92.
              t97 = t90+t93(1).
              APPEND t97 TO t89->items.
              t93 = t93 + 1.
            ENDWHILE.
          ELSE.
            WHILE t93 <= t92.
              FIND FIRST OCCURRENCE OF t91 IN SECTION OFFSET t93 OF t90 MATCH OFFSET t94.
              IF sy-subrc = 0.
                t95 = t94 - t93.
              ELSE.
                t94 = -1.
                t95 = t92 - t93.
              ENDIF.
              CLEAR t97.
              IF t95 > 0.
                t97 = t90+t93(t95).
              ENDIF.
              APPEND t97 TO t89->items.
              IF t94 < 0.
                EXIT.
              ENDIF.
              t93 = t94 + t96.
            ENDWHILE.
          ENDIF.
          READ TABLE t89->items INDEX 1 INTO t88.
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = t88.
          t86 = t98.
        ELSE.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t99.
          t86 = t99.
        ENDIF.
        t85 = t86.
        DATA t100 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t100.
        DATA(t101) = VALUE abap_bool( ).
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t103) = t85.
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
            DATA(t116) = t85.
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
            DATA(t133) = t83.
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
              DATA(t156) = t83.
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
              DATA(t189) = t85.
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
              DATA(t206) = t83.
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
                DATA(t229) = t83.
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
        t82 = t100.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t261.
        DATA(t262) = abap_true.
        IF t262 = abap_true.
          DATA(t263) = VALUE string( ).
          DATA t264 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t265) = t74.
          DATA(t266) = |~|.
          DATA(t267) = strlen( t265 ).
          DATA t268 TYPE i.
          DATA(t269) = VALUE i( ).
          DATA(t270) = VALUE i( ).
          DATA t271 TYPE i.
          DATA(t272) = VALUE string( ).
          CREATE OBJECT t264.
          t271 = strlen( t266 ).
          t268 = 0.
          IF t271 = 0.
            WHILE t268 < t267.
              t272 = t265+t268(1).
              APPEND t272 TO t264->items.
              t268 = t268 + 1.
            ENDWHILE.
          ELSE.
            WHILE t268 <= t267.
              FIND FIRST OCCURRENCE OF t266 IN SECTION OFFSET t268 OF t265 MATCH OFFSET t269.
              IF sy-subrc = 0.
                t270 = t269 - t268.
              ELSE.
                t269 = -1.
                t270 = t267 - t268.
              ENDIF.
              CLEAR t272.
              IF t270 > 0.
                t272 = t265+t268(t270).
              ENDIF.
              APPEND t272 TO t264->items.
              IF t269 < 0.
                EXIT.
              ENDIF.
              t268 = t269 + t271.
            ENDWHILE.
          ENDIF.
          READ TABLE t264->items INDEX 2 INTO t263.
          DATA(t273) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t273->has = abap_true.
          t273->value = t263.
          t261 = t273.
        ELSE.
          DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t274.
          t261 = t274.
        ENDIF.
        t81 = me->search_type_name( i_def = t82 i_name = t261 ).
        t80 = t81.
        DATA t275 TYPE abap_bool.
        DATA(t276) = t80.
        t275 = xsdbool( t276 IS BOUND ).
        IF t275 = abap_true.
          DATA t277 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t277.
          DATA(t278) = abap_true.
          IF t278 = abap_true.
            DATA t279 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t280) = t80.
            t279 = t280.
            t277 = t279.
          ELSE.
            DATA t281 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t281.
            t277 = t281.
          ENDIF.
          result = t277.
          RETURN.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t282) = VALUE abap_bool( ).
    DATA(t283) = VALUE i( ).
    DATA t284 TYPE string.
    DATA(t285) = t2.
    t284 = t285->value.
    DATA(t286) = |~|.
    DATA(t287) = strlen( t284 ).
    IF t286 IS INITIAL.
      t283 = 0.
    ELSE.
      FIND t286 IN t284 MATCH OFFSET t283.
      IF sy-subrc <> 0.
        t283 = -1.
      ENDIF.
    ENDIF.
    DATA(t288) = 0.
    t282 = xsdbool( t283 >= t288 ).
    IF t282 = abap_true.
      DATA(t289) = VALUE string( ).
      DATA(t290) = VALUE string( ).
      DATA t291 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t292 TYPE string.
      DATA(t293) = t2.
      t292 = t293->value.
      DATA(t294) = |~|.
      DATA(t295) = strlen( t292 ).
      DATA t296 TYPE i.
      DATA(t297) = VALUE i( ).
      DATA(t298) = VALUE i( ).
      DATA t299 TYPE i.
      DATA(t300) = VALUE string( ).
      CREATE OBJECT t291.
      t299 = strlen( t294 ).
      t296 = 0.
      IF t299 = 0.
        WHILE t296 < t295.
          t300 = t292+t296(1).
          APPEND t300 TO t291->items.
          t296 = t296 + 1.
        ENDWHILE.
      ELSE.
        WHILE t296 <= t295.
          FIND FIRST OCCURRENCE OF t294 IN SECTION OFFSET t296 OF t292 MATCH OFFSET t297.
          IF sy-subrc = 0.
            t298 = t297 - t296.
          ELSE.
            t297 = -1.
            t298 = t295 - t296.
          ENDIF.
          CLEAR t300.
          IF t298 > 0.
            t300 = t292+t296(t298).
          ENDIF.
          APPEND t300 TO t291->items.
          IF t297 < 0.
            EXIT.
          ENDIF.
          t296 = t297 + t299.
        ENDWHILE.
      ENDIF.
      READ TABLE t291->items INDEX 1 INTO t290.
      t289 = t290.
      DATA(t301) = VALUE abap_bool( ).
      DATA t302 TYPE abap_bool.
      DATA(t303) = abap_false.
      t302 = t303.
      DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t305 TYPE REF TO zif_lnt_interface_definition.
      DATA(t306) = t1.
      t305 = t306.
      t304 = t305->get_implementing( ).
      DATA t307 TYPE REF TO zcl_lnt_iimplementing.
      CLEAR t307.
      DATA t308 TYPE REF TO object.
      CLEAR t308.
      LOOP AT t304->items INTO t308.
        t307 ?= t308.
        DATA(t309) = VALUE abap_bool( ).
        DATA t310 TYPE string.
        DATA t311 TYPE string.
        DATA(t312) = t307.
        t311 = t312->name.
        DATA(t313) = strlen( t311 ).
        t310 = t311.
        IF t310 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t310 TO UPPER CASE.
        ELSE.
          t310 = zlnt_runtime_uppe_91169605024d=>full( t310 ).
        ENDIF.
        DATA t314 TYPE string.
        DATA(t315) = t289.
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
          t302 = t317.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA(t318) = t302.
      t301 = t318.
      IF t301 = abap_true.
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
          DATA(t326) = t289.
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
        DATA(t390) = abap_true.
        IF t390 = abap_true.
          DATA(t391) = VALUE string( ).
          DATA t392 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t393 TYPE string.
          DATA(t394) = t2.
          t393 = t394->value.
          DATA(t395) = |~|.
          DATA(t396) = strlen( t393 ).
          DATA t397 TYPE i.
          DATA(t398) = VALUE i( ).
          DATA(t399) = VALUE i( ).
          DATA t400 TYPE i.
          DATA(t401) = VALUE string( ).
          CREATE OBJECT t392.
          t400 = strlen( t395 ).
          t397 = 0.
          IF t400 = 0.
            WHILE t397 < t396.
              t401 = t393+t397(1).
              APPEND t401 TO t392->items.
              t397 = t397 + 1.
            ENDWHILE.
          ELSE.
            WHILE t397 <= t396.
              FIND FIRST OCCURRENCE OF t395 IN SECTION OFFSET t397 OF t393 MATCH OFFSET t398.
              IF sy-subrc = 0.
                t399 = t398 - t397.
              ELSE.
                t398 = -1.
                t399 = t396 - t397.
              ENDIF.
              CLEAR t401.
              IF t399 > 0.
                t401 = t393+t397(t399).
              ENDIF.
              APPEND t401 TO t392->items.
              IF t398 < 0.
                EXIT.
              ENDIF.
              t397 = t398 + t400.
            ENDWHILE.
          ENDIF.
          READ TABLE t392->items INDEX 2 INTO t391.
          DATA(t402) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t402->has = abap_true.
          t402->value = t391.
          t389 = t402.
        ELSE.
          DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t403.
          t389 = t403.
        ENDIF.
        t319 = me->search_type_name( i_def = t320 i_name = t389 ).
        result = t319.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t406 TYPE REF TO zif_lnt_interface_definition.
    DATA(t407) = t1.
    t406 = t407.
    t405 = t406->get_super_class( ).
    t404 = t405.
    DATA(t408) = VALUE abap_bool( ).
    DATA(t409) = t404.
    IF t409 IS BOUND.
      IF t409->has = abap_true.
        t408 = xsdbool( strlen( t409->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t408 = abap_true.
      DATA t410 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t410.
      DATA t411 TYPE REF TO zif_lnt_interface_definition.
      DATA t412 TYPE REF TO zif_lnt_class_definition.
      DATA t413 TYPE string.
      DATA(t414) = t404.
      t413 = t414->value.
      t412 = me->find_super_definition( i_name = t413 ).
      t411 ?= t412.
      DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t415.
      DATA(t416) = abap_true.
      IF t416 = abap_true.
        DATA t417 TYPE string.
        DATA(t418) = t2.
        t417 = t418->value.
        DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t419->has = abap_true.
        t419->value = t417.
        t415 = t419.
      ELSE.
        DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t420.
        t415 = t420.
      ENDIF.
      t410 = me->search_type_name( i_def = t411 i_name = t415 ).
      result = t410.
      RETURN.
    ENDIF.
    DATA t421 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t421.
    result = t421.

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
    LOOP AT t24->items INTO t29.
      t28 ?= t29.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE string( ).
      DATA(t32) = VALUE string( ).
      DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t34) = t28.
      t33 = t34.
      DATA(t35) = VALUE string( ).
      DATA t36 TYPE string.
      DATA t37 TYPE string.
      DATA t38 TYPE REF TO zcl_lnt_abstract_token.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t40) = t33.
      t39 = t40->token.
      t38 = t39.
      DATA t41 TYPE string.
      DATA(t42) = t38.
      t41 = t42->str.
      t37 = t41.
      t36 = t37.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = VALUE string( ).
      DATA(t45) = t36.
      DATA(t46) = 0.
      DATA(t47) = 1.
      DATA(t48) = strlen( t45 ).
      IF t46 < 0.
        t46 = t46 + t48.
        IF t46 < 0.
          t46 = 0.
        ENDIF.
      ENDIF.
      IF t46 > t48 OR t47 <= 0.
        CLEAR t44.
      ELSE.
        IF t47 > t48 - t46.
          t47 = t48 - t46.
        ENDIF.
        t44 = t45+t46(t47).
      ENDIF.
      DATA(t49) = |!|.
      t43 = xsdbool( t44 = t49 ).
      IF t43 = abap_true.
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE string.
        DATA(t52) = t36.
        t51 = t52.
        DATA(t53) = VALUE string( ).
        DATA(t54) = t51.
        DATA(t55) = 1.
        DATA t56 TYPE i.
        DATA(t57) = t51.
        DATA(t58) = strlen( t57 ).
        t56 = t58.
        DATA(t59) = strlen( t54 ).
        IF t55 < 0.
          t55 = t55 + t59.
          IF t55 < 0.
            t55 = 0.
          ENDIF.
        ENDIF.
        IF t55 > t59 OR t56 <= 0.
          CLEAR t53.
        ELSE.
          IF t56 > t59 - t55.
            t56 = t59 - t55.
          ENDIF.
          t53 = t54+t55(t56).
        ENDIF.
        t50 = t53.
        t36 = t50.
      ENDIF.
      DATA(t60) = t36.
      t35 = t60.
      t32 = t35.
      DATA(t61) = strlen( t32 ).
      t31 = t32.
      IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t31 TO UPPER CASE.
      ELSE.
        t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
      ENDIF.
      DATA(t62) = t19.
      t30 = xsdbool( t31 = t62 ).
      IF t30 = abap_true.
        DATA t63 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA(t65) = t28.
          t63 = t65.
        ELSE.
          DATA t66 TYPE REF TO zcl_lnt_class_constant.
          CLEAR t66.
          t63 = t66.
        ENDIF.
        result = t63.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t68 TYPE REF TO zif_lnt_interface_definition.
    DATA(t69) = t1.
    t68 = t69.
    t67 = t68->get_aliases( ).
    DATA t70 TYPE REF TO zcl_lnt_alias.
    CLEAR t70.
    DATA t71 TYPE REF TO object.
    CLEAR t71.
    LOOP AT t67->items INTO t71.
      t70 ?= t71.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = VALUE string( ).
      DATA(t74) = VALUE string( ).
      DATA t75 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t76) = t70.
      t75 = t76.
      DATA(t77) = VALUE string( ).
      DATA t78 TYPE string.
      DATA t79 TYPE string.
      DATA t80 TYPE REF TO zcl_lnt_abstract_token.
      DATA t81 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t82) = t75.
      t81 = t82->token.
      t80 = t81.
      DATA t83 TYPE string.
      DATA(t84) = t80.
      t83 = t84->str.
      t79 = t83.
      t78 = t79.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE string( ).
      DATA(t87) = t78.
      DATA(t88) = 0.
      DATA(t89) = 1.
      DATA(t90) = strlen( t87 ).
      IF t88 < 0.
        t88 = t88 + t90.
        IF t88 < 0.
          t88 = 0.
        ENDIF.
      ENDIF.
      IF t88 > t90 OR t89 <= 0.
        CLEAR t86.
      ELSE.
        IF t89 > t90 - t88.
          t89 = t90 - t88.
        ENDIF.
        t86 = t87+t88(t89).
      ENDIF.
      DATA(t91) = |!|.
      t85 = xsdbool( t86 = t91 ).
      IF t85 = abap_true.
        DATA(t92) = VALUE string( ).
        DATA t93 TYPE string.
        DATA(t94) = t78.
        t93 = t94.
        DATA(t95) = VALUE string( ).
        DATA(t96) = t93.
        DATA(t97) = 1.
        DATA t98 TYPE i.
        DATA(t99) = t93.
        DATA(t100) = strlen( t99 ).
        t98 = t100.
        DATA(t101) = strlen( t96 ).
        IF t97 < 0.
          t97 = t97 + t101.
          IF t97 < 0.
            t97 = 0.
          ENDIF.
        ENDIF.
        IF t97 > t101 OR t98 <= 0.
          CLEAR t95.
        ELSE.
          IF t98 > t101 - t97.
            t98 = t101 - t97.
          ENDIF.
          t95 = t96+t97(t98).
        ENDIF.
        t92 = t95.
        t78 = t92.
      ENDIF.
      DATA(t102) = t78.
      t77 = t102.
      t74 = t77.
      DATA(t103) = strlen( t74 ).
      t73 = t74.
      IF t73 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t73 TO UPPER CASE.
      ELSE.
        t73 = zlnt_runtime_uppe_91169605024d=>full( t73 ).
      ENDIF.
      DATA(t104) = t19.
      t72 = xsdbool( t73 = t104 ).
      IF t72 = abap_true.
        DATA t105 TYPE string.
        DATA t106 TYPE string.
        DATA t107 TYPE REF TO zcl_lnt_alias.
        DATA(t108) = t70.
        t107 = t108.
        DATA t109 TYPE string.
        DATA(t110) = t107.
        t109 = t110->component.
        t106 = t109.
        t105 = t106.
        DATA t111 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t111.
        DATA t112 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t112.
        DATA t113 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t113.
        DATA t114 TYPE REF TO zcl_lnt_current_scope.
        DATA(t115) = me->scope.
        t114 = t115.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA(t118) = abap_true.
        IF t118 = abap_true.
          DATA(t119) = VALUE string( ).
          DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t121) = t105.
          DATA(t122) = |~|.
          DATA(t123) = strlen( t121 ).
          DATA t124 TYPE i.
          DATA(t125) = VALUE i( ).
          DATA(t126) = VALUE i( ).
          DATA t127 TYPE i.
          DATA(t128) = VALUE string( ).
          CREATE OBJECT t120.
          t127 = strlen( t122 ).
          t124 = 0.
          IF t127 = 0.
            WHILE t124 < t123.
              t128 = t121+t124(1).
              APPEND t128 TO t120->items.
              t124 = t124 + 1.
            ENDWHILE.
          ELSE.
            WHILE t124 <= t123.
              FIND FIRST OCCURRENCE OF t122 IN SECTION OFFSET t124 OF t121 MATCH OFFSET t125.
              IF sy-subrc = 0.
                t126 = t125 - t124.
              ELSE.
                t125 = -1.
                t126 = t123 - t124.
              ENDIF.
              CLEAR t128.
              IF t126 > 0.
                t128 = t121+t124(t126).
              ENDIF.
              APPEND t128 TO t120->items.
              IF t125 < 0.
                EXIT.
              ENDIF.
              t124 = t125 + t127.
            ENDWHILE.
          ENDIF.
          READ TABLE t120->items INDEX 1 INTO t119.
          DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t129->has = abap_true.
          t129->value = t119.
          t117 = t129.
        ELSE.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          t117 = t130.
        ENDIF.
        t116 = t117.
        DATA t131 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t131.
        DATA(t132) = VALUE abap_bool( ).
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t134) = t116.
        t133 = t134.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        t135 = t136.
        DATA(t137) = VALUE abap_bool( ).
        DATA(t138) = t133.
        IF t138 IS INITIAL.
          t137 = abap_true.
        ELSEIF t138->has = abap_false.
          t137 = abap_true.
        ENDIF.
        t132 = t137.
        IF t132 = abap_true.
          DATA t139 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t139.
          t131 = t139.
        ELSE.
          DATA t140 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t140.
          DATA t141 TYPE REF TO zif_lnt_class_definition.
          CLEAR t141.
          DATA t142 TYPE REF TO zif_lnt_class_definition.
          CLEAR t142.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          DATA(t145) = abap_true.
          IF t145 = abap_true.
            DATA t146 TYPE string.
            DATA(t147) = t116.
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
          t143 = t144.
          DATA t150 TYPE REF TO zif_lnt_class_definition.
          CLEAR t150.
          DATA(t151) = VALUE abap_bool( ).
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t153) = t143.
          t152 = t153.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          t154 = t155.
          DATA(t156) = VALUE abap_bool( ).
          DATA(t157) = t152.
          IF t157 IS INITIAL.
            t156 = abap_true.
          ELSEIF t157->has = abap_false.
            t156 = abap_true.
          ENDIF.
          t151 = t156.
          IF t151 = abap_true.
            DATA t158 TYPE REF TO zif_lnt_class_definition.
            CLEAR t158.
            t150 = t158.
          ELSE.
            DATA t159 TYPE REF TO zif_lnt_class_definition.
            CLEAR t159.
            DATA t160 TYPE REF TO zif_lnt_class_definition.
            CLEAR t160.
            DATA t161 TYPE REF TO zif_lnt_class_definition.
            CLEAR t161.
            DATA t162 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t163 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t164) = t114.
            t163 = t164->current.
            t162 = t163.
            DATA t165 TYPE REF TO zif_lnt_class_definition.
            CLEAR t165.
            DATA(t166) = VALUE abap_bool( ).
            DATA(t167) = t162.
            IF t167 IS INITIAL.
              t166 = abap_true.
            ENDIF.
            IF t166 = abap_true.
              DATA t168 TYPE REF TO zif_lnt_class_definition.
              CLEAR t168.
              t165 = t168.
            ELSE.
              DATA t169 TYPE REF TO zif_lnt_class_definition.
              DATA t170 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t171) = t162.
              t170 = t171.
              DATA t172 TYPE string.
              DATA(t173) = t143.
              t172 = t173->value.
              t169 = t170->find_class_definition( i_name = t172 ).
              t165 = t169.
            ENDIF.
            t161 = t165.
            t160 = t161.
            DATA t174 TYPE REF TO zif_lnt_class_definition.
            CLEAR t174.
            DATA t175 TYPE abap_bool.
            DATA(t176) = t160.
            t175 = xsdbool( t176 IS BOUND ).
            IF t175 = abap_true.
              DATA t177 TYPE REF TO zif_lnt_class_definition.
              CLEAR t177.
              DATA(t178) = abap_true.
              IF t178 = abap_true.
                DATA t179 TYPE REF TO zif_lnt_class_definition.
                DATA(t180) = t160.
                t179 = t180.
                t177 = t179.
              ELSE.
                DATA t181 TYPE REF TO zif_lnt_class_definition.
                CLEAR t181.
                t177 = t181.
              ENDIF.
              t174 = t177.
            ELSE.
              DATA t182 TYPE REF TO zif_lnt_class_definition.
              CLEAR t182.
              DATA t183 TYPE REF TO zcl_lnt_class.
              CLEAR t183.
              DATA t184 TYPE REF TO zcl_lnt_class.
              CLEAR t184.
              DATA t185 TYPE REF TO zif_lnt_object.
              CLEAR t185.
              DATA t186 TYPE REF TO zif_lnt_registry.
              DATA(t187) = t114.
              t186 = t187->reg.
              DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t188.
              DATA(t189) = abap_true.
              IF t189 = abap_true.
                DATA(t190) = |CLAS|.
                DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t191->has = abap_true.
                t191->value = t190.
                t188 = t191.
              ELSE.
                DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t192.
                t188 = t192.
              ENDIF.
              DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t193.
              DATA(t194) = abap_true.
              IF t194 = abap_true.
                DATA t195 TYPE string.
                DATA(t196) = t143.
                t195 = t196->value.
                DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t197->has = abap_true.
                t197->value = t195.
                t193 = t197.
              ELSE.
                DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t198.
                t193 = t198.
              ENDIF.
              t185 = t186->get_object( i_type_9913 = t188 i_name = t193 ).
              DATA t199 TYPE REF TO object.
              t199 = t185.
              t184 ?= t199.
              t183 = t184.
              DATA t200 TYPE REF TO zif_lnt_class_definition.
              CLEAR t200.
              DATA t201 TYPE abap_bool.
              DATA(t202) = t183.
              t201 = xsdbool( t202 IS BOUND ).
              IF t201 = abap_true.
                DATA t203 TYPE REF TO zif_lnt_class_definition.
                DATA t204 TYPE REF TO zcl_lnt_class.
                DATA(t205) = t183.
                t204 = t205.
                t203 = t204->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t200 = t203.
              ELSE.
                DATA t206 TYPE REF TO zif_lnt_class_definition.
                CLEAR t206.
                t200 = t206.
              ENDIF.
              t182 = t200.
              t174 = t182.
            ENDIF.
            t159 = t174.
            t150 = t159.
          ENDIF.
          t142 = t150.
          t141 = t142.
          DATA t207 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t207.
          DATA t208 TYPE abap_bool.
          DATA(t209) = t141.
          t208 = xsdbool( t209 IS BOUND ).
          IF t208 = abap_true.
            DATA t210 TYPE REF TO zif_lnt_interface_definition.
            DATA t211 TYPE REF TO zif_lnt_class_definition.
            DATA(t212) = t141.
            t211 = t212.
            t210 ?= t211.
            t207 = t210.
          ELSE.
            DATA t213 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t213.
            DATA t214 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t214.
            DATA t215 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t215.
            DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t216.
            DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t217.
            DATA(t218) = abap_true.
            IF t218 = abap_true.
              DATA t219 TYPE string.
              DATA(t220) = t116.
              t219 = t220->value.
              DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t221->has = abap_true.
              t221->value = t219.
              t217 = t221.
            ELSE.
              DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t222.
              t217 = t222.
            ENDIF.
            t216 = t217.
            DATA t223 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t223.
            DATA(t224) = VALUE abap_bool( ).
            DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t226) = t216.
            t225 = t226.
            DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t228.
            t227 = t228.
            DATA(t229) = VALUE abap_bool( ).
            DATA(t230) = t225.
            IF t230 IS INITIAL.
              t229 = abap_true.
            ELSEIF t230->has = abap_false.
              t229 = abap_true.
            ENDIF.
            t224 = t229.
            IF t224 = abap_true.
              DATA t231 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t231.
              t223 = t231.
            ELSE.
              DATA t232 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t232.
              DATA t233 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t233.
              DATA t234 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t234.
              DATA t235 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t236 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t237) = t114.
              t236 = t237->current.
              t235 = t236.
              DATA t238 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t238.
              DATA(t239) = VALUE abap_bool( ).
              DATA(t240) = t235.
              IF t240 IS INITIAL.
                t239 = abap_true.
              ENDIF.
              IF t239 = abap_true.
                DATA t241 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t241.
                t238 = t241.
              ELSE.
                DATA t242 TYPE REF TO zif_lnt_interface_definition.
                DATA t243 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t244) = t235.
                t243 = t244.
                DATA t245 TYPE string.
                DATA(t246) = t216.
                t245 = t246->value.
                t242 = t243->find_interface_definition( i_name = t245 ).
                t238 = t242.
              ENDIF.
              t234 = t238.
              t233 = t234.
              DATA t247 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t247.
              DATA t248 TYPE abap_bool.
              DATA(t249) = t233.
              t248 = xsdbool( t249 IS BOUND ).
              IF t248 = abap_true.
                DATA t250 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t250.
                DATA(t251) = abap_true.
                IF t251 = abap_true.
                  DATA t252 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t253) = t233.
                  t252 = t253.
                  t250 = t252.
                ELSE.
                  DATA t254 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t254.
                  t250 = t254.
                ENDIF.
                t247 = t250.
              ELSE.
                DATA t255 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t255.
                DATA t256 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t256.
                DATA t257 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t257.
                DATA t258 TYPE REF TO zif_lnt_object.
                CLEAR t258.
                DATA t259 TYPE REF TO zif_lnt_registry.
                DATA(t260) = t114.
                t259 = t260->reg.
                DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t261.
                DATA(t262) = abap_true.
                IF t262 = abap_true.
                  DATA(t263) = |INTF|.
                  DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t264->has = abap_true.
                  t264->value = t263.
                  t261 = t264.
                ELSE.
                  DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t265.
                  t261 = t265.
                ENDIF.
                DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t266.
                DATA(t267) = abap_true.
                IF t267 = abap_true.
                  DATA t268 TYPE string.
                  DATA(t269) = t216.
                  t268 = t269->value.
                  DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t270->has = abap_true.
                  t270->value = t268.
                  t266 = t270.
                ELSE.
                  DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t271.
                  t266 = t271.
                ENDIF.
                t258 = t259->get_object( i_type_9913 = t261 i_name = t266 ).
                DATA t272 TYPE REF TO object.
                t272 = t258.
                t257 ?= t272.
                t256 = t257.
                DATA t273 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t273.
                DATA t274 TYPE abap_bool.
                DATA(t275) = t256.
                t274 = xsdbool( t275 IS BOUND ).
                IF t274 = abap_true.
                  DATA t276 TYPE REF TO zif_lnt_interface_definition.
                  DATA t277 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t278 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t279) = t256.
                  t278 = t279.
                  t277 = t278.
                  DATA t280 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t281) = t277.
                  t280 = t281->def.
                  t276 = t280.
                  t273 = t276.
                ELSE.
                  DATA t282 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t282.
                  t273 = t282.
                ENDIF.
                t255 = t273.
                t247 = t255.
              ENDIF.
              t232 = t247.
              t223 = t232.
            ENDIF.
            t215 = t223.
            t214 = t215.
            DATA t283 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t283.
            DATA t284 TYPE abap_bool.
            DATA(t285) = t214.
            t284 = xsdbool( t285 IS BOUND ).
            IF t284 = abap_true.
              DATA t286 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t286.
              DATA(t287) = abap_true.
              IF t287 = abap_true.
                DATA t288 TYPE REF TO zif_lnt_interface_definition.
                DATA(t289) = t214.
                t288 = t289.
                t286 = t288.
              ELSE.
                DATA t290 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t290.
                t286 = t290.
              ENDIF.
              t283 = t286.
            ELSE.
              DATA t291 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t291.
              t283 = t291.
            ENDIF.
            t213 = t283.
            t207 = t213.
          ENDIF.
          t140 = t207.
          t131 = t140.
        ENDIF.
        t113 = t131.
        DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t292.
        DATA(t293) = abap_true.
        IF t293 = abap_true.
          DATA(t294) = VALUE string( ).
          DATA t295 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t296) = t105.
          DATA(t297) = |~|.
          DATA(t298) = strlen( t296 ).
          DATA t299 TYPE i.
          DATA(t300) = VALUE i( ).
          DATA(t301) = VALUE i( ).
          DATA t302 TYPE i.
          DATA(t303) = VALUE string( ).
          CREATE OBJECT t295.
          t302 = strlen( t297 ).
          t299 = 0.
          IF t302 = 0.
            WHILE t299 < t298.
              t303 = t296+t299(1).
              APPEND t303 TO t295->items.
              t299 = t299 + 1.
            ENDWHILE.
          ELSE.
            WHILE t299 <= t298.
              FIND FIRST OCCURRENCE OF t297 IN SECTION OFFSET t299 OF t296 MATCH OFFSET t300.
              IF sy-subrc = 0.
                t301 = t300 - t299.
              ELSE.
                t300 = -1.
                t301 = t298 - t299.
              ENDIF.
              CLEAR t303.
              IF t301 > 0.
                t303 = t296+t299(t301).
              ENDIF.
              APPEND t303 TO t295->items.
              IF t300 < 0.
                EXIT.
              ENDIF.
              t299 = t300 + t302.
            ENDWHILE.
          ENDIF.
          READ TABLE t295->items INDEX 2 INTO t294.
          DATA(t304) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t304->has = abap_true.
          t304->value = t294.
          t292 = t304.
        ELSE.
          DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t305.
          t292 = t305.
        ENDIF.
        t112 = me->search_constant_name( i_def = t113 i_name = t292 ).
        t111 = t112.
        DATA t306 TYPE abap_bool.
        DATA(t307) = t111.
        t306 = xsdbool( t307 IS BOUND ).
        IF t306 = abap_true.
          DATA t308 TYPE REF TO zcl_lnt_class_constant.
          CLEAR t308.
          DATA(t309) = abap_true.
          IF t309 = abap_true.
            DATA t310 TYPE REF TO zcl_lnt_class_constant.
            DATA(t311) = t111.
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
    ENDLOOP.
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
      LOOP AT t334->items INTO t338.
        t337 ?= t338.
        DATA(t339) = VALUE abap_bool( ).
        DATA t340 TYPE string.
        DATA t341 TYPE string.
        DATA(t342) = t337.
        t341 = t342->name.
        DATA(t343) = strlen( t341 ).
        t340 = t341.
        IF t340 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t340 TO UPPER CASE.
        ELSE.
          t340 = zlnt_runtime_uppe_91169605024d=>full( t340 ).
        ENDIF.
        DATA(t344) = t320.
        t339 = xsdbool( t340 = t344 ).
        IF t339 = abap_true.
          DATA(t345) = abap_true.
          t332 = t345.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA(t346) = t332.
      t331 = t346.
      IF t331 = abap_true.
        DATA t347 TYPE REF TO zcl_lnt_class_constant.
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
          DATA(t354) = t320.
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
        DATA(t418) = abap_true.
        IF t418 = abap_true.
          DATA(t419) = VALUE string( ).
          DATA t420 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t421 TYPE string.
          DATA(t422) = t2.
          t421 = t422->value.
          DATA(t423) = |~|.
          DATA(t424) = strlen( t421 ).
          DATA t425 TYPE i.
          DATA(t426) = VALUE i( ).
          DATA(t427) = VALUE i( ).
          DATA t428 TYPE i.
          DATA(t429) = VALUE string( ).
          CREATE OBJECT t420.
          t428 = strlen( t423 ).
          t425 = 0.
          IF t428 = 0.
            WHILE t425 < t424.
              t429 = t421+t425(1).
              APPEND t429 TO t420->items.
              t425 = t425 + 1.
            ENDWHILE.
          ELSE.
            WHILE t425 <= t424.
              FIND FIRST OCCURRENCE OF t423 IN SECTION OFFSET t425 OF t421 MATCH OFFSET t426.
              IF sy-subrc = 0.
                t427 = t426 - t425.
              ELSE.
                t426 = -1.
                t427 = t424 - t425.
              ENDIF.
              CLEAR t429.
              IF t427 > 0.
                t429 = t421+t425(t427).
              ENDIF.
              APPEND t429 TO t420->items.
              IF t426 < 0.
                EXIT.
              ENDIF.
              t425 = t426 + t428.
            ENDWHILE.
          ENDIF.
          READ TABLE t420->items INDEX 2 INTO t419.
          DATA(t430) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t430->has = abap_true.
          t430->value = t419.
          t417 = t430.
        ELSE.
          DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t431.
          t417 = t431.
        ENDIF.
        t347 = me->search_constant_name( i_def = t348 i_name = t417 ).
        result = t347.
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
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t20.
      t18 = NEW zcl_lnt_shape_a38e878f( i_method = t19 i_def = t20 ).
      result = t18.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zif_lnt_method_definition.
    DATA t22 TYPE REF TO zif_lnt_method_definition.
    DATA t23 TYPE REF TO zif_lnt_interface_definition.
    DATA(t24) = t1.
    t23 = t24.
    DATA t25 TYPE string.
    DATA(t26) = t2.
    t25 = t26->value.
    t22 = me->find_method( i_def = t23 i_method_name = t25 ).
    t21 = t22.
    DATA t27 TYPE abap_bool.
    DATA(t28) = t21.
    t27 = xsdbool( t28 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t29.
      DATA t30 TYPE REF TO zif_lnt_method_definition.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA t32 TYPE REF TO zif_lnt_method_definition.
        DATA(t33) = t21.
        t32 = t33.
        t30 = t32.
      ELSE.
        DATA t34 TYPE REF TO zif_lnt_method_definition.
        CLEAR t34.
        t30 = t34.
      ENDIF.
      DATA t35 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t35.
      DATA(t36) = abap_true.
      IF t36 = abap_true.
        DATA t37 TYPE REF TO zif_lnt_interface_definition.
        DATA(t38) = t1.
        t37 = t38.
        t35 = t37.
      ELSE.
        DATA t39 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t39.
        t35 = t39.
      ENDIF.
      t29 = NEW zcl_lnt_shape_a38e878f( i_method = t30 i_def = t35 ).
      result = t29.
      RETURN.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = VALUE i( ).
    DATA t44 TYPE string.
    DATA(t45) = t2.
    t44 = t45->value.
    DATA(t46) = |~|.
    DATA(t47) = strlen( t44 ).
    IF t46 IS INITIAL.
      t43 = 0.
    ELSE.
      FIND t46 IN t44 MATCH OFFSET t43.
      IF sy-subrc <> 0.
        t43 = -1.
      ENDIF.
    ENDIF.
    DATA(t48) = 0.
    t42 = xsdbool( t43 >= t48 ).
    IF t42 = abap_true.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA(t50) = abap_true.
      IF t50 = abap_true.
        DATA(t51) = VALUE string( ).
        DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t53 TYPE string.
        DATA(t54) = t2.
        t53 = t54->value.
        DATA(t55) = |~|.
        DATA(t56) = strlen( t53 ).
        DATA t57 TYPE i.
        DATA(t58) = VALUE i( ).
        DATA(t59) = VALUE i( ).
        DATA t60 TYPE i.
        DATA(t61) = VALUE string( ).
        CREATE OBJECT t52.
        t60 = strlen( t55 ).
        t57 = 0.
        IF t60 = 0.
          WHILE t57 < t56.
            t61 = t53+t57(1).
            APPEND t61 TO t52->items.
            t57 = t57 + 1.
          ENDWHILE.
        ELSE.
          WHILE t57 <= t56.
            FIND FIRST OCCURRENCE OF t55 IN SECTION OFFSET t57 OF t53 MATCH OFFSET t58.
            IF sy-subrc = 0.
              t59 = t58 - t57.
            ELSE.
              t58 = -1.
              t59 = t56 - t57.
            ENDIF.
            CLEAR t61.
            IF t59 > 0.
              t61 = t53+t57(t59).
            ENDIF.
            APPEND t61 TO t52->items.
            IF t58 < 0.
              EXIT.
            ENDIF.
            t57 = t58 + t60.
          ENDWHILE.
        ENDIF.
        READ TABLE t52->items INDEX 1 INTO t51.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t51.
        t49 = t62.
      ELSE.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        t49 = t63.
      ENDIF.
      t40 = t49.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = t40.
      IF t66 IS BOUND.
        IF t66->has = abap_true.
          t65 = xsdbool( strlen( t66->value ) > 0 ).
        ENDIF.
      ENDIF.
      t64 = t65.
      IF t65 = abap_true.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = VALUE abap_bool( ).
        DATA t69 TYPE abap_bool.
        DATA(t70) = abap_false.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t72 TYPE REF TO zif_lnt_interface_definition.
        DATA(t73) = t1.
        t72 = t73.
        t71 = me->find_interfaces( i_cd = t72 ).
        DATA t74 TYPE REF TO zcl_lnt_iimplementing.
        CLEAR t74.
        DATA t75 TYPE REF TO object.
        CLEAR t75.
        LOOP AT t71->items INTO t75.
          t74 ?= t75.
          DATA(t76) = VALUE abap_bool( ).
          DATA t77 TYPE string.
          DATA t78 TYPE string.
          DATA(t79) = t74.
          t78 = t79->name.
          DATA(t80) = strlen( t78 ).
          t77 = t78.
          IF t77 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t77 TO UPPER CASE.
          ELSE.
            t77 = zlnt_runtime_uppe_91169605024d=>full( t77 ).
          ENDIF.
          DATA t81 TYPE string.
          DATA t82 TYPE string.
          DATA(t83) = t40.
          t82 = t83->value.
          DATA(t84) = strlen( t82 ).
          t81 = t82.
          IF t81 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t81 TO UPPER CASE.
          ELSE.
            t81 = zlnt_runtime_uppe_91169605024d=>full( t81 ).
          ENDIF.
          t76 = xsdbool( t77 = t81 ).
          IF t76 = abap_true.
            DATA(t85) = abap_true.
            t69 = t85.
            EXIT.
          ENDIF.
        ENDLOOP.
        DATA(t86) = t69.
        t68 = t86.
        DATA(t87) = abap_false.
        t67 = xsdbool( t68 = t87 ).
        t64 = t67.
      ENDIF.
      IF t64 = abap_true.
        DATA t88 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t89 TYPE REF TO zif_lnt_method_definition.
        CLEAR t89.
        DATA t90 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t90.
        t88 = NEW zcl_lnt_shape_a38e878f( i_method = t89 i_def = t90 ).
        result = t88.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t91) = VALUE abap_bool( ).
    DATA(t92) = VALUE abap_bool( ).
    DATA t93 TYPE REF TO zif_lnt_method_definition.
    DATA(t94) = t21.
    t93 = t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    t95 = t96.
    DATA(t97) = VALUE abap_bool( ).
    DATA(t98) = t93.
    IF t98 IS INITIAL.
      t97 = abap_true.
    ENDIF.
    t92 = t97.
    t91 = t92.
    IF t92 = abap_true.
      DATA(t99) = VALUE abap_bool( ).
      DATA(t100) = t40.
      IF t100 IS BOUND.
        IF t100->has = abap_true.
          t99 = xsdbool( strlen( t100->value ) > 0 ).
        ENDIF.
      ENDIF.
      t91 = t99.
    ENDIF.
    IF t91 = abap_true.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t101.
      DATA(t102) = abap_true.
      IF t102 = abap_true.
        DATA(t103) = VALUE string( ).
        DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t105 TYPE string.
        DATA(t106) = t2.
        t105 = t106->value.
        DATA(t107) = |~|.
        DATA(t108) = strlen( t105 ).
        DATA t109 TYPE i.
        DATA(t110) = VALUE i( ).
        DATA(t111) = VALUE i( ).
        DATA t112 TYPE i.
        DATA(t113) = VALUE string( ).
        CREATE OBJECT t104.
        t112 = strlen( t107 ).
        t109 = 0.
        IF t112 = 0.
          WHILE t109 < t108.
            t113 = t105+t109(1).
            APPEND t113 TO t104->items.
            t109 = t109 + 1.
          ENDWHILE.
        ELSE.
          WHILE t109 <= t108.
            FIND FIRST OCCURRENCE OF t107 IN SECTION OFFSET t109 OF t105 MATCH OFFSET t110.
            IF sy-subrc = 0.
              t111 = t110 - t109.
            ELSE.
              t110 = -1.
              t111 = t108 - t109.
            ENDIF.
            CLEAR t113.
            IF t111 > 0.
              t113 = t105+t109(t111).
            ENDIF.
            APPEND t113 TO t104->items.
            IF t110 < 0.
              EXIT.
            ENDIF.
            t109 = t110 + t112.
          ENDWHILE.
        ENDIF.
        READ TABLE t104->items INDEX 2 INTO t103.
        DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t114->has = abap_true.
        t114->value = t103.
        t101 = t114.
      ELSE.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        t101 = t115.
      ENDIF.
      t2 = t101.
      DATA t116 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t116.
      DATA t117 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t117.
      DATA t118 TYPE string.
      DATA t119 TYPE string.
      DATA(t120) = t40.
      t119 = t120->value.
      t118 = t119.
      DATA t121 TYPE string.
      DATA t122 TYPE string.
      DATA(t123) = t2.
      t122 = t123->value.
      t121 = t122.
      DATA t124 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t124.
      DATA t125 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t125.
      DATA t126 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t126.
      DATA t127 TYPE REF TO zcl_lnt_current_scope.
      DATA(t128) = me->scope.
      t127 = t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t129.
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t130.
      DATA(t131) = abap_true.
      IF t131 = abap_true.
        DATA(t132) = t118.
        DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t133->has = abap_true.
        t133->value = t132.
        t130 = t133.
      ELSE.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        t130 = t134.
      ENDIF.
      t129 = t130.
      DATA t135 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t135.
      DATA(t136) = VALUE abap_bool( ).
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t138) = t129.
      t137 = t138.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      t139 = t140.
      DATA(t141) = VALUE abap_bool( ).
      DATA(t142) = t137.
      IF t142 IS INITIAL.
        t141 = abap_true.
      ELSEIF t142->has = abap_false.
        t141 = abap_true.
      ENDIF.
      t136 = t141.
      IF t136 = abap_true.
        DATA t143 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t143.
        t135 = t143.
      ELSE.
        DATA t144 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t144.
        DATA t145 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t145.
        DATA t146 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t146.
        DATA t147 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t148 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t149) = t127.
        t148 = t149->current.
        t147 = t148.
        DATA t150 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t150.
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = t147.
        IF t152 IS INITIAL.
          t151 = abap_true.
        ENDIF.
        IF t151 = abap_true.
          DATA t153 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t153.
          t150 = t153.
        ELSE.
          DATA t154 TYPE REF TO zif_lnt_interface_definition.
          DATA t155 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t156) = t147.
          t155 = t156.
          DATA t157 TYPE string.
          DATA(t158) = t129.
          t157 = t158->value.
          t154 = t155->find_interface_definition( i_name = t157 ).
          t150 = t154.
        ENDIF.
        t146 = t150.
        t145 = t146.
        DATA t159 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t159.
        DATA t160 TYPE abap_bool.
        DATA(t161) = t145.
        t160 = xsdbool( t161 IS BOUND ).
        IF t160 = abap_true.
          DATA t162 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t162.
          DATA(t163) = abap_true.
          IF t163 = abap_true.
            DATA t164 TYPE REF TO zif_lnt_interface_definition.
            DATA(t165) = t145.
            t164 = t165.
            t162 = t164.
          ELSE.
            DATA t166 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t166.
            t162 = t166.
          ENDIF.
          t159 = t162.
        ELSE.
          DATA t167 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t167.
          DATA t168 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t168.
          DATA t169 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t169.
          DATA t170 TYPE REF TO zif_lnt_object.
          CLEAR t170.
          DATA t171 TYPE REF TO zif_lnt_registry.
          DATA(t172) = t127.
          t171 = t172->reg.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t173.
          DATA(t174) = abap_true.
          IF t174 = abap_true.
            DATA(t175) = |INTF|.
            DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t176->has = abap_true.
            t176->value = t175.
            t173 = t176.
          ELSE.
            DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t177.
            t173 = t177.
          ENDIF.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          DATA(t179) = abap_true.
          IF t179 = abap_true.
            DATA t180 TYPE string.
            DATA(t181) = t129.
            t180 = t181->value.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = t180.
            t178 = t182.
          ELSE.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t183.
            t178 = t183.
          ENDIF.
          t170 = t171->get_object( i_type_9913 = t173 i_name = t178 ).
          DATA t184 TYPE REF TO object.
          t184 = t170.
          t169 ?= t184.
          t168 = t169.
          DATA t185 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t185.
          DATA t186 TYPE abap_bool.
          DATA(t187) = t168.
          t186 = xsdbool( t187 IS BOUND ).
          IF t186 = abap_true.
            DATA t188 TYPE REF TO zif_lnt_interface_definition.
            DATA t189 TYPE REF TO zcl_lnt_ob_interface.
            DATA t190 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t191) = t168.
            t190 = t191.
            t189 = t190.
            DATA t192 TYPE REF TO zif_lnt_interface_definition.
            DATA(t193) = t189.
            t192 = t193->def.
            t188 = t192.
            t185 = t188.
          ELSE.
            DATA t194 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t194.
            t185 = t194.
          ENDIF.
          t167 = t185.
          t159 = t167.
        ENDIF.
        t144 = t159.
        t135 = t144.
      ENDIF.
      t126 = t135.
      t125 = t126.
      DATA t195 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t195.
      DATA t196 TYPE abap_bool.
      DATA(t197) = t125.
      t196 = xsdbool( t197 IS BOUND ).
      IF t196 = abap_true.
        DATA t198 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t198.
        DATA t199 TYPE REF TO zif_lnt_method_definition.
        CLEAR t199.
        DATA t200 TYPE REF TO zif_lnt_method_definition.
        CLEAR t200.
        DATA t201 TYPE REF TO zif_lnt_method_definitions.
        DATA t202 TYPE REF TO zif_lnt_interface_definition.
        DATA(t203) = t125.
        t202 = t203.
        t201 = t202->get_method_definitions( ).
        DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t204.
        DATA(t205) = abap_true.
        IF t205 = abap_true.
          DATA(t206) = t121.
          DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t207->has = abap_true.
          t207->value = t206.
          t204 = t207.
        ELSE.
          DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t208.
          t204 = t208.
        ENDIF.
        t200 = t201->get_by_name( i_name = t204 ).
        t199 = t200.
        DATA t209 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t209.
        DATA t210 TYPE abap_bool.
        DATA(t211) = t199.
        t210 = xsdbool( t211 IS BOUND ).
        IF t210 = abap_true.
          DATA t212 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t212.
          DATA(t213) = abap_true.
          IF t213 = abap_true.
            DATA t214 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t214.
            DATA t215 TYPE REF TO zif_lnt_method_definition.
            CLEAR t215.
            DATA(t216) = abap_true.
            IF t216 = abap_true.
              DATA t217 TYPE REF TO zif_lnt_method_definition.
              DATA(t218) = t199.
              t217 = t218.
              t215 = t217.
            ELSE.
              DATA t219 TYPE REF TO zif_lnt_method_definition.
              CLEAR t219.
              t215 = t219.
            ENDIF.
            DATA t220 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t220.
            DATA(t221) = abap_true.
            IF t221 = abap_true.
              DATA t222 TYPE REF TO zif_lnt_interface_definition.
              DATA(t223) = t125.
              t222 = t223.
              t220 = t222.
            ELSE.
              DATA t224 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t224.
              t220 = t224.
            ENDIF.
            t214 = NEW zcl_lnt_shape_a38e878f( i_method = t215 i_def = t220 ).
            t212 = t214.
          ELSE.
            DATA t225 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t225.
            t212 = t225.
          ENDIF.
          t209 = t212.
        ELSE.
          DATA t226 TYPE REF TO zcl_lnt_shape_a38e878f.
          DATA(t227) = t121.
          DATA t228 TYPE REF TO zif_lnt_interface_definition.
          DATA(t229) = t125.
          t228 = t229.
          t226 = me->find_method_via_alias( i_method_name = t227 i_def = t228 ).
          t209 = t226.
        ENDIF.
        t198 = t209.
        t195 = t198.
      ELSE.
        DATA t230 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t230.
        t195 = t230.
      ENDIF.
      t124 = t195.
      t117 = t124.
      t116 = t117.
      DATA t231 TYPE abap_bool.
      DATA(t232) = t116.
      t231 = xsdbool( t232 IS BOUND ).
      IF t231 = abap_true.
        DATA t233 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA(t234) = t116.
        t233 = t234.
        result = t233.
        RETURN.
      ENDIF.
    ELSE.
      DATA(t235) = VALUE abap_bool( ).
      DATA t236 TYPE REF TO zif_lnt_method_definition.
      DATA(t237) = t21.
      t236 = t237.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t239.
      t238 = t239.
      DATA(t240) = VALUE abap_bool( ).
      DATA(t241) = t236.
      IF t241 IS INITIAL.
        t240 = abap_true.
      ENDIF.
      t235 = t240.
      IF t235 = abap_true.
        DATA t242 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t243 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t244 TYPE string.
        DATA(t245) = t2.
        t244 = t245->value.
        DATA t246 TYPE REF TO zif_lnt_interface_definition.
        DATA(t247) = t1.
        t246 = t247.
        t243 = me->find_method_via_alias( i_method_name = t244 i_def = t246 ).
        t242 = t243.
        DATA t248 TYPE abap_bool.
        DATA(t249) = t242.
        t248 = xsdbool( t249 IS BOUND ).
        IF t248 = abap_true.
          DATA t250 TYPE REF TO zcl_lnt_shape_a38e878f.
          DATA(t251) = t242.
          t250 = t251.
          result = t250.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t254 TYPE REF TO zif_lnt_interface_definition.
    DATA(t255) = t1.
    t254 = t255.
    t253 = t254->get_super_class( ).
    t252 = t253.
    DATA(t256) = VALUE abap_bool( ).
    DATA(t257) = VALUE abap_bool( ).
    DATA t258 TYPE REF TO zif_lnt_method_definition.
    DATA(t259) = t21.
    t258 = t259.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    t260 = t261.
    DATA(t262) = VALUE abap_bool( ).
    DATA(t263) = t258.
    IF t263 IS INITIAL.
      t262 = abap_true.
    ENDIF.
    t257 = t262.
    t256 = t257.
    IF t257 = abap_true.
      DATA(t264) = VALUE abap_bool( ).
      DATA(t265) = t252.
      IF t265 IS BOUND.
        IF t265->has = abap_true.
          t264 = xsdbool( strlen( t265->value ) > 0 ).
        ENDIF.
      ENDIF.
      t256 = t264.
    ENDIF.
    IF t256 = abap_true.
      DATA t266 TYPE REF TO zcl_lnt_shape_a38e878f.
      CLEAR t266.
      DATA t267 TYPE REF TO zif_lnt_interface_definition.
      DATA t268 TYPE REF TO zif_lnt_class_definition.
      DATA t269 TYPE string.
      DATA(t270) = t252.
      t269 = t270->value.
      t268 = me->find_super_definition( i_name = t269 ).
      t267 ?= t268.
      DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t271.
      DATA(t272) = abap_true.
      IF t272 = abap_true.
        DATA t273 TYPE string.
        DATA(t274) = t2.
        t273 = t274->value.
        DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t275->has = abap_true.
        t275->value = t273.
        t271 = t275.
      ELSE.
        DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t276.
        t271 = t276.
      ENDIF.
      t266 = me->search_method_name( i_def = t267 i_name = t271 ).
      result = t266.
      RETURN.
    ENDIF.
    DATA t277 TYPE REF TO zcl_lnt_shape_a38e878f.
    DATA t278 TYPE REF TO zif_lnt_method_definition.
    CLEAR t278.
    DATA t279 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t279.
    t277 = NEW zcl_lnt_shape_a38e878f( i_method = t278 i_def = t279 ).
    result = t277.

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
    DATA(t15) = t6.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
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
        DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t33) = t24.
        t32 = t33.
        DATA t34 TYPE string.
        DATA(t35) = t6.
        t34 = t35->value.
        t31 = t32->find_class_definition( i_name = t34 ).
        t27 = t31.
      ENDIF.
      t23 = t27.
      t22 = t23.
      DATA t36 TYPE REF TO zif_lnt_class_definition.
      CLEAR t36.
      DATA t37 TYPE abap_bool.
      DATA(t38) = t22.
      t37 = xsdbool( t38 IS BOUND ).
      IF t37 = abap_true.
        DATA t39 TYPE REF TO zif_lnt_class_definition.
        CLEAR t39.
        DATA(t40) = abap_true.
        IF t40 = abap_true.
          DATA t41 TYPE REF TO zif_lnt_class_definition.
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
          DATA t57 TYPE string.
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
        t61 = t47.
        t46 ?= t61.
        t45 = t46.
        DATA t62 TYPE REF TO zif_lnt_class_definition.
        CLEAR t62.
        DATA t63 TYPE abap_bool.
        DATA(t64) = t45.
        t63 = xsdbool( t64 IS BOUND ).
        IF t63 = abap_true.
          DATA t65 TYPE REF TO zif_lnt_class_definition.
          DATA t66 TYPE REF TO zcl_lnt_class.
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
    DATA(t71) = t2.
    t70 = t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
        DATA t80 TYPE string.
        DATA t81 TYPE string.
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
      RAISE EXCEPTION t76.
    ENDIF.
    DATA t89 TYPE REF TO zif_lnt_class_definition.
    DATA(t90) = t2.
    t89 = t90.
    result = t89.

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
      LOOP AT t19->items INTO t23.
        t22 ?= t23.
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE int8.
        DATA t26 TYPE REF TO zcl_lnt_class_attribute.
        DATA(t27) = t22.
        t26 = t27.
        DATA t28 TYPE int8.
        DATA(t29) = t26.
        t28 = t29->visibility.
        t25 = t28.
        DATA(t30) = CONV int8( 1 ).
        t24 = xsdbool( t25 <> t30 ).
        IF t24 = abap_true.
          DATA t31 TYPE REF TO zcl_lnt_current_scope.
          DATA(t32) = me->scope.
          t31 = t32.
          DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t34) = t22.
          t33 = t34.
          DATA(t35) = VALUE abap_bool( ).
          DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t37) = t33.
          t36 = t37.
          DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t39.
          t38 = t39.
          DATA(t40) = VALUE abap_bool( ).
          DATA(t41) = t36.
          IF t41 IS INITIAL.
            t40 = abap_true.
          ENDIF.
          t35 = t40.
          IF t35 = abap_true.
          ELSE.
            DATA(t42) = t31.
            DATA(t43) = VALUE string( ).
            DATA t44 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t46) = t33.
            t45 = t46.
            t44 = t45.
            DATA(t47) = VALUE string( ).
            DATA t48 TYPE string.
            DATA t49 TYPE string.
            DATA t50 TYPE REF TO zcl_lnt_abstract_token.
            DATA t51 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t52) = t44.
            t51 = t52->token.
            t50 = t51.
            DATA t53 TYPE string.
            DATA(t54) = t50.
            t53 = t54->str.
            t49 = t53.
            t48 = t49.
            DATA(t55) = VALUE abap_bool( ).
            DATA(t56) = VALUE string( ).
            DATA(t57) = t48.
            DATA(t58) = 0.
            DATA(t59) = 1.
            DATA(t60) = strlen( t57 ).
            IF t58 < 0.
              t58 = t58 + t60.
              IF t58 < 0.
                t58 = 0.
              ENDIF.
            ENDIF.
            IF t58 > t60 OR t59 <= 0.
              CLEAR t56.
            ELSE.
              IF t59 > t60 - t58.
                t59 = t60 - t58.
              ENDIF.
              t56 = t57+t58(t59).
            ENDIF.
            DATA(t61) = |!|.
            t55 = xsdbool( t56 = t61 ).
            IF t55 = abap_true.
              DATA(t62) = VALUE string( ).
              DATA t63 TYPE string.
              DATA(t64) = t48.
              t63 = t64.
              DATA(t65) = VALUE string( ).
              DATA(t66) = t63.
              DATA(t67) = 1.
              DATA t68 TYPE i.
              DATA(t69) = t63.
              DATA(t70) = strlen( t69 ).
              t68 = t70.
              DATA(t71) = strlen( t66 ).
              IF t67 < 0.
                t67 = t67 + t71.
                IF t67 < 0.
                  t67 = 0.
                ENDIF.
              ENDIF.
              IF t67 > t71 OR t68 <= 0.
                CLEAR t65.
              ELSE.
                IF t68 > t71 - t67.
                  t68 = t71 - t67.
                ENDIF.
                t65 = t66+t67(t68).
              ENDIF.
              t62 = t65.
              t48 = t62.
            ENDIF.
            DATA(t72) = t48.
            t47 = t72.
            t43 = t47.
            DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t74) = t33.
            t73 = t74.
            t42->add_named_identifier( i_name = t43 i_identifier = t73 ).
          ENDIF.
        ENDIF.
      ENDLOOP.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t76 TYPE REF TO zif_lnt_attributes.
      DATA(t77) = t15.
      t76 = t77->get_attributes( ).
      t75 = t76->get_constants( ).
      DATA t78 TYPE REF TO zcl_lnt_class_constant.
      CLEAR t78.
      DATA t79 TYPE REF TO object.
      CLEAR t79.
      LOOP AT t75->items INTO t79.
        t78 ?= t79.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE int8.
        DATA t82 TYPE REF TO zcl_lnt_class_constant.
        DATA(t83) = t78.
        t82 = t83.
        DATA t84 TYPE int8.
        DATA(t85) = t82.
        t84 = t85->visibility.
        t81 = t84.
        DATA(t86) = CONV int8( 1 ).
        t80 = xsdbool( t81 <> t86 ).
        IF t80 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_current_scope.
          DATA(t88) = me->scope.
          t87 = t88.
          DATA t89 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t90) = t78.
          t89 = t90.
          DATA(t91) = VALUE abap_bool( ).
          DATA t92 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t93) = t89.
          t92 = t93.
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t95.
          t94 = t95.
          DATA(t96) = VALUE abap_bool( ).
          DATA(t97) = t92.
          IF t97 IS INITIAL.
            t96 = abap_true.
          ENDIF.
          t91 = t96.
          IF t91 = abap_true.
          ELSE.
            DATA(t98) = t87.
            DATA(t99) = VALUE string( ).
            DATA t100 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t102) = t89.
            t101 = t102.
            t100 = t101.
            DATA(t103) = VALUE string( ).
            DATA t104 TYPE string.
            DATA t105 TYPE string.
            DATA t106 TYPE REF TO zcl_lnt_abstract_token.
            DATA t107 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t108) = t100.
            t107 = t108->token.
            t106 = t107.
            DATA t109 TYPE string.
            DATA(t110) = t106.
            t109 = t110->str.
            t105 = t109.
            t104 = t105.
            DATA(t111) = VALUE abap_bool( ).
            DATA(t112) = VALUE string( ).
            DATA(t113) = t104.
            DATA(t114) = 0.
            DATA(t115) = 1.
            DATA(t116) = strlen( t113 ).
            IF t114 < 0.
              t114 = t114 + t116.
              IF t114 < 0.
                t114 = 0.
              ENDIF.
            ENDIF.
            IF t114 > t116 OR t115 <= 0.
              CLEAR t112.
            ELSE.
              IF t115 > t116 - t114.
                t115 = t116 - t114.
              ENDIF.
              t112 = t113+t114(t115).
            ENDIF.
            DATA(t117) = |!|.
            t111 = xsdbool( t112 = t117 ).
            IF t111 = abap_true.
              DATA(t118) = VALUE string( ).
              DATA t119 TYPE string.
              DATA(t120) = t104.
              t119 = t120.
              DATA(t121) = VALUE string( ).
              DATA(t122) = t119.
              DATA(t123) = 1.
              DATA t124 TYPE i.
              DATA(t125) = t119.
              DATA(t126) = strlen( t125 ).
              t124 = t126.
              DATA(t127) = strlen( t122 ).
              IF t123 < 0.
                t123 = t123 + t127.
                IF t123 < 0.
                  t123 = 0.
                ENDIF.
              ENDIF.
              IF t123 > t127 OR t124 <= 0.
                CLEAR t121.
              ELSE.
                IF t124 > t127 - t123.
                  t124 = t127 - t123.
                ENDIF.
                t121 = t122+t123(t124).
              ENDIF.
              t118 = t121.
              t104 = t118.
            ENDIF.
            DATA(t128) = t104.
            t103 = t128.
            t99 = t103.
            DATA t129 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t130) = t89.
            t129 = t130.
            t98->add_named_identifier( i_name = t99 i_identifier = t129 ).
          ENDIF.
        ENDIF.
      ENDLOOP.
      DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t132 TYPE REF TO zif_lnt_type_definitions.
      DATA(t133) = t15.
      t132 = t133->get_type_definitions( ).
      t131 = t132->get_all( ).
      DATA t134 TYPE REF TO zcl_lnt_type_definitions_entry.
      CLEAR t134.
      DATA t135 TYPE REF TO object.
      CLEAR t135.
      LOOP AT t131->items INTO t135.
        t134 ?= t135.
        DATA t136 TYPE abap_bool.
        DATA t137 TYPE int8.
        DATA(t138) = t134.
        t137 = t138->visibility.
        DATA(t139) = CONV int8( 1 ).
        t136 = xsdbool( t137 <> t139 ).
        IF t136 = abap_true.
          DATA t140 TYPE REF TO zcl_lnt_current_scope.
          DATA(t141) = me->scope.
          t140 = t141.
          DATA t142 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t142.
          DATA t143 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t143.
          DATA(t144) = abap_true.
          IF t144 = abap_true.
            DATA t145 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t146) = t134.
            t145 = t146->type_cba0.
            t143 = t145.
          ELSE.
            DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t147.
            t143 = t147.
          ENDIF.
          t142 = t143.
          DATA(t148) = VALUE abap_bool( ).
          DATA t149 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t150) = t142.
          t149 = t150.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          t151 = t152.
          DATA(t153) = VALUE abap_bool( ).
          DATA(t154) = t149.
          IF t154 IS INITIAL.
            t153 = abap_true.
          ENDIF.
          t148 = t153.
          IF t148 = abap_true.
          ELSE.
            DATA(t155) = t140.
            DATA(t156) = VALUE string( ).
            DATA t157 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t159) = t142.
            t158 = t159.
            t157 = t158.
            DATA(t160) = VALUE string( ).
            DATA t161 TYPE string.
            DATA t162 TYPE string.
            DATA t163 TYPE REF TO zcl_lnt_abstract_token.
            DATA t164 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t165) = t157.
            t164 = t165->token.
            t163 = t164.
            DATA t166 TYPE string.
            DATA(t167) = t163.
            t166 = t167->str.
            t162 = t166.
            t161 = t162.
            DATA(t168) = VALUE abap_bool( ).
            DATA(t169) = VALUE string( ).
            DATA(t170) = t161.
            DATA(t171) = 0.
            DATA(t172) = 1.
            DATA(t173) = strlen( t170 ).
            IF t171 < 0.
              t171 = t171 + t173.
              IF t171 < 0.
                t171 = 0.
              ENDIF.
            ENDIF.
            IF t171 > t173 OR t172 <= 0.
              CLEAR t169.
            ELSE.
              IF t172 > t173 - t171.
                t172 = t173 - t171.
              ENDIF.
              t169 = t170+t171(t172).
            ENDIF.
            DATA(t174) = |!|.
            t168 = xsdbool( t169 = t174 ).
            IF t168 = abap_true.
              DATA(t175) = VALUE string( ).
              DATA t176 TYPE string.
              DATA(t177) = t161.
              t176 = t177.
              DATA(t178) = VALUE string( ).
              DATA(t179) = t176.
              DATA(t180) = 1.
              DATA t181 TYPE i.
              DATA(t182) = t176.
              DATA(t183) = strlen( t182 ).
              t181 = t183.
              DATA(t184) = strlen( t179 ).
              IF t180 < 0.
                t180 = t180 + t184.
                IF t180 < 0.
                  t180 = 0.
                ENDIF.
              ENDIF.
              IF t180 > t184 OR t181 <= 0.
                CLEAR t178.
              ELSE.
                IF t181 > t184 - t180.
                  t181 = t184 - t180.
                ENDIF.
                t178 = t179+t180(t181).
              ENDIF.
              t175 = t178.
              t161 = t175.
            ENDIF.
            DATA(t185) = t161.
            t160 = t185.
            t156 = t160.
            DATA t186 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t186.
            DATA(t187) = abap_true.
            IF t187 = abap_true.
              DATA t188 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t189) = t142.
              t188 = t189.
              t186 = t188.
            ELSE.
              DATA t190 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t190.
              t186 = t190.
            ENDIF.
            t155->add_type_named( i_name = t156 i_type_9913 = t186 ).
          ENDIF.
        ENDIF.
      ENDLOOP.
      DATA(t191) = VALUE i( ).
      DATA t192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t192.
      DATA t193 TYPE REF TO zif_lnt_interface_definition.
      DATA(t194) = t15.
      t193 ?= t194.
      DATA t195 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t195.
      DATA(t196) = abap_true.
      IF t196 = abap_true.
        DATA(t197) = t5.
        t195 = t197.
      ELSE.
        DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t198.
        t195 = t198.
      ENDIF.
      t192 = me->from_interfaces( i_definition = t193 i_skip_34cc = t195 ).
      DATA(t199) = VALUE string( ).
      LOOP AT t192->items INTO t199.
        DATA(t200) = t5.
        DATA(t201) = t199.
        APPEND t201 TO t200->items.
      ENDLOOP.
      DATA t202 TYPE i.
      DATA(t203) = t5.
      t202 = lines( t203->items ).
      t191 = t202.
      DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t205) = t15.
      t204 = t205->get_super_class( ).
      t2 = t204.
    ENDDO.
    DATA(t206) = t5.
    result = t206.

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
    LOOP AT t4->items INTO t7.
      t6 ?= t7.
      DATA(t8) = VALUE string( ).
      DATA t9 TYPE string.
      DATA t10 TYPE string.
      DATA(t11) = t6.
      t10 = t11->name.
      DATA(t12) = strlen( t10 ).
      t9 = t10.
      IF t9 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t9 TO UPPER CASE.
      ELSE.
        t9 = zlnt_runtime_uppe_91169605024d=>full( t9 ).
      ENDIF.
      t8 = t9.
      DATA(t13) = t2.
      DATA(t14) = t8.
      APPEND t14 TO t13->items.
      DATA t15 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_current_scope.
      DATA(t18) = me->scope.
      t17 = t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA(t22) = t8.
        DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t23->has = abap_true.
        t23->value = t22.
        t20 = t23.
      ELSE.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        t20 = t24.
      ENDIF.
      t19 = t20.
      DATA t25 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t25.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t28) = t19.
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      t29 = t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t27.
      IF t32 IS INITIAL.
        t31 = abap_true.
      ELSEIF t32->has = abap_false.
        t31 = abap_true.
      ENDIF.
      t26 = t31.
      IF t26 = abap_true.
        DATA t33 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t33.
        t25 = t33.
      ELSE.
        DATA t34 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t34.
        DATA t35 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t35.
        DATA t36 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t36.
        DATA t37 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t39) = t17.
        t38 = t39->current.
        t37 = t38.
        DATA t40 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t40.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = t37.
        IF t42 IS INITIAL.
          t41 = abap_true.
        ENDIF.
        IF t41 = abap_true.
          DATA t43 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t43.
          t40 = t43.
        ELSE.
          DATA t44 TYPE REF TO zif_lnt_interface_definition.
          DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t46) = t37.
          t45 = t46.
          DATA t47 TYPE string.
          DATA(t48) = t19.
          t47 = t48->value.
          t44 = t45->find_interface_definition( i_name = t47 ).
          t40 = t44.
        ENDIF.
        t36 = t40.
        t35 = t36.
        DATA t49 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t49.
        DATA t50 TYPE abap_bool.
        DATA(t51) = t35.
        t50 = xsdbool( t51 IS BOUND ).
        IF t50 = abap_true.
          DATA t52 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t52.
          DATA(t53) = abap_true.
          IF t53 = abap_true.
            DATA t54 TYPE REF TO zif_lnt_interface_definition.
            DATA(t55) = t35.
            t54 = t55.
            t52 = t54.
          ELSE.
            DATA t56 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t56.
            t52 = t56.
          ENDIF.
          t49 = t52.
        ELSE.
          DATA t57 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t57.
          DATA t58 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t58.
          DATA t59 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t59.
          DATA t60 TYPE REF TO zif_lnt_object.
          CLEAR t60.
          DATA t61 TYPE REF TO zif_lnt_registry.
          DATA(t62) = t17.
          t61 = t62->reg.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          DATA(t64) = abap_true.
          IF t64 = abap_true.
            DATA(t65) = |INTF|.
            DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t66->has = abap_true.
            t66->value = t65.
            t63 = t66.
          ELSE.
            DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t67.
            t63 = t67.
          ENDIF.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          DATA(t69) = abap_true.
          IF t69 = abap_true.
            DATA t70 TYPE string.
            DATA(t71) = t19.
            t70 = t71->value.
            DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t72->has = abap_true.
            t72->value = t70.
            t68 = t72.
          ELSE.
            DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t73.
            t68 = t73.
          ENDIF.
          t60 = t61->get_object( i_type_9913 = t63 i_name = t68 ).
          DATA t74 TYPE REF TO object.
          t74 = t60.
          t59 ?= t74.
          t58 = t59.
          DATA t75 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t75.
          DATA t76 TYPE abap_bool.
          DATA(t77) = t58.
          t76 = xsdbool( t77 IS BOUND ).
          IF t76 = abap_true.
            DATA t78 TYPE REF TO zif_lnt_interface_definition.
            DATA t79 TYPE REF TO zcl_lnt_ob_interface.
            DATA t80 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t81) = t58.
            t80 = t81.
            t79 = t80.
            DATA t82 TYPE REF TO zif_lnt_interface_definition.
            DATA(t83) = t79.
            t82 = t83->def.
            t78 = t82.
            t75 = t78.
          ELSE.
            DATA t84 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t84.
            t75 = t84.
          ENDIF.
          t57 = t75.
          t49 = t57.
        ENDIF.
        t34 = t49.
        t25 = t34.
      ENDIF.
      t16 = t25.
      t15 = t16.
      DATA t85 TYPE abap_bool.
      DATA(t86) = t15.
      t85 = xsdbool( t86 IS BOUND ).
      IF t85 = abap_true.
        DATA(t87) = VALUE i( ).
        DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t89 TYPE REF TO zif_lnt_interface_definition.
        DATA(t90) = t15.
        t89 = t90.
        t88 = me->list_interfaces_recursive( i_definition = t89 ).
        DATA(t91) = VALUE string( ).
        LOOP AT t88->items INTO t91.
          DATA(t92) = t2.
          DATA(t93) = t91.
          APPEND t93 TO t92->items.
        ENDLOOP.
        DATA t94 TYPE i.
        DATA(t95) = t2.
        t94 = lines( t95->items ).
        t87 = t94.
      ENDIF.
    ENDLOOP.
    DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t98.
    t97 = t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t101) = t97.
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t103 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t104) = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA(t105) = t2.
    t103 = t104->fromarray( p0 = t105 ).
    t102 = t103->values( ).
    t100 = t101->concat( p0 = t102 ).
    t99 = t100.
    DATA(t106) = t99.
    t96 = t106.
    result = t96.

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
    LOOP AT t5->items INTO t8.
      t7 ?= t8.
      DATA(t9) = VALUE i( ).
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t10.
      DATA t11 TYPE string.
      DATA(t12) = t7.
      t11 = t12->name.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t13.
      DATA(t14) = t3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t17) = t2.
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      DATA t19 TYPE abap_bool.
      DATA(t20) = t16.
      t19 = xsdbool( t20 IS BOUND ).
      IF t19 = abap_true.
        DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t22) = t16.
        t21 = t22.
        t18 = t21.
      ELSE.
        DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t23.
        t18 = t23.
      ENDIF.
      t15 = t18.
      t13 = t14->concat( p0 = t15 ).
      t10 = me->from_interface_by_name( i_name = t11 i_ignore = t13 ).
      DATA(t24) = VALUE string( ).
      LOOP AT t10->items INTO t24.
        DATA(t25) = t3.
        DATA(t26) = t24.
        APPEND t26 TO t25->items.
      ENDLOOP.
      DATA t27 TYPE i.
      DATA(t28) = t3.
      t27 = lines( t28->items ).
      t9 = t27.
    ENDLOOP.
    DATA(t29) = t3.
    result = t29.

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

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d751_4d9c6e99dfab.
  ENDMETHOD.
ENDCLASS.
