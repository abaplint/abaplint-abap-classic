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
    me->scope = i_scope.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `scope`.
  ENDMETHOD.

  METHOD from_interface_by_name.
    DATA(t1) = i_name.
    DATA(t2) = i_ignore.
    DATA t3 TYPE REF TO zif_lnt_interface_definition.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    t5 = me->scope.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t11->has = abap_true.
    t11->value = t1.
    t7 = t11.
    DATA t13 TYPE REF TO zif_lnt_interface_definition.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t15 = t7.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = VALUE abap_bool( ).
    IF t15 IS INITIAL.
      t19 = abap_true.
    ELSEIF t15->has = abap_false.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
    ELSE.
      DATA t23 TYPE REF TO zif_lnt_interface_definition.
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t26 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t26 = t5->current.
      t25 = t26.
      DATA t28 TYPE REF TO zif_lnt_interface_definition.
      DATA(t29) = xsdbool( t25 IS INITIAL ).
      IF t29 = abap_true.
      ELSE.
        DATA t32 TYPE REF TO zif_lnt_interface_definition.
        DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t33 = t25.
        DATA t35 TYPE string.
        t35 = t7->value.
        t32 = t33->find_interface_definition( i_name = t35 ).
        t28 = t32.
      ENDIF.
      t23 = t28.
      DATA t37 TYPE REF TO zif_lnt_interface_definition.
      DATA t38 TYPE abap_bool.
      t38 = xsdbool( t23 IS BOUND ).
      IF t38 = abap_true.
        t37 = t23.
      ELSE.
        DATA t46 TYPE REF TO zcl_lnt_ob_interface.
        DATA t47 TYPE REF TO zcl_lnt_ob_interface.
        DATA t48 TYPE REF TO zif_lnt_object.
        DATA t49 TYPE REF TO zif_lnt_registry.
        t49 = t5->reg.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t53) = |INTF|.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t53.
        t51 = t54.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t58 TYPE string.
        t58 = t7->value.
        DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t60->has = abap_true.
        t60->value = t58.
        t56 = t60.
        t48 = t49->get_object( i_type_9913 = t51 i_name = t56 ).
        DATA t62 TYPE REF TO object.
        t62 = t48.
        t47 ?= t62.
        t46 = t47.
        DATA t63 TYPE REF TO zif_lnt_interface_definition.
        DATA t64 TYPE abap_bool.
        t64 = xsdbool( t46 IS BOUND ).
        IF t64 = abap_true.
          DATA t70 TYPE REF TO zif_lnt_interface_definition.
          t70 = t46->def.
          t63 = t70.
        ELSE.
          CLEAR t63.
        ENDIF.
        t37 = t63.
      ENDIF.
      t13 = t37.
    ENDIF.
    t3 = t13.
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t74 = xsdbool( t3 IS INITIAL ).
    t73 = t74.
    IF t74 = abap_false.
      DATA(t81) = VALUE abap_bool( ).
      DATA t83 TYPE string.
      DATA(t85) = strlen( t1 ).
      t83 = t1.
      IF t83 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t83 TO UPPER CASE.
      ELSE.
        t83 = zlnt_runtime_uppe_91169605024d=>full( t83 ).
      ENDIF.
      t81 = t2->includes( p0 = t83 ).
      t73 = t81.
    ENDIF.
    IF t73 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t86.
      result = t86.
      RETURN.
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t90.
    t89 = t90.
    DATA t92 TYPE string.
    DATA(t94) = strlen( t1 ).
    t92 = t1.
    IF t92 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t92 TO UPPER CASE.
    ELSE.
      t92 = zlnt_runtime_uppe_91169605024d=>full( t92 ).
    ENDIF.
    t89->load( ).
    APPEND t92 TO t89->items.
    t89->save( ).
    t87 = t89.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t97 TYPE REF TO zif_lnt_type_definitions.
    DATA t98 TYPE REF TO zif_lnt_interface_definition.
    t98 = t3.
    t97 = t98->get_type_definitions( ).
    t96 = t97->get_all( ).
    DATA t100 TYPE REF TO zcl_lnt_type_definitions_entry.
    DATA t101 TYPE REF TO object.
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
      DATA(t109) = |~|.
      DATA(t110) = strlen( t1 ).
      t107 = |{ t1 }{ t109 }|.
      DATA(t111) = VALUE string( ).
      DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
      t113 = t100->type_cba0.
      t112 = t113.
      DATA(t115) = VALUE string( ).
      DATA t116 TYPE string.
      DATA t119 TYPE REF TO zcl_lnt_abstract_token.
      t119 = t112->token.
      DATA t121 TYPE string.
      t121 = t119->str.
      t116 = t121.
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
        t131 = t116.
        DATA(t133) = VALUE string( ).
        DATA(t135) = 1.
        DATA t136 TYPE i.
        t136 = strlen( t131 ).
        DATA(t139) = strlen( t131 ).
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
          t133 = t131+t135(t136).
        ENDIF.
        t130 = t133.
        t116 = t130.
      ENDIF.
      t115 = t116.
      t111 = t115.
      DATA(t141) = strlen( t107 ).
      t106 = |{ t107 }{ t111 }|.
      t105 = t106.
      DATA t144 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t144.
      DATA t146 TYPE REF TO zcl_lnt_typed_identifier.
      t146 = t100->type_cba0.
      t144 = t146.
      me->scope->add_type_named( i_name = t105 i_type_9913 = t144 ).
    ENDDO.
    DATA(t149) = me->scope.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t151 TYPE REF TO zif_lnt_attributes.
    DATA t152 TYPE REF TO zif_lnt_interface_definition.
    t152 = t3.
    t151 = t152->get_attributes( ).
    t150 = t151->get_constants( ).
    DATA t154 TYPE string.
    DATA(t156) = |~|.
    DATA(t157) = strlen( t1 ).
    t154 = |{ t1 }{ t156 }|.
    t149->add_list_prefix( i_identifiers = t150 i_prefix = t154 ).
    DATA(t158) = me->scope.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zif_lnt_attributes.
    DATA t161 TYPE REF TO zif_lnt_interface_definition.
    t161 = t3.
    t160 = t161->get_attributes( ).
    t159 = t160->get_static( ).
    DATA t163 TYPE string.
    DATA(t165) = |~|.
    DATA(t166) = strlen( t1 ).
    t163 = |{ t1 }{ t165 }|.
    t158->add_list_prefix( i_identifiers = t159 i_prefix = t163 ).
    DATA(t167) = me->scope.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t169 TYPE REF TO zif_lnt_attributes.
    DATA t170 TYPE REF TO zif_lnt_interface_definition.
    t170 = t3.
    t169 = t170->get_attributes( ).
    t168 = t169->get_instance( ).
    DATA t172 TYPE string.
    DATA(t174) = |~|.
    DATA(t175) = strlen( t1 ).
    t172 = |{ t1 }{ t174 }|.
    t167->add_list_prefix( i_identifiers = t168 i_prefix = t172 ).
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t177 TYPE REF TO zif_lnt_interface_definition.
    t177 = t3.
    t176 = t177->get_implementing( ).
    DATA t179 TYPE REF TO zcl_lnt_iimplementing.
    DATA t180 TYPE REF TO object.
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
      DATA t186 TYPE string.
      DATA t187 TYPE string.
      t187 = t179->name.
      DATA(t189) = strlen( t187 ).
      t186 = t187.
      IF t186 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t186 TO UPPER CASE.
      ELSE.
        t186 = zlnt_runtime_uppe_91169605024d=>full( t186 ).
      ENDIF.
      t184 = t2->includes( p0 = t186 ).
      IF t184 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t190) = VALUE i( ).
      DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t192 TYPE string.
      t192 = t179->name.
      t191 = me->from_interface_by_name( i_name = t192 i_ignore = t2 ).
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
        t87->load( ).
        APPEND t195 TO t87->items.
        t87->save( ).
      ENDDO.
      DATA t199 TYPE i.
      t87->load( ).
      t199 = lines( t87->items ).
      t190 = t199.
      DATA t202 TYPE string.
      DATA t203 TYPE string.
      t203 = t179->name.
      DATA(t205) = strlen( t203 ).
      t202 = t203.
      IF t202 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t202 TO UPPER CASE.
      ELSE.
        t202 = zlnt_runtime_uppe_91169605024d=>full( t202 ).
      ENDIF.
      t2->load( ).
      APPEND t202 TO t2->items.
      t2->save( ).
      DATA t207 TYPE string.
      DATA t208 TYPE string.
      t208 = t179->name.
      DATA(t210) = strlen( t208 ).
      t207 = t208.
      IF t207 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t207 TO UPPER CASE.
      ELSE.
        t207 = zlnt_runtime_uppe_91169605024d=>full( t207 ).
      ENDIF.
      t87->load( ).
      APPEND t207 TO t87->items.
      t87->save( ).
    ENDDO.
    result = t87.

  ENDMETHOD.

  METHOD add_aliased_attributes.
    DATA(t1) = i_class_definition_ad05.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->get_aliases( ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t3 IS BOUND ).
    IF t7 = abap_true.
      t6 = t3.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      t6 = t10.
    ENDIF.
    t2 = t6.
    DATA t11 TYPE REF TO zcl_lnt_alias.
    DATA t12 TYPE REF TO object.
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
      DATA t20 TYPE string.
      t20 = t11->component.
      t16 = t20.
      DATA t22 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t22.
      DATA t24 TYPE REF TO zcl_lnt_current_scope.
      t24 = me->scope.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t30) = |~|.
      DATA(t31) = strlen( t16 ).
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
          t36 = t16+t32(1).
          APPEND t36 TO t28->items.
          t32 = t32 + 1.
        ENDWHILE.
      ELSE.
        WHILE t32 <= t31.
          FIND FIRST OCCURRENCE OF t30 IN SECTION OFFSET t32 OF t16 MATCH OFFSET t33.
          IF sy-subrc = 0.
            t34 = t33 - t32.
          ELSE.
            t33 = -1.
            t34 = t31 - t32.
          ENDIF.
          CLEAR t36.
          IF t34 > 0.
            t36 = t16+t32(t34).
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
      t40 = t26.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      DATA(t44) = VALUE abap_bool( ).
      IF t40 IS INITIAL.
        t44 = abap_true.
      ELSEIF t40->has = abap_false.
        t44 = abap_true.
      ENDIF.
      t39 = t44.
      IF t39 = abap_true.
        CLEAR t38.
      ELSE.
        DATA t48 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t48.
        DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t51 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t51 = t24->current.
        t50 = t51.
        DATA t53 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t53.
        DATA(t54) = xsdbool( t50 IS INITIAL ).
        IF t54 = abap_true.
          CLEAR t53.
        ELSE.
          DATA t57 TYPE REF TO zif_lnt_interface_definition.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t58 = t50.
          DATA t60 TYPE string.
          t60 = t26->value.
          t57 = t58->find_interface_definition( i_name = t60 ).
          t53 = t57.
        ENDIF.
        t48 = t53.
        DATA t62 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t62.
        DATA t63 TYPE abap_bool.
        t63 = xsdbool( t48 IS BOUND ).
        IF t63 = abap_true.
          t62 = t48.
        ELSE.
          DATA t71 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t72.
          DATA t73 TYPE REF TO zif_lnt_object.
          CLEAR t73.
          DATA t74 TYPE REF TO zif_lnt_registry.
          t74 = t24->reg.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t78) = |INTF|.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t78.
          t76 = t79.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA t83 TYPE string.
          t83 = t26->value.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = t83.
          t81 = t85.
          t73 = t74->get_object( i_type_9913 = t76 i_name = t81 ).
          DATA t87 TYPE REF TO object.
          t87 = t73.
          t72 ?= t87.
          t71 = t72.
          DATA t88 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t88.
          DATA t89 TYPE abap_bool.
          t89 = xsdbool( t71 IS BOUND ).
          IF t89 = abap_true.
            DATA t95 TYPE REF TO zif_lnt_interface_definition.
            t95 = t71->def.
            t88 = t95.
          ELSE.
            CLEAR t88.
          ENDIF.
          t62 = t88.
        ENDIF.
        t38 = t62.
      ENDIF.
      t22 = t38.
      DATA t98 TYPE abap_bool.
      t98 = xsdbool( t22 IS BOUND ).
      IF t98 = abap_true.
        DATA t100 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t100.
        DATA t101 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t101.
        DATA t102 TYPE REF TO zif_lnt_attributes.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        t103 = t22.
        t102 = t103->get_attributes( ).
        DATA(t105) = VALUE string( ).
        DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t108) = |~|.
        DATA(t109) = strlen( t16 ).
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
            t114 = t16+t110(1).
            APPEND t114 TO t106->items.
            t110 = t110 + 1.
          ENDWHILE.
        ELSE.
          WHILE t110 <= t109.
            FIND FIRST OCCURRENCE OF t108 IN SECTION OFFSET t110 OF t16 MATCH OFFSET t111.
            IF sy-subrc = 0.
              t112 = t111 - t110.
            ELSE.
              t111 = -1.
              t112 = t109 - t110.
            ENDIF.
            CLEAR t114.
            IF t112 > 0.
              t114 = t16+t110(t112).
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
        t115 = xsdbool( t100 IS BOUND ).
        IF t115 = abap_true.
          DATA(t118) = VALUE string( ).
          DATA t119 TYPE REF TO zcl_lnt_fi_identifier.
          t119 = t11.
          DATA(t121) = VALUE string( ).
          DATA t122 TYPE string.
          DATA t125 TYPE REF TO zcl_lnt_abstract_token.
          t125 = t119->token.
          DATA t127 TYPE string.
          t127 = t125->str.
          t122 = t127.
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
            t137 = t122.
            DATA(t139) = VALUE string( ).
            DATA(t141) = 1.
            DATA t142 TYPE i.
            t142 = strlen( t137 ).
            DATA(t145) = strlen( t137 ).
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
              t139 = t137+t141(t142).
            ENDIF.
            t136 = t139.
            t122 = t136.
          ENDIF.
          t121 = t122.
          t118 = t121.
          DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t148 TYPE REF TO zif_lnt_union_a346537f.
          t148 = t100.
          t147 ?= t148.
          me->scope->add_named_identifier( i_name = t118 i_identifier = t147 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t151 = t1->get_super_class( ).
    t150 = t151.
    DATA(t153) = VALUE abap_bool( ).
    DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t154 = t150.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = VALUE abap_bool( ).
    DATA(t159) = VALUE abap_bool( ).
    IF t154 IS INITIAL.
      t159 = abap_true.
    ELSEIF t154->has = abap_false.
      t159 = abap_true.
    ENDIF.
    t158 = xsdbool( t159 = abap_false ).
    t153 = t158.
    IF t153 = abap_true.
      DATA t161 TYPE REF TO zif_lnt_class_definition.
      DATA t163 TYPE REF TO zcl_lnt_current_scope.
      t163 = me->scope.
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t168 TYPE string.
      t168 = t150->value.
      DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t170->has = abap_true.
      t170->value = t168.
      t165 = t170.
      DATA t172 TYPE REF TO zif_lnt_class_definition.
      DATA(t173) = VALUE abap_bool( ).
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t174 = t165.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t178) = VALUE abap_bool( ).
      IF t174 IS INITIAL.
        t178 = abap_true.
      ELSEIF t174->has = abap_false.
        t178 = abap_true.
      ENDIF.
      t173 = t178.
      IF t173 = abap_true.
      ELSE.
        DATA t182 TYPE REF TO zif_lnt_class_definition.
        DATA t184 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t185 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t185 = t163->current.
        t184 = t185.
        DATA t187 TYPE REF TO zif_lnt_class_definition.
        DATA(t188) = xsdbool( t184 IS INITIAL ).
        IF t188 = abap_true.
        ELSE.
          DATA t191 TYPE REF TO zif_lnt_class_definition.
          DATA t192 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t192 = t184.
          DATA t194 TYPE string.
          t194 = t165->value.
          t191 = t192->find_class_definition( i_name = t194 ).
          t187 = t191.
        ENDIF.
        t182 = t187.
        DATA t196 TYPE REF TO zif_lnt_class_definition.
        DATA t197 TYPE abap_bool.
        t197 = xsdbool( t182 IS BOUND ).
        IF t197 = abap_true.
          t196 = t182.
        ELSE.
          DATA t205 TYPE REF TO zcl_lnt_class.
          DATA t206 TYPE REF TO zcl_lnt_class.
          DATA t207 TYPE REF TO zif_lnt_object.
          DATA t208 TYPE REF TO zif_lnt_registry.
          t208 = t163->reg.
          DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t212) = |CLAS|.
          DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t213->has = abap_true.
          t213->value = t212.
          t210 = t213.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t217 TYPE string.
          t217 = t165->value.
          DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t219->has = abap_true.
          t219->value = t217.
          t215 = t219.
          t207 = t208->get_object( i_type_9913 = t210 i_name = t215 ).
          DATA t221 TYPE REF TO object.
          t221 = t207.
          t206 ?= t221.
          t205 = t206.
          DATA t222 TYPE REF TO zif_lnt_class_definition.
          DATA t223 TYPE abap_bool.
          t223 = xsdbool( t205 IS BOUND ).
          IF t223 = abap_true.
            DATA t225 TYPE REF TO zif_lnt_class_definition.
            DATA t226 TYPE REF TO zcl_lnt_class.
            t226 = t205.
            t225 = t226->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t222 = t225.
          ELSE.
            CLEAR t222.
          ENDIF.
          t196 = t222.
        ENDIF.
        t172 = t196.
      ENDIF.
      t161 = t172.
      DATA t229 TYPE abap_bool.
      t229 = xsdbool( t161 IS BOUND ).
      IF t229 = abap_true.
        DATA t231 TYPE REF TO zif_lnt_class_definition.
        t231 = t161.
        me->add_aliased_attributes( i_class_definition_ad05 = t231 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD add_aliased_types.
    DATA(t1) = i_class_definition_ad05.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->get_aliases( ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t3 IS BOUND ).
    IF t7 = abap_true.
      t6 = t3.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      t6 = t10.
    ENDIF.
    t2 = t6.
    DATA t11 TYPE REF TO zcl_lnt_alias.
    DATA t12 TYPE REF TO object.
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
      DATA t20 TYPE string.
      t20 = t11->component.
      t16 = t20.
      DATA t22 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t22.
      DATA t24 TYPE REF TO zcl_lnt_current_scope.
      t24 = me->scope.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t30) = |~|.
      DATA(t31) = strlen( t16 ).
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
          t36 = t16+t32(1).
          APPEND t36 TO t28->items.
          t32 = t32 + 1.
        ENDWHILE.
      ELSE.
        WHILE t32 <= t31.
          FIND FIRST OCCURRENCE OF t30 IN SECTION OFFSET t32 OF t16 MATCH OFFSET t33.
          IF sy-subrc = 0.
            t34 = t33 - t32.
          ELSE.
            t33 = -1.
            t34 = t31 - t32.
          ENDIF.
          CLEAR t36.
          IF t34 > 0.
            t36 = t16+t32(t34).
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
      t40 = t26.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      DATA(t44) = VALUE abap_bool( ).
      IF t40 IS INITIAL.
        t44 = abap_true.
      ELSEIF t40->has = abap_false.
        t44 = abap_true.
      ENDIF.
      t39 = t44.
      IF t39 = abap_true.
        CLEAR t38.
      ELSE.
        DATA t48 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t48.
        DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t51 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t51 = t24->current.
        t50 = t51.
        DATA t53 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t53.
        DATA(t54) = xsdbool( t50 IS INITIAL ).
        IF t54 = abap_true.
          CLEAR t53.
        ELSE.
          DATA t57 TYPE REF TO zif_lnt_interface_definition.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t58 = t50.
          DATA t60 TYPE string.
          t60 = t26->value.
          t57 = t58->find_interface_definition( i_name = t60 ).
          t53 = t57.
        ENDIF.
        t48 = t53.
        DATA t62 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t62.
        DATA t63 TYPE abap_bool.
        t63 = xsdbool( t48 IS BOUND ).
        IF t63 = abap_true.
          t62 = t48.
        ELSE.
          DATA t71 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t72.
          DATA t73 TYPE REF TO zif_lnt_object.
          CLEAR t73.
          DATA t74 TYPE REF TO zif_lnt_registry.
          t74 = t24->reg.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t78) = |INTF|.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t78.
          t76 = t79.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA t83 TYPE string.
          t83 = t26->value.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = t83.
          t81 = t85.
          t73 = t74->get_object( i_type_9913 = t76 i_name = t81 ).
          DATA t87 TYPE REF TO object.
          t87 = t73.
          t72 ?= t87.
          t71 = t72.
          DATA t88 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t88.
          DATA t89 TYPE abap_bool.
          t89 = xsdbool( t71 IS BOUND ).
          IF t89 = abap_true.
            DATA t95 TYPE REF TO zif_lnt_interface_definition.
            t95 = t71->def.
            t88 = t95.
          ELSE.
            CLEAR t88.
          ENDIF.
          t62 = t88.
        ENDIF.
        t38 = t62.
      ENDIF.
      t22 = t38.
      DATA t98 TYPE abap_bool.
      t98 = xsdbool( t22 IS BOUND ).
      IF t98 = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t100.
        DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t101.
        DATA t102 TYPE REF TO zif_lnt_type_definitions.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        t103 = t22.
        t102 = t103->get_type_definitions( ).
        DATA(t105) = VALUE string( ).
        DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t108) = |~|.
        DATA(t109) = strlen( t16 ).
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
            t114 = t16+t110(1).
            APPEND t114 TO t106->items.
            t110 = t110 + 1.
          ENDWHILE.
        ELSE.
          WHILE t110 <= t109.
            FIND FIRST OCCURRENCE OF t108 IN SECTION OFFSET t110 OF t16 MATCH OFFSET t111.
            IF sy-subrc = 0.
              t112 = t111 - t110.
            ELSE.
              t111 = -1.
              t112 = t109 - t110.
            ENDIF.
            CLEAR t114.
            IF t112 > 0.
              t114 = t16+t110(t112).
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
        t115 = xsdbool( t100 IS BOUND ).
        IF t115 = abap_true.
          DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t119.
          t119 = t100.
          DATA(t125) = VALUE abap_bool( ).
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          t125 = xsdbool( t119 IS INITIAL ).
          IF t125 = abap_true.
          ELSE.
            DATA(t133) = VALUE string( ).
            DATA t134 TYPE REF TO zcl_lnt_fi_identifier.
            t134 = t119.
            DATA(t137) = VALUE string( ).
            DATA t138 TYPE string.
            DATA t141 TYPE REF TO zcl_lnt_abstract_token.
            t141 = t134->token.
            DATA t143 TYPE string.
            t143 = t141->str.
            t138 = t143.
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
              t153 = t138.
              DATA(t155) = VALUE string( ).
              DATA(t157) = 1.
              DATA t158 TYPE i.
              t158 = strlen( t153 ).
              DATA(t161) = strlen( t153 ).
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
                t155 = t153+t157(t158).
              ENDIF.
              t152 = t155.
              t138 = t152.
            ENDIF.
            t137 = t138.
            t133 = t137.
            DATA t163 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t163.
            t163 = t119.
            me->scope->add_type_named( i_name = t133 i_type_9913 = t163 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t169 = t1->get_super_class( ).
    t168 = t169.
    DATA(t171) = VALUE abap_bool( ).
    DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t172 = t168.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t176) = VALUE abap_bool( ).
    DATA(t177) = VALUE abap_bool( ).
    IF t172 IS INITIAL.
      t177 = abap_true.
    ELSEIF t172->has = abap_false.
      t177 = abap_true.
    ENDIF.
    t176 = xsdbool( t177 = abap_false ).
    t171 = t176.
    IF t171 = abap_true.
      DATA t179 TYPE REF TO zif_lnt_class_definition.
      DATA t181 TYPE REF TO zcl_lnt_current_scope.
      t181 = me->scope.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t186 TYPE string.
      t186 = t168->value.
      DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t188->has = abap_true.
      t188->value = t186.
      t183 = t188.
      DATA t190 TYPE REF TO zif_lnt_class_definition.
      DATA(t191) = VALUE abap_bool( ).
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t192 = t183.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t196) = VALUE abap_bool( ).
      IF t192 IS INITIAL.
        t196 = abap_true.
      ELSEIF t192->has = abap_false.
        t196 = abap_true.
      ENDIF.
      t191 = t196.
      IF t191 = abap_true.
      ELSE.
        DATA t200 TYPE REF TO zif_lnt_class_definition.
        DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t203 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t203 = t181->current.
        t202 = t203.
        DATA t205 TYPE REF TO zif_lnt_class_definition.
        DATA(t206) = xsdbool( t202 IS INITIAL ).
        IF t206 = abap_true.
        ELSE.
          DATA t209 TYPE REF TO zif_lnt_class_definition.
          DATA t210 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t210 = t202.
          DATA t212 TYPE string.
          t212 = t183->value.
          t209 = t210->find_class_definition( i_name = t212 ).
          t205 = t209.
        ENDIF.
        t200 = t205.
        DATA t214 TYPE REF TO zif_lnt_class_definition.
        DATA t215 TYPE abap_bool.
        t215 = xsdbool( t200 IS BOUND ).
        IF t215 = abap_true.
          t214 = t200.
        ELSE.
          DATA t223 TYPE REF TO zcl_lnt_class.
          DATA t224 TYPE REF TO zcl_lnt_class.
          DATA t225 TYPE REF TO zif_lnt_object.
          DATA t226 TYPE REF TO zif_lnt_registry.
          t226 = t181->reg.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t230) = |CLAS|.
          DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t231->has = abap_true.
          t231->value = t230.
          t228 = t231.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t235 TYPE string.
          t235 = t183->value.
          DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t237->has = abap_true.
          t237->value = t235.
          t233 = t237.
          t225 = t226->get_object( i_type_9913 = t228 i_name = t233 ).
          DATA t239 TYPE REF TO object.
          t239 = t225.
          t224 ?= t239.
          t223 = t224.
          DATA t240 TYPE REF TO zif_lnt_class_definition.
          DATA t241 TYPE abap_bool.
          t241 = xsdbool( t223 IS BOUND ).
          IF t241 = abap_true.
            DATA t243 TYPE REF TO zif_lnt_class_definition.
            DATA t244 TYPE REF TO zcl_lnt_class.
            t244 = t223.
            t243 = t244->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t240 = t243.
          ELSE.
            CLEAR t240.
          ENDIF.
          t214 = t240.
        ENDIF.
        t190 = t214.
      ENDIF.
      t179 = t190.
      DATA t247 TYPE abap_bool.
      t247 = xsdbool( t179 IS BOUND ).
      IF t247 = abap_true.
        DATA t249 TYPE REF TO zif_lnt_class_definition.
        t249 = t179.
        me->add_aliased_types( i_class_definition_ad05 = t249 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD find_method_in_interface.
    DATA(t2) = i_method_name.
    DATA t3 TYPE REF TO zif_lnt_interface_definition.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    t5 = me->scope.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t10) = i_interface_name.
    DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t11->has = abap_true.
    t11->value = t10.
    t7 = t11.
    DATA t13 TYPE REF TO zif_lnt_interface_definition.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t15 = t7.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = VALUE abap_bool( ).
    IF t15 IS INITIAL.
      t19 = abap_true.
    ELSEIF t15->has = abap_false.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
    ELSE.
      DATA t23 TYPE REF TO zif_lnt_interface_definition.
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t26 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t26 = t5->current.
      t25 = t26.
      DATA t28 TYPE REF TO zif_lnt_interface_definition.
      DATA(t29) = xsdbool( t25 IS INITIAL ).
      IF t29 = abap_true.
      ELSE.
        DATA t32 TYPE REF TO zif_lnt_interface_definition.
        DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t33 = t25.
        DATA t35 TYPE string.
        t35 = t7->value.
        t32 = t33->find_interface_definition( i_name = t35 ).
        t28 = t32.
      ENDIF.
      t23 = t28.
      DATA t37 TYPE REF TO zif_lnt_interface_definition.
      DATA t38 TYPE abap_bool.
      t38 = xsdbool( t23 IS BOUND ).
      IF t38 = abap_true.
        t37 = t23.
      ELSE.
        DATA t46 TYPE REF TO zcl_lnt_ob_interface.
        DATA t47 TYPE REF TO zcl_lnt_ob_interface.
        DATA t48 TYPE REF TO zif_lnt_object.
        DATA t49 TYPE REF TO zif_lnt_registry.
        t49 = t5->reg.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t53) = |INTF|.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t53.
        t51 = t54.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t58 TYPE string.
        t58 = t7->value.
        DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t60->has = abap_true.
        t60->value = t58.
        t56 = t60.
        t48 = t49->get_object( i_type_9913 = t51 i_name = t56 ).
        DATA t62 TYPE REF TO object.
        t62 = t48.
        t47 ?= t62.
        t46 = t47.
        DATA t63 TYPE REF TO zif_lnt_interface_definition.
        DATA t64 TYPE abap_bool.
        t64 = xsdbool( t46 IS BOUND ).
        IF t64 = abap_true.
          DATA t70 TYPE REF TO zif_lnt_interface_definition.
          t70 = t46->def.
          t63 = t70.
        ELSE.
          CLEAR t63.
        ENDIF.
        t37 = t63.
      ENDIF.
      t13 = t37.
    ENDIF.
    t3 = t13.
    DATA t73 TYPE abap_bool.
    t73 = xsdbool( t3 IS BOUND ).
    IF t73 = abap_true.
      DATA t75 TYPE REF TO zif_lnt_method_definition.
      DATA t76 TYPE REF TO zif_lnt_method_definition.
      DATA t77 TYPE REF TO zif_lnt_method_definitions.
      DATA t78 TYPE REF TO zif_lnt_interface_definition.
      t78 = t3.
      t77 = t78->get_method_definitions( ).
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t83->has = abap_true.
      t83->value = t2.
      t80 = t83.
      t76 = t77->get_by_name( i_name = t80 ).
      t75 = t76.
      DATA t85 TYPE abap_bool.
      t85 = xsdbool( t75 IS BOUND ).
      IF t85 = abap_true.
        DATA t89 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t90 TYPE REF TO zif_lnt_method_definition.
        t90 = t75.
        DATA t96 TYPE REF TO zif_lnt_interface_definition.
        t96 = t3.
        t89 = NEW zcl_lnt_shape_a38e878f( i_method = t90 i_def = t96 ).
        CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
        t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t102 ).
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t103 ).
        ENDIF.
        CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
        t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t104) = |method|.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
        DATA(t106) = |def|.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
        ENDIF.
        result = t89.
        RETURN.
      ENDIF.
      DATA t109 TYPE REF TO zcl_lnt_shape_a38e878f.
      DATA t111 TYPE REF TO zif_lnt_interface_definition.
      t111 = t3.
      t109 = me->find_method_via_alias( i_method_name = t2 i_def = t111 ).
      result = t109.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD find_method_via_alias.
    DATA(t1) = i_method_name.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = i_def->get_aliases( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE abap_bool.
    t8 = xsdbool( t4 IS BOUND ).
    IF t8 = abap_true.
      t7 = t4.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t11.
      t7 = t11.
    ENDIF.
    t3 = t7.
    DATA t12 TYPE REF TO zcl_lnt_alias.
    DATA t13 TYPE REF TO object.
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
      t20 = t12.
      DATA(t22) = VALUE string( ).
      DATA t23 TYPE string.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      t26 = t20->token.
      DATA t28 TYPE string.
      t28 = t26->str.
      t23 = t28.
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
        t38 = t23.
        DATA(t40) = VALUE string( ).
        DATA(t42) = 1.
        DATA t43 TYPE i.
        t43 = strlen( t38 ).
        DATA(t46) = strlen( t38 ).
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
          t40 = t38+t42(t43).
        ENDIF.
        t37 = t40.
        t23 = t37.
      ENDIF.
      t22 = t23.
      t19 = t22.
      DATA(t48) = strlen( t19 ).
      t18 = t19.
      IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t18 TO UPPER CASE.
      ELSE.
        t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
      ENDIF.
      DATA t49 TYPE string.
      DATA(t51) = strlen( t1 ).
      t49 = t1.
      IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t49 TO UPPER CASE.
      ELSE.
        t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
      ENDIF.
      t17 = xsdbool( t18 = t49 ).
      IF t17 = abap_true.
        DATA t52 TYPE string.
        DATA t56 TYPE string.
        t56 = t12->component.
        t52 = t56.
        DATA t58 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t58.
        DATA(t60) = VALUE string( ).
        DATA(t61) = VALUE string( ).
        DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t64) = |~|.
        DATA(t65) = strlen( t52 ).
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
            t70 = t52+t66(1).
            APPEND t70 TO t62->items.
            t66 = t66 + 1.
          ENDWHILE.
        ELSE.
          WHILE t66 <= t65.
            FIND FIRST OCCURRENCE OF t64 IN SECTION OFFSET t66 OF t52 MATCH OFFSET t67.
            IF sy-subrc = 0.
              t68 = t67 - t66.
            ELSE.
              t67 = -1.
              t68 = t65 - t66.
            ENDIF.
            CLEAR t70.
            IF t68 > 0.
              t70 = t52+t66(t68).
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
        DATA(t75) = |~|.
        DATA(t76) = strlen( t52 ).
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
            t81 = t52+t77(1).
            APPEND t81 TO t73->items.
            t77 = t77 + 1.
          ENDWHILE.
        ELSE.
          WHILE t77 <= t76.
            FIND FIRST OCCURRENCE OF t75 IN SECTION OFFSET t77 OF t52 MATCH OFFSET t78.
            IF sy-subrc = 0.
              t79 = t78 - t77.
            ELSE.
              t78 = -1.
              t79 = t76 - t77.
            ENDIF.
            CLEAR t81.
            IF t79 > 0.
              t81 = t52+t77(t79).
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
        DATA t83 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t83.
        DATA t85 TYPE REF TO zcl_lnt_current_scope.
        t85 = me->scope.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t91->has = abap_true.
        t91->value = t60.
        t87 = t91.
        DATA t93 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t93.
        DATA(t94) = VALUE abap_bool( ).
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t95 = t87.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        DATA(t99) = VALUE abap_bool( ).
        IF t95 IS INITIAL.
          t99 = abap_true.
        ELSEIF t95->has = abap_false.
          t99 = abap_true.
        ENDIF.
        t94 = t99.
        IF t94 = abap_true.
          CLEAR t93.
        ELSE.
          DATA t103 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t103.
          DATA t105 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t106 = t85->current.
          t105 = t106.
          DATA t108 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t108.
          DATA(t109) = xsdbool( t105 IS INITIAL ).
          IF t109 = abap_true.
            CLEAR t108.
          ELSE.
            DATA t112 TYPE REF TO zif_lnt_interface_definition.
            DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t113 = t105.
            DATA t115 TYPE string.
            t115 = t87->value.
            t112 = t113->find_interface_definition( i_name = t115 ).
            t108 = t112.
          ENDIF.
          t103 = t108.
          DATA t117 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t117.
          DATA t118 TYPE abap_bool.
          t118 = xsdbool( t103 IS BOUND ).
          IF t118 = abap_true.
            t117 = t103.
          ELSE.
            DATA t126 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t126.
            DATA t127 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t127.
            DATA t128 TYPE REF TO zif_lnt_object.
            CLEAR t128.
            DATA t129 TYPE REF TO zif_lnt_registry.
            t129 = t85->reg.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            DATA(t133) = |INTF|.
            DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t134->has = abap_true.
            t134->value = t133.
            t131 = t134.
            DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t136.
            DATA t138 TYPE string.
            t138 = t87->value.
            DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t140->has = abap_true.
            t140->value = t138.
            t136 = t140.
            t128 = t129->get_object( i_type_9913 = t131 i_name = t136 ).
            DATA t142 TYPE REF TO object.
            t142 = t128.
            t127 ?= t142.
            t126 = t127.
            DATA t143 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t143.
            DATA t144 TYPE abap_bool.
            t144 = xsdbool( t126 IS BOUND ).
            IF t144 = abap_true.
              DATA t150 TYPE REF TO zif_lnt_interface_definition.
              t150 = t126->def.
              t143 = t150.
            ELSE.
              CLEAR t143.
            ENDIF.
            t117 = t143.
          ENDIF.
          t93 = t117.
        ENDIF.
        t83 = t93.
        DATA t153 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t153.
        DATA t154 TYPE abap_bool.
        t154 = xsdbool( t83 IS BOUND ).
        IF t154 = abap_true.
          DATA t157 TYPE REF TO zif_lnt_method_definition.
          CLEAR t157.
          DATA t158 TYPE REF TO zif_lnt_method_definition.
          CLEAR t158.
          DATA t159 TYPE REF TO zif_lnt_method_definitions.
          DATA t160 TYPE REF TO zif_lnt_interface_definition.
          t160 = t83.
          t159 = t160->get_method_definitions( ).
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t162.
          DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t165->has = abap_true.
          t165->value = t71.
          t162 = t165.
          t158 = t159->get_by_name( i_name = t162 ).
          t157 = t158.
          DATA t167 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t167.
          DATA t168 TYPE abap_bool.
          t168 = xsdbool( t157 IS BOUND ).
          IF t168 = abap_true.
            DATA t172 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t172.
            DATA t173 TYPE REF TO zif_lnt_method_definition.
            CLEAR t173.
            t173 = t157.
            DATA t179 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t179.
            t179 = t83.
            t172 = NEW zcl_lnt_shape_a38e878f( i_method = t173 i_def = t179 ).
            CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
            t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t185.
            t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t185 ).
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
            t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
            DATA(t189) = |def|.
            DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t190.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
            ENDIF.
            t167 = t172.
          ELSE.
            DATA t192 TYPE REF TO zcl_lnt_shape_a38e878f.
            DATA t194 TYPE REF TO zif_lnt_interface_definition.
            t194 = t83.
            t192 = me->find_method_via_alias( i_method_name = t71 i_def = t194 ).
            t167 = t192.
          ENDIF.
          t153 = t167.
        ELSE.
          CLEAR t153.
        ENDIF.
        t58 = t153.
        DATA t197 TYPE abap_bool.
        t197 = xsdbool( t58 IS BOUND ).
        IF t197 = abap_true.
          result = t58.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD method_reference_extras.
    DATA(t1) = i_found_def.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t1 IS INITIAL ).
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_ireference_extras.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t11 = i_oo_name.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t10 = NEW zcl_lnt_ireference_extras( i_oo_name = t11 i_oo_type = t13 i_found_qualified = t15 ).
      CREATE OBJECT t10->zlnt_view_ownkeys_b0e8086400eb.
      t10->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t17 ).
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t10->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t18 ).
      ENDIF.
      CREATE OBJECT t10->zlnt_json_ownkeys_70e5fd461788.
      t10->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t19) = |ooName|.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
      DATA(t21) = |ooType|.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t10->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
      ENDIF.
      result = t10.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_ireference_extras.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zif_lnt_interface_definition.
    t26 = t1.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = xsdbool( t26 IS INITIAL ).
    IF t30 = abap_true.
    ELSE.
      DATA t33 TYPE string.
      t33 = t26->get_name( ).
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t33.
      t29 = t35.
    ENDIF.
    t24 = t29.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t39) = VALUE string( ).
    DATA t40 TYPE abap_bool.
    t40 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    IF t40 = abap_true.
      t39 = |CLAS|.
    ELSE.
      t39 = |INTF|.
    ENDIF.
    DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t44->has = abap_true.
    t44->value = t39.
    t36 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t23 = NEW zcl_lnt_ireference_extras( i_oo_name = t24 i_oo_type = t36 i_found_qualified = t46 ).
    CREATE OBJECT t23->zlnt_view_ownkeys_b0e8086400eb.
    t23->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t48 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t49 ).
    ENDIF.
    CREATE OBJECT t23->zlnt_json_ownkeys_70e5fd461788.
    t23->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t50) = |ooName|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    DATA(t52) = |ooType|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    t5 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
    t3 = t4.
    IF t4 = abap_false.
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zif_lnt_statement.
      t8 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_st_class_definition ).
      t3 = t7.
    ENDIF.
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t10 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t11 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t14) = |findClassName, unexpected node type|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t14.
      t12 = t15.
      t11 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t12 ).
      t10 = NEW #( ).
      t10->payload = t11.
      CLEAR t10->source_value.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t18 TYPE REF TO object.
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
      RAISE EXCEPTION t10.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t20 = t1->find_first_expression( i_type_9913 = t22 ).
    t19 = t20.
    DATA(t23) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t23 = xsdbool( t19 IS INITIAL ).
    IF t23 = abap_true.
      DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t34) = |findClassName, unexpected node type|.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t34.
      t32 = t35.
      t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t32 ).
      t30 = NEW #( ).
      t30->payload = t31.
      CLEAR t30->source_value.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
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
      RAISE EXCEPTION t30.
    ENDIF.
    DATA(t39) = VALUE string( ).
    DATA t41 TYPE REF TO zcl_lnt_abstract_token.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    t42 = t19.
    t41 = t42->get_first_token( ).
    DATA(t44) = VALUE string( ).
    t44 = t41->str.
    t39 = t44.
    result = t39.

  ENDMETHOD.

  METHOD find_interfaces.
    DATA(t1) = i_cd.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->get_implementing( ).
    t7 = t5->concat( p0 = t9 ).
    t2 = t7.
    DATA t13 TYPE REF TO zcl_lnt_iimplementing.
    DATA t14 TYPE REF TO object.
    DATA(t15) = VALUE i( ).
    DO.
      t2->load( ).
      IF t15 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t2->items INDEX t15 + 1 INTO t14.
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
      DATA t20 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t20.
      DATA t22 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t22.
      t22 = me->scope.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t27) = VALUE string( ).
      t27 = t13->name.
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t27.
      t24 = t29.
      DATA t31 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t31.
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t33 = t24.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t35.
      DATA(t37) = VALUE abap_bool( ).
      IF t33 IS INITIAL.
        t37 = abap_true.
      ELSEIF t33->has = abap_false.
        t37 = abap_true.
      ENDIF.
      t32 = t37.
      IF t32 = abap_true.
        CLEAR t31.
      ELSE.
        DATA t41 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t41.
        DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t44.
        t44 = t22->current.
        t43 = t44.
        DATA t46 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t46.
        DATA(t47) = xsdbool( t43 IS INITIAL ).
        IF t47 = abap_true.
          CLEAR t46.
        ELSE.
          DATA t50 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t50.
          DATA t51 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t51.
          t51 = t43.
          DATA(t53) = VALUE string( ).
          t53 = t24->value.
          t50 = t51->find_interface_definition( i_name = t53 ).
          t46 = t50.
        ENDIF.
        t41 = t46.
        DATA t55 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t55.
        DATA(t56) = VALUE abap_bool( ).
        t56 = xsdbool( t41 IS BOUND ).
        IF t56 = abap_true.
          t55 = t41.
        ELSE.
          DATA t64 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t64.
          DATA t65 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t65.
          DATA t66 TYPE REF TO zif_lnt_object.
          CLEAR t66.
          DATA t67 TYPE REF TO zif_lnt_registry.
          CLEAR t67.
          t67 = t22->reg.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          DATA(t71) = |INTF|.
          DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t72->has = abap_true.
          t72->value = t71.
          t69 = t72.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA(t76) = VALUE string( ).
          t76 = t24->value.
          DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t78->has = abap_true.
          t78->value = t76.
          t74 = t78.
          t66 = t67->get_object( i_type_9913 = t69 i_name = t74 ).
          DATA t80 TYPE REF TO object.
          CLEAR t80.
          t80 = t66.
          t65 ?= t80.
          t64 = t65.
          DATA t81 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t81.
          DATA(t82) = VALUE abap_bool( ).
          t82 = xsdbool( t64 IS BOUND ).
          IF t82 = abap_true.
            DATA t88 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t88.
            t88 = t64->def.
            t81 = t88.
          ELSE.
            CLEAR t81.
          ENDIF.
          t55 = t81.
        ENDIF.
        t31 = t55.
      ENDIF.
      t20 = t31.
      DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t91.
      DATA(t92) = xsdbool( t20 IS INITIAL ).
      IF t92 = abap_true.
        CLEAR t91.
      ELSE.
        DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t95.
        DATA t96 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t96.
        t96 = t20.
        t95 = t96->get_implementing( ).
        t91 = t95.
      ENDIF.
      t18 = t91.
      DATA(t98) = VALUE abap_bool( ).
      t98 = xsdbool( t18 IS BOUND ).
      IF t98 = abap_true.
        DATA(t100) = VALUE i( ).
        DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t101.
        t101 = t18.
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
          t2->load( ).
          APPEND t103 TO t2->items.
          t2->save( ).
        ENDDO.
        DATA(t110) = VALUE i( ).
        t2->load( ).
        t110 = lines( t2->items ).
        t100 = t110.
      ENDIF.
    ENDDO.
    DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t113 = t1->get_super_class( ).
    t112 = t113.
    DATA(t115) = VALUE abap_bool( ).
    IF t112 IS BOUND.
      IF t112->has = abap_true.
        t115 = xsdbool( strlen( t112->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t115 = abap_true.
      DATA t117 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      TRY.
          DATA(t118) = VALUE i( ).
          DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t120 TYPE REF TO zif_lnt_interface_definition.
          DATA t121 TYPE REF TO zif_lnt_class_definition.
          DATA(t122) = VALUE string( ).
          t122 = t112->value.
          t121 = me->find_super_definition( i_name = t122 ).
          t120 ?= t121.
          t119 = me->find_interfaces( i_cd = t120 ).
          DATA t124 TYPE REF TO zcl_lnt_iimplementing.
          DATA t125 TYPE REF TO object.
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
            t2->load( ).
            APPEND t124 TO t2->items.
            t2->save( ).
          ENDDO.
          DATA(t131) = VALUE i( ).
          t2->load( ).
          t131 = lines( t2->items ).
          t118 = t131.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t117.
          DATA(t133) = t117->payload.
      ENDTRY.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD has_friendship.
    DATA(t1) = i_cd.
    DATA(t2) = i_friend_name.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t7 = t1->get_friends( ).
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
      DATA t12 TYPE string.
      DATA(t14) = strlen( t9 ).
      t12 = t9.
      IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t12 TO UPPER CASE.
      ELSE.
        t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
      ENDIF.
      t5->load( ).
      APPEND t12 TO t5->items.
      t5->save( ).
    ENDDO.
    t3 = t5.
    DATA(t16) = VALUE abap_bool( ).
    DATA t21 TYPE string.
    t21 = t2.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA t26 TYPE string.
    DATA(t28) = strlen( t21 ).
    t26 = t21.
    IF t26 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t26 TO UPPER CASE.
    ELSE.
      t26 = zlnt_runtime_uppe_91169605024d=>full( t26 ).
    ENDIF.
    t24 = t3->includes( p0 = t26 ).
    t23 = t24.
    IF t24 = abap_false.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t31) = me->scope.
      DATA t32 TYPE string.
      DATA t33 TYPE string.
      t33 = t1->get_name( ).
      t32 = t33.
      DATA t35 TYPE string.
      t35 = t21.
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t41 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
      t41 = t31->local_friends.
      DATA t43 TYPE string.
      DATA(t45) = strlen( t32 ).
      t43 = t32.
      IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t43 TO UPPER CASE.
      ELSE.
        t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
      ENDIF.
      t40 = t41->get( p0 = t43 ).
      t39 = t40.
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t47) = xsdbool( t39 IS INITIAL ).
      IF t47 = abap_true.
      ELSE.
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t51 = t39.
        DATA t53 TYPE string.
        DATA(t55) = strlen( t35 ).
        t53 = t35.
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
      DATA(t60) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t60->has = abap_true.
      t60->value = abap_true.
      t57 = t60.
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
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t65 TYPE REF TO zif_lnt_class_definition.
    DATA t67 TYPE REF TO zcl_lnt_current_scope.
    t67 = me->scope.
    DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t73->has = abap_true.
    t73->value = t2.
    t69 = t73.
    DATA t75 TYPE REF TO zif_lnt_class_definition.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t77 = t69.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = VALUE abap_bool( ).
    IF t77 IS INITIAL.
      t81 = abap_true.
    ELSEIF t77->has = abap_false.
      t81 = abap_true.
    ENDIF.
    t76 = t81.
    IF t76 = abap_true.
    ELSE.
      DATA t85 TYPE REF TO zif_lnt_class_definition.
      DATA t87 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t88 = t67->current.
      t87 = t88.
      DATA t90 TYPE REF TO zif_lnt_class_definition.
      DATA(t91) = xsdbool( t87 IS INITIAL ).
      IF t91 = abap_true.
      ELSE.
        DATA t94 TYPE REF TO zif_lnt_class_definition.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t95 = t87.
        DATA t97 TYPE string.
        t97 = t69->value.
        t94 = t95->find_class_definition( i_name = t97 ).
        t90 = t94.
      ENDIF.
      t85 = t90.
      DATA t99 TYPE REF TO zif_lnt_class_definition.
      DATA t100 TYPE abap_bool.
      t100 = xsdbool( t85 IS BOUND ).
      IF t100 = abap_true.
        t99 = t85.
      ELSE.
        DATA t108 TYPE REF TO zcl_lnt_class.
        DATA t109 TYPE REF TO zcl_lnt_class.
        DATA t110 TYPE REF TO zif_lnt_object.
        DATA t111 TYPE REF TO zif_lnt_registry.
        t111 = t67->reg.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t115) = |CLAS|.
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = t115.
        t113 = t116.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t120 TYPE string.
        t120 = t69->value.
        DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t122->has = abap_true.
        t122->value = t120.
        t118 = t122.
        t110 = t111->get_object( i_type_9913 = t113 i_name = t118 ).
        DATA t124 TYPE REF TO object.
        t124 = t110.
        t109 ?= t124.
        t108 = t109.
        DATA t125 TYPE REF TO zif_lnt_class_definition.
        DATA t126 TYPE abap_bool.
        t126 = xsdbool( t108 IS BOUND ).
        IF t126 = abap_true.
          DATA t128 TYPE REF TO zif_lnt_class_definition.
          DATA t129 TYPE REF TO zcl_lnt_class.
          t129 = t108.
          t128 = t129->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t125 = t128.
        ELSE.
          CLEAR t125.
        ENDIF.
        t99 = t125.
      ENDIF.
      t75 = t99.
    ENDIF.
    t65 = t75.
    DATA(t132) = VALUE abap_bool( ).
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t132 = xsdbool( t65 IS INITIAL ).
    IF t132 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t140) = VALUE abap_bool( ).
    DATA t141 TYPE abap_bool.
    t141 = abap_false.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t144 TYPE REF TO zif_lnt_interface_definition.
    DATA t145 TYPE REF TO zif_lnt_class_definition.
    t145 = t65.
    t144 ?= t145.
    t143 = me->find_interfaces( i_cd = t144 ).
    DATA t147 TYPE REF TO zcl_lnt_iimplementing.
    DATA t148 TYPE REF TO object.
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
      DATA t154 TYPE string.
      DATA t155 TYPE string.
      t155 = t147->name.
      DATA(t157) = strlen( t155 ).
      t154 = t155.
      IF t154 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t154 TO UPPER CASE.
      ELSE.
        t154 = zlnt_runtime_uppe_91169605024d=>full( t154 ).
      ENDIF.
      t152 = t3->includes( p0 = t154 ).
      IF t152 = abap_true.
        t141 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    t140 = t141.
    IF t140 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t163 TYPE REF TO zif_lnt_class_definition.
    t163 = t65.
    t162 = t163->get_super_class( ).
    t161 = t162.
    DO.
      DATA(t165) = VALUE abap_bool( ).
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t166 = t161.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      DATA(t170) = VALUE abap_bool( ).
      DATA(t171) = VALUE abap_bool( ).
      IF t166 IS INITIAL.
        t171 = abap_true.
      ELSEIF t166->has = abap_false.
        t171 = abap_true.
      ENDIF.
      t170 = xsdbool( t171 = abap_false ).
      t165 = t170.
      IF t165 = abap_false.
        EXIT.
      ENDIF.
      DATA(t173) = VALUE abap_bool( ).
      DATA t178 TYPE string.
      DATA t179 TYPE string.
      t179 = t161->value.
      t178 = t179.
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = VALUE abap_bool( ).
      DATA t184 TYPE string.
      DATA(t186) = strlen( t178 ).
      t184 = t178.
      IF t184 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t184 TO UPPER CASE.
      ELSE.
        t184 = zlnt_runtime_uppe_91169605024d=>full( t184 ).
      ENDIF.
      t182 = t3->includes( p0 = t184 ).
      t181 = t182.
      IF t182 = abap_false.
        DATA(t187) = VALUE abap_bool( ).
        DATA(t189) = me->scope.
        DATA t190 TYPE string.
        DATA t191 TYPE string.
        t191 = t1->get_name( ).
        t190 = t191.
        DATA t193 TYPE string.
        t193 = t178.
        DATA(t195) = VALUE abap_bool( ).
        DATA t196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t196.
        DATA t197 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t197.
        DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t198.
        DATA t199 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
        t199 = t189->local_friends.
        DATA t201 TYPE string.
        DATA(t203) = strlen( t190 ).
        t201 = t190.
        IF t201 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t201 TO UPPER CASE.
        ELSE.
          t201 = zlnt_runtime_uppe_91169605024d=>full( t201 ).
        ENDIF.
        t198 = t199->get( p0 = t201 ).
        t197 = t198.
        DATA t204 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t204.
        DATA(t205) = xsdbool( t197 IS INITIAL ).
        IF t205 = abap_true.
          CLEAR t204.
        ELSE.
          DATA(t208) = VALUE abap_bool( ).
          DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t209 = t197.
          DATA t211 TYPE string.
          DATA(t213) = strlen( t193 ).
          t211 = t193.
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
        DATA(t218) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t218->has = abap_true.
        t218->value = abap_true.
        t215 = t218.
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
        result = abap_true.
        RETURN.
      ENDIF.
      DATA t224 TYPE REF TO zif_lnt_class_definition.
      CLEAR t224.
      DATA t226 TYPE REF TO zcl_lnt_current_scope.
      t226 = me->scope.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      DATA t231 TYPE string.
      t231 = t161->value.
      DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t233->has = abap_true.
      t233->value = t231.
      t228 = t233.
      DATA t235 TYPE REF TO zif_lnt_class_definition.
      CLEAR t235.
      DATA(t236) = VALUE abap_bool( ).
      DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t237 = t228.
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t239.
      DATA(t241) = VALUE abap_bool( ).
      IF t237 IS INITIAL.
        t241 = abap_true.
      ELSEIF t237->has = abap_false.
        t241 = abap_true.
      ENDIF.
      t236 = t241.
      IF t236 = abap_true.
        CLEAR t235.
      ELSE.
        DATA t245 TYPE REF TO zif_lnt_class_definition.
        CLEAR t245.
        DATA t247 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t248 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t248 = t226->current.
        t247 = t248.
        DATA t250 TYPE REF TO zif_lnt_class_definition.
        CLEAR t250.
        DATA(t251) = xsdbool( t247 IS INITIAL ).
        IF t251 = abap_true.
          CLEAR t250.
        ELSE.
          DATA t254 TYPE REF TO zif_lnt_class_definition.
          DATA t255 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t255 = t247.
          DATA t257 TYPE string.
          t257 = t228->value.
          t254 = t255->find_class_definition( i_name = t257 ).
          t250 = t254.
        ENDIF.
        t245 = t250.
        DATA t259 TYPE REF TO zif_lnt_class_definition.
        CLEAR t259.
        DATA t260 TYPE abap_bool.
        t260 = xsdbool( t245 IS BOUND ).
        IF t260 = abap_true.
          t259 = t245.
        ELSE.
          DATA t268 TYPE REF TO zcl_lnt_class.
          CLEAR t268.
          DATA t269 TYPE REF TO zcl_lnt_class.
          CLEAR t269.
          DATA t270 TYPE REF TO zif_lnt_object.
          CLEAR t270.
          DATA t271 TYPE REF TO zif_lnt_registry.
          t271 = t226->reg.
          DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t273.
          DATA(t275) = |CLAS|.
          DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t276->has = abap_true.
          t276->value = t275.
          t273 = t276.
          DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t278.
          DATA t280 TYPE string.
          t280 = t228->value.
          DATA(t282) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t282->has = abap_true.
          t282->value = t280.
          t278 = t282.
          t270 = t271->get_object( i_type_9913 = t273 i_name = t278 ).
          DATA t284 TYPE REF TO object.
          t284 = t270.
          t269 ?= t284.
          t268 = t269.
          DATA t285 TYPE REF TO zif_lnt_class_definition.
          CLEAR t285.
          DATA t286 TYPE abap_bool.
          t286 = xsdbool( t268 IS BOUND ).
          IF t286 = abap_true.
            DATA t288 TYPE REF TO zif_lnt_class_definition.
            DATA t289 TYPE REF TO zcl_lnt_class.
            t289 = t268.
            t288 = t289->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t285 = t288.
          ELSE.
            CLEAR t285.
          ENDIF.
          t259 = t285.
        ENDIF.
        t235 = t259.
      ENDIF.
      t224 = t235.
      DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t292.
      DATA(t293) = xsdbool( t224 IS INITIAL ).
      IF t293 = abap_true.
        CLEAR t292.
      ELSE.
        DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t297 TYPE REF TO zif_lnt_class_definition.
        t297 = t224.
        t296 = t297->get_super_class( ).
        t292 = t296.
      ENDIF.
      t161 = t292.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD search_event.
    DATA(t1) = i_def.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zif_lnt_event_definition.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zif_lnt_interface_definition.
    t23 = t1.
    t22 = t23->get_events( ).
    t21 = t22.
    DATA t25 TYPE i.
    DATA t26 TYPE i.
    t21->load( ).
    t26 = lines( t21->items ).
    t25 = t26.
    DATA t28 TYPE i.
    t28 = 0.
    DATA t30 TYPE REF TO zif_lnt_event_definition.
    DO.
      DATA t32 TYPE abap_bool.
      t32 = xsdbool( t28 < t25 ).
      IF t32 = abap_false.
        EXIT.
      ENDIF.
      DATA t35 TYPE REF TO zif_lnt_event_definition.
      CLEAR t35.
      DATA t37 TYPE REF TO zif_lnt_event_definition.
      CLEAR t37.
      DATA t40 TYPE REF TO object.
      t40 = t21->get( p0 = t28 ).
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
      t35 = t37.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      t45 = t35->get_name( ).
      DATA(t47) = strlen( t45 ).
      t44 = t45.
      IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t44 TO UPPER CASE.
      ELSE.
        t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
      ENDIF.
      DATA t48 TYPE string.
      DATA t49 TYPE string.
      t49 = t2->value.
      DATA(t51) = strlen( t49 ).
      t48 = t49.
      IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t48 TO UPPER CASE.
      ELSE.
        t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
      ENDIF.
      t43 = xsdbool( t44 = t48 ).
      IF t43 = abap_true.
        t30 = t35.
        EXIT.
      ENDIF.
      DATA t56 TYPE i.
      DATA(t58) = 1.
      t56 = t28 + t58.
      t28 = t56.
    ENDDO.
    t19 = t30.
    DATA t60 TYPE abap_bool.
    t60 = xsdbool( t19 IS BOUND ).
    IF t60 = abap_true.
      result = t19.
      RETURN.
    ENDIF.
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = VALUE i( ).
    DATA t69 TYPE string.
    t69 = t2->value.
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
      DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t76 TYPE string.
      t76 = t2->value.
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
      IF t74->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t74->load( ).
      CLEAR t86.
      READ TABLE t74->items INDEX 1 INTO t86.
      t85 = t86.
      DATA(t88) = VALUE string( ).
      DATA(t89) = VALUE string( ).
      IF t74->has( 2 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t74->load( ).
      CLEAR t89.
      READ TABLE t74->items INDEX 2 INTO t89.
      t88 = t89.
      DATA t91 TYPE REF TO zif_lnt_event_definition.
      DATA t92 TYPE REF TO zif_lnt_interface_definition.
      DATA t93 TYPE REF TO zcl_lnt_current_scope.
      t93 = me->scope.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t99->has = abap_true.
      t99->value = t85.
      t95 = t99.
      DATA t101 TYPE REF TO zif_lnt_interface_definition.
      DATA(t102) = VALUE abap_bool( ).
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t103 = t95.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t107) = VALUE abap_bool( ).
      IF t103 IS INITIAL.
        t107 = abap_true.
      ELSEIF t103->has = abap_false.
        t107 = abap_true.
      ENDIF.
      t102 = t107.
      IF t102 = abap_true.
      ELSE.
        DATA t111 TYPE REF TO zif_lnt_interface_definition.
        DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t114 = t93->current.
        t113 = t114.
        DATA t116 TYPE REF TO zif_lnt_interface_definition.
        DATA(t117) = xsdbool( t113 IS INITIAL ).
        IF t117 = abap_true.
        ELSE.
          DATA t120 TYPE REF TO zif_lnt_interface_definition.
          DATA t121 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t121 = t113.
          DATA t123 TYPE string.
          t123 = t95->value.
          t120 = t121->find_interface_definition( i_name = t123 ).
          t116 = t120.
        ENDIF.
        t111 = t116.
        DATA t125 TYPE REF TO zif_lnt_interface_definition.
        DATA t126 TYPE abap_bool.
        t126 = xsdbool( t111 IS BOUND ).
        IF t126 = abap_true.
          t125 = t111.
        ELSE.
          DATA t134 TYPE REF TO zcl_lnt_ob_interface.
          DATA t135 TYPE REF TO zcl_lnt_ob_interface.
          DATA t136 TYPE REF TO zif_lnt_object.
          DATA t137 TYPE REF TO zif_lnt_registry.
          t137 = t93->reg.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t141) = |INTF|.
          DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t142->has = abap_true.
          t142->value = t141.
          t139 = t142.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t146 TYPE string.
          t146 = t95->value.
          DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t148->has = abap_true.
          t148->value = t146.
          t144 = t148.
          t136 = t137->get_object( i_type_9913 = t139 i_name = t144 ).
          DATA t150 TYPE REF TO object.
          t150 = t136.
          t135 ?= t150.
          t134 = t135.
          DATA t151 TYPE REF TO zif_lnt_interface_definition.
          DATA t152 TYPE abap_bool.
          t152 = xsdbool( t134 IS BOUND ).
          IF t152 = abap_true.
            DATA t158 TYPE REF TO zif_lnt_interface_definition.
            t158 = t134->def.
            t151 = t158.
          ELSE.
            CLEAR t151.
          ENDIF.
          t125 = t151.
        ENDIF.
        t101 = t125.
      ENDIF.
      t92 = t101.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t164->has = abap_true.
      t164->value = t88.
      t161 = t164.
      t91 = me->search_event( i_def = t92 i_name = t161 ).
      result = t91.
      RETURN.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t169 TYPE REF TO zif_lnt_interface_definition.
    t169 = t1.
    t168 = t169->get_aliases( ).
    t167 = t168.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t172 TYPE abap_bool.
    t172 = xsdbool( t167 IS BOUND ).
    IF t172 = abap_true.
      t171 = t167.
    ELSE.
      DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t175.
      t171 = t175.
    ENDIF.
    t166 = t171.
    DATA t176 TYPE REF TO zcl_lnt_alias.
    DATA t177 TYPE REF TO object.
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
      t184 = t176.
      DATA(t186) = VALUE string( ).
      DATA t187 TYPE string.
      DATA t190 TYPE REF TO zcl_lnt_abstract_token.
      t190 = t184->token.
      DATA t192 TYPE string.
      t192 = t190->str.
      t187 = t192.
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
        t202 = t187.
        DATA(t204) = VALUE string( ).
        DATA(t206) = 1.
        DATA t207 TYPE i.
        t207 = strlen( t202 ).
        DATA(t210) = strlen( t202 ).
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
          t204 = t202+t206(t207).
        ENDIF.
        t201 = t204.
        t187 = t201.
      ENDIF.
      t186 = t187.
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
      t214 = t2->value.
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
        DATA t221 TYPE string.
        t221 = t176->component.
        t217 = t221.
        DATA t223 TYPE REF TO zif_lnt_event_definition.
        CLEAR t223.
        DATA t224 TYPE REF TO zif_lnt_event_definition.
        CLEAR t224.
        DATA t225 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t225.
        DATA t226 TYPE REF TO zcl_lnt_current_scope.
        t226 = me->scope.
        DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t228.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t229.
        DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t232) = |~|.
        DATA(t233) = strlen( t217 ).
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
            t238 = t217+t234(1).
            APPEND t238 TO t230->items.
            t234 = t234 + 1.
          ENDWHILE.
        ELSE.
          WHILE t234 <= t233.
            FIND FIRST OCCURRENCE OF t232 IN SECTION OFFSET t234 OF t217 MATCH OFFSET t235.
            IF sy-subrc = 0.
              t236 = t235 - t234.
            ELSE.
              t235 = -1.
              t236 = t233 - t234.
            ENDIF.
            CLEAR t238.
            IF t236 > 0.
              t238 = t217+t234(t236).
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
        t242 = t228.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        DATA(t246) = VALUE abap_bool( ).
        IF t242 IS INITIAL.
          t246 = abap_true.
        ELSEIF t242->has = abap_false.
          t246 = abap_true.
        ENDIF.
        t241 = t246.
        IF t241 = abap_true.
          CLEAR t240.
        ELSE.
          DATA t250 TYPE REF TO zif_lnt_class_definition.
          CLEAR t250.
          DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t252.
          DATA t255 TYPE string.
          t255 = t228->value.
          DATA(t257) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t257->has = abap_true.
          t257->value = t255.
          t252 = t257.
          DATA t259 TYPE REF TO zif_lnt_class_definition.
          CLEAR t259.
          DATA(t260) = VALUE abap_bool( ).
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t261 = t252.
          DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t263.
          DATA(t265) = VALUE abap_bool( ).
          IF t261 IS INITIAL.
            t265 = abap_true.
          ELSEIF t261->has = abap_false.
            t265 = abap_true.
          ENDIF.
          t260 = t265.
          IF t260 = abap_true.
            CLEAR t259.
          ELSE.
            DATA t269 TYPE REF TO zif_lnt_class_definition.
            CLEAR t269.
            DATA t271 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t272 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t272 = t226->current.
            t271 = t272.
            DATA t274 TYPE REF TO zif_lnt_class_definition.
            CLEAR t274.
            DATA(t275) = xsdbool( t271 IS INITIAL ).
            IF t275 = abap_true.
              CLEAR t274.
            ELSE.
              DATA t278 TYPE REF TO zif_lnt_class_definition.
              DATA t279 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t279 = t271.
              DATA t281 TYPE string.
              t281 = t252->value.
              t278 = t279->find_class_definition( i_name = t281 ).
              t274 = t278.
            ENDIF.
            t269 = t274.
            DATA t283 TYPE REF TO zif_lnt_class_definition.
            CLEAR t283.
            DATA t284 TYPE abap_bool.
            t284 = xsdbool( t269 IS BOUND ).
            IF t284 = abap_true.
              t283 = t269.
            ELSE.
              DATA t292 TYPE REF TO zcl_lnt_class.
              CLEAR t292.
              DATA t293 TYPE REF TO zcl_lnt_class.
              CLEAR t293.
              DATA t294 TYPE REF TO zif_lnt_object.
              CLEAR t294.
              DATA t295 TYPE REF TO zif_lnt_registry.
              t295 = t226->reg.
              DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t297.
              DATA(t299) = |CLAS|.
              DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t300->has = abap_true.
              t300->value = t299.
              t297 = t300.
              DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t302.
              DATA t304 TYPE string.
              t304 = t252->value.
              DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t306->has = abap_true.
              t306->value = t304.
              t302 = t306.
              t294 = t295->get_object( i_type_9913 = t297 i_name = t302 ).
              DATA t308 TYPE REF TO object.
              t308 = t294.
              t293 ?= t308.
              t292 = t293.
              DATA t309 TYPE REF TO zif_lnt_class_definition.
              CLEAR t309.
              DATA t310 TYPE abap_bool.
              t310 = xsdbool( t292 IS BOUND ).
              IF t310 = abap_true.
                DATA t312 TYPE REF TO zif_lnt_class_definition.
                DATA t313 TYPE REF TO zcl_lnt_class.
                t313 = t292.
                t312 = t313->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t309 = t312.
              ELSE.
                CLEAR t309.
              ENDIF.
              t283 = t309.
            ENDIF.
            t259 = t283.
          ENDIF.
          t250 = t259.
          DATA t316 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t316.
          DATA t317 TYPE abap_bool.
          t317 = xsdbool( t250 IS BOUND ).
          IF t317 = abap_true.
            DATA t319 TYPE REF TO zif_lnt_interface_definition.
            DATA t320 TYPE REF TO zif_lnt_class_definition.
            t320 = t250.
            t319 ?= t320.
            t316 = t319.
          ELSE.
            DATA t323 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t323.
            DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t325.
            DATA t328 TYPE string.
            t328 = t228->value.
            DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t330->has = abap_true.
            t330->value = t328.
            t325 = t330.
            DATA t332 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t332.
            DATA(t333) = VALUE abap_bool( ).
            DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t334 = t325.
            DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t336.
            DATA(t338) = VALUE abap_bool( ).
            IF t334 IS INITIAL.
              t338 = abap_true.
            ELSEIF t334->has = abap_false.
              t338 = abap_true.
            ENDIF.
            t333 = t338.
            IF t333 = abap_true.
              CLEAR t332.
            ELSE.
              DATA t342 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t342.
              DATA t344 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t345 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t345 = t226->current.
              t344 = t345.
              DATA t347 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t347.
              DATA(t348) = xsdbool( t344 IS INITIAL ).
              IF t348 = abap_true.
                CLEAR t347.
              ELSE.
                DATA t351 TYPE REF TO zif_lnt_interface_definition.
                DATA t352 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t352 = t344.
                DATA t354 TYPE string.
                t354 = t325->value.
                t351 = t352->find_interface_definition( i_name = t354 ).
                t347 = t351.
              ENDIF.
              t342 = t347.
              DATA t356 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t356.
              DATA t357 TYPE abap_bool.
              t357 = xsdbool( t342 IS BOUND ).
              IF t357 = abap_true.
                t356 = t342.
              ELSE.
                DATA t365 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t365.
                DATA t366 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t366.
                DATA t367 TYPE REF TO zif_lnt_object.
                CLEAR t367.
                DATA t368 TYPE REF TO zif_lnt_registry.
                t368 = t226->reg.
                DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t370.
                DATA(t372) = |INTF|.
                DATA(t373) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t373->has = abap_true.
                t373->value = t372.
                t370 = t373.
                DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t375.
                DATA t377 TYPE string.
                t377 = t325->value.
                DATA(t379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t379->has = abap_true.
                t379->value = t377.
                t375 = t379.
                t367 = t368->get_object( i_type_9913 = t370 i_name = t375 ).
                DATA t381 TYPE REF TO object.
                t381 = t367.
                t366 ?= t381.
                t365 = t366.
                DATA t382 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t382.
                DATA t383 TYPE abap_bool.
                t383 = xsdbool( t365 IS BOUND ).
                IF t383 = abap_true.
                  DATA t389 TYPE REF TO zif_lnt_interface_definition.
                  t389 = t365->def.
                  t382 = t389.
                ELSE.
                  CLEAR t382.
                ENDIF.
                t356 = t382.
              ENDIF.
              t332 = t356.
            ENDIF.
            t323 = t332.
            DATA t392 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t392.
            DATA t393 TYPE abap_bool.
            t393 = xsdbool( t323 IS BOUND ).
            IF t393 = abap_true.
              t392 = t323.
            ELSE.
              CLEAR t392.
            ENDIF.
            t316 = t392.
          ENDIF.
          t240 = t316.
        ENDIF.
        t225 = t240.
        DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t401.
        DATA t402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t404) = |~|.
        DATA(t405) = strlen( t217 ).
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
            t410 = t217+t406(1).
            APPEND t410 TO t402->items.
            t406 = t406 + 1.
          ENDWHILE.
        ELSE.
          WHILE t406 <= t405.
            FIND FIRST OCCURRENCE OF t404 IN SECTION OFFSET t406 OF t217 MATCH OFFSET t407.
            IF sy-subrc = 0.
              t408 = t407 - t406.
            ELSE.
              t407 = -1.
              t408 = t405 - t406.
            ENDIF.
            CLEAR t410.
            IF t408 > 0.
              t410 = t217+t406(t408).
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
        t412 = xsdbool( t223 IS BOUND ).
        IF t412 = abap_true.
          result = t223.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t421 TYPE REF TO zif_lnt_interface_definition.
    t421 = t1.
    t420 = t421->get_super_class( ).
    t419 = t420.
    DATA(t423) = VALUE abap_bool( ).
    IF t419 IS BOUND.
      IF t419->has = abap_true.
        t423 = xsdbool( strlen( t419->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t423 = abap_true.
      DATA t425 TYPE REF TO zif_lnt_event_definition.
      DATA t426 TYPE REF TO zif_lnt_interface_definition.
      DATA t427 TYPE REF TO zif_lnt_class_definition.
      DATA t428 TYPE string.
      t428 = t419->value.
      t427 = me->find_super_definition( i_name = t428 ).
      t426 ?= t427.
      DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t432 TYPE string.
      t432 = t2->value.
      DATA(t434) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t434->has = abap_true.
      t434->value = t432.
      t430 = t434.
      t425 = me->search_event( i_def = t426 i_name = t430 ).
      result = t425.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD search_attribute_name.
    DATA(t1) = i_def.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE string.
    DATA t21 TYPE string.
    t21 = t2->value.
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
    t26 = t1.
    t25 = t26->get_attributes( ).
    t24 = t25.
    DATA t28 TYPE abap_bool.
    t28 = xsdbool( t24 IS BOUND ).
    IF t28 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t30 = t24->get_all( ).
      DATA t32 TYPE REF TO zcl_lnt_class_attribute.
      DATA t33 TYPE REF TO object.
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
        t40 = t32.
        DATA(t42) = VALUE string( ).
        DATA t43 TYPE string.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        t46 = t40->token.
        DATA t48 TYPE string.
        t48 = t46->str.
        t43 = t48.
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
          t58 = t43.
          DATA(t60) = VALUE string( ).
          DATA(t62) = 1.
          DATA t63 TYPE i.
          t63 = strlen( t58 ).
          DATA(t66) = strlen( t58 ).
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
            t60 = t58+t62(t63).
          ENDIF.
          t57 = t60.
          t43 = t57.
        ENDIF.
        t42 = t43.
        t39 = t42.
        DATA(t68) = strlen( t39 ).
        t38 = t39.
        IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t38 TO UPPER CASE.
        ELSE.
          t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
        ENDIF.
        t37 = xsdbool( t38 = t19 ).
        IF t37 = abap_true.
          result = t32.
          RETURN.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zif_lnt_interface_definition.
    t77 = t1.
    t76 = t77->get_aliases( ).
    t75 = t76.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t80 TYPE abap_bool.
    t80 = xsdbool( t75 IS BOUND ).
    IF t80 = abap_true.
      t79 = t75.
    ELSE.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t83.
      t79 = t83.
    ENDIF.
    t74 = t79.
    DATA t84 TYPE REF TO zcl_lnt_alias.
    DATA t85 TYPE REF TO object.
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
      t92 = t84.
      DATA(t94) = VALUE string( ).
      DATA t95 TYPE string.
      DATA t98 TYPE REF TO zcl_lnt_abstract_token.
      t98 = t92->token.
      DATA t100 TYPE string.
      t100 = t98->str.
      t95 = t100.
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
        t110 = t95.
        DATA(t112) = VALUE string( ).
        DATA(t114) = 1.
        DATA t115 TYPE i.
        t115 = strlen( t110 ).
        DATA(t118) = strlen( t110 ).
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
          t112 = t110+t114(t115).
        ENDIF.
        t109 = t112.
        t95 = t109.
      ENDIF.
      t94 = t95.
      t91 = t94.
      DATA(t120) = strlen( t91 ).
      t90 = t91.
      IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t90 TO UPPER CASE.
      ELSE.
        t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
      ENDIF.
      t89 = xsdbool( t90 = t19 ).
      IF t89 = abap_true.
        DATA t122 TYPE string.
        DATA t126 TYPE string.
        t126 = t84->component.
        t122 = t126.
        DATA t128 TYPE REF TO zcl_lnt_class_attribute.
        CLEAR t128.
        DATA t129 TYPE REF TO zcl_lnt_class_attribute.
        CLEAR t129.
        DATA t130 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t130.
        DATA t131 TYPE REF TO zcl_lnt_current_scope.
        t131 = me->scope.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t133.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t137) = |~|.
        DATA(t138) = strlen( t122 ).
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
            t143 = t122+t139(1).
            APPEND t143 TO t135->items.
            t139 = t139 + 1.
          ENDWHILE.
        ELSE.
          WHILE t139 <= t138.
            FIND FIRST OCCURRENCE OF t137 IN SECTION OFFSET t139 OF t122 MATCH OFFSET t140.
            IF sy-subrc = 0.
              t141 = t140 - t139.
            ELSE.
              t140 = -1.
              t141 = t138 - t139.
            ENDIF.
            CLEAR t143.
            IF t141 > 0.
              t143 = t122+t139(t141).
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
        t147 = t133.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        DATA(t151) = VALUE abap_bool( ).
        IF t147 IS INITIAL.
          t151 = abap_true.
        ELSEIF t147->has = abap_false.
          t151 = abap_true.
        ENDIF.
        t146 = t151.
        IF t146 = abap_true.
          CLEAR t145.
        ELSE.
          DATA t155 TYPE REF TO zif_lnt_class_definition.
          CLEAR t155.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          DATA t160 TYPE string.
          t160 = t133->value.
          DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t162->has = abap_true.
          t162->value = t160.
          t157 = t162.
          DATA t164 TYPE REF TO zif_lnt_class_definition.
          CLEAR t164.
          DATA(t165) = VALUE abap_bool( ).
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t166 = t157.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          DATA(t170) = VALUE abap_bool( ).
          IF t166 IS INITIAL.
            t170 = abap_true.
          ELSEIF t166->has = abap_false.
            t170 = abap_true.
          ENDIF.
          t165 = t170.
          IF t165 = abap_true.
            CLEAR t164.
          ELSE.
            DATA t174 TYPE REF TO zif_lnt_class_definition.
            CLEAR t174.
            DATA t176 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t177 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t177 = t131->current.
            t176 = t177.
            DATA t179 TYPE REF TO zif_lnt_class_definition.
            CLEAR t179.
            DATA(t180) = xsdbool( t176 IS INITIAL ).
            IF t180 = abap_true.
              CLEAR t179.
            ELSE.
              DATA t183 TYPE REF TO zif_lnt_class_definition.
              DATA t184 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t184 = t176.
              DATA t186 TYPE string.
              t186 = t157->value.
              t183 = t184->find_class_definition( i_name = t186 ).
              t179 = t183.
            ENDIF.
            t174 = t179.
            DATA t188 TYPE REF TO zif_lnt_class_definition.
            CLEAR t188.
            DATA t189 TYPE abap_bool.
            t189 = xsdbool( t174 IS BOUND ).
            IF t189 = abap_true.
              t188 = t174.
            ELSE.
              DATA t197 TYPE REF TO zcl_lnt_class.
              CLEAR t197.
              DATA t198 TYPE REF TO zcl_lnt_class.
              CLEAR t198.
              DATA t199 TYPE REF TO zif_lnt_object.
              CLEAR t199.
              DATA t200 TYPE REF TO zif_lnt_registry.
              t200 = t131->reg.
              DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t202.
              DATA(t204) = |CLAS|.
              DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t205->has = abap_true.
              t205->value = t204.
              t202 = t205.
              DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t207.
              DATA t209 TYPE string.
              t209 = t157->value.
              DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t211->has = abap_true.
              t211->value = t209.
              t207 = t211.
              t199 = t200->get_object( i_type_9913 = t202 i_name = t207 ).
              DATA t213 TYPE REF TO object.
              t213 = t199.
              t198 ?= t213.
              t197 = t198.
              DATA t214 TYPE REF TO zif_lnt_class_definition.
              CLEAR t214.
              DATA t215 TYPE abap_bool.
              t215 = xsdbool( t197 IS BOUND ).
              IF t215 = abap_true.
                DATA t217 TYPE REF TO zif_lnt_class_definition.
                DATA t218 TYPE REF TO zcl_lnt_class.
                t218 = t197.
                t217 = t218->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t214 = t217.
              ELSE.
                CLEAR t214.
              ENDIF.
              t188 = t214.
            ENDIF.
            t164 = t188.
          ENDIF.
          t155 = t164.
          DATA t221 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t221.
          DATA t222 TYPE abap_bool.
          t222 = xsdbool( t155 IS BOUND ).
          IF t222 = abap_true.
            DATA t224 TYPE REF TO zif_lnt_interface_definition.
            DATA t225 TYPE REF TO zif_lnt_class_definition.
            t225 = t155.
            t224 ?= t225.
            t221 = t224.
          ELSE.
            DATA t228 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t228.
            DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t230.
            DATA t233 TYPE string.
            t233 = t133->value.
            DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t235->has = abap_true.
            t235->value = t233.
            t230 = t235.
            DATA t237 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t237.
            DATA(t238) = VALUE abap_bool( ).
            DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t239 = t230.
            DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t241.
            DATA(t243) = VALUE abap_bool( ).
            IF t239 IS INITIAL.
              t243 = abap_true.
            ELSEIF t239->has = abap_false.
              t243 = abap_true.
            ENDIF.
            t238 = t243.
            IF t238 = abap_true.
              CLEAR t237.
            ELSE.
              DATA t247 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t247.
              DATA t249 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t250 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t250 = t131->current.
              t249 = t250.
              DATA t252 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t252.
              DATA(t253) = xsdbool( t249 IS INITIAL ).
              IF t253 = abap_true.
                CLEAR t252.
              ELSE.
                DATA t256 TYPE REF TO zif_lnt_interface_definition.
                DATA t257 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t257 = t249.
                DATA t259 TYPE string.
                t259 = t230->value.
                t256 = t257->find_interface_definition( i_name = t259 ).
                t252 = t256.
              ENDIF.
              t247 = t252.
              DATA t261 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t261.
              DATA t262 TYPE abap_bool.
              t262 = xsdbool( t247 IS BOUND ).
              IF t262 = abap_true.
                t261 = t247.
              ELSE.
                DATA t270 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t270.
                DATA t271 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t271.
                DATA t272 TYPE REF TO zif_lnt_object.
                CLEAR t272.
                DATA t273 TYPE REF TO zif_lnt_registry.
                t273 = t131->reg.
                DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t275.
                DATA(t277) = |INTF|.
                DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t278->has = abap_true.
                t278->value = t277.
                t275 = t278.
                DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t280.
                DATA t282 TYPE string.
                t282 = t230->value.
                DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t284->has = abap_true.
                t284->value = t282.
                t280 = t284.
                t272 = t273->get_object( i_type_9913 = t275 i_name = t280 ).
                DATA t286 TYPE REF TO object.
                t286 = t272.
                t271 ?= t286.
                t270 = t271.
                DATA t287 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t287.
                DATA t288 TYPE abap_bool.
                t288 = xsdbool( t270 IS BOUND ).
                IF t288 = abap_true.
                  DATA t294 TYPE REF TO zif_lnt_interface_definition.
                  t294 = t270->def.
                  t287 = t294.
                ELSE.
                  CLEAR t287.
                ENDIF.
                t261 = t287.
              ENDIF.
              t237 = t261.
            ENDIF.
            t228 = t237.
            DATA t297 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t297.
            DATA t298 TYPE abap_bool.
            t298 = xsdbool( t228 IS BOUND ).
            IF t298 = abap_true.
              t297 = t228.
            ELSE.
              CLEAR t297.
            ENDIF.
            t221 = t297.
          ENDIF.
          t145 = t221.
        ENDIF.
        t130 = t145.
        DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t306.
        DATA t307 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t309) = |~|.
        DATA(t310) = strlen( t122 ).
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
            t315 = t122+t311(1).
            APPEND t315 TO t307->items.
            t311 = t311 + 1.
          ENDWHILE.
        ELSE.
          WHILE t311 <= t310.
            FIND FIRST OCCURRENCE OF t309 IN SECTION OFFSET t311 OF t122 MATCH OFFSET t312.
            IF sy-subrc = 0.
              t313 = t312 - t311.
            ELSE.
              t312 = -1.
              t313 = t310 - t311.
            ENDIF.
            CLEAR t315.
            IF t313 > 0.
              t315 = t122+t311(t313).
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
        t317 = xsdbool( t128 IS BOUND ).
        IF t317 = abap_true.
          result = t128.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t324) = VALUE abap_bool( ).
    DATA(t325) = VALUE i( ).
    DATA t326 TYPE string.
    t326 = t2->value.
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
      DATA(t335) = |~|.
      DATA(t336) = strlen( t19 ).
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
          t341 = t19+t337(1).
          APPEND t341 TO t333->items.
          t337 = t337 + 1.
        ENDWHILE.
      ELSE.
        WHILE t337 <= t336.
          FIND FIRST OCCURRENCE OF t335 IN SECTION OFFSET t337 OF t19 MATCH OFFSET t338.
          IF sy-subrc = 0.
            t339 = t338 - t337.
          ELSE.
            t338 = -1.
            t339 = t336 - t337.
          ENDIF.
          CLEAR t341.
          IF t339 > 0.
            t341 = t19+t337(t339).
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
      t344 = t1.
      t343 = me->list_interfaces_recursive( i_definition = t344 ).
      t342 = t343->includes( p0 = t331 ).
      IF t342 = abap_true.
        DATA t347 TYPE REF TO zcl_lnt_class_attribute.
        DATA t348 TYPE REF TO zif_lnt_interface_definition.
        DATA t349 TYPE REF TO zcl_lnt_current_scope.
        t349 = me->scope.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t355->has = abap_true.
        t355->value = t331.
        t351 = t355.
        DATA t357 TYPE REF TO zif_lnt_interface_definition.
        DATA(t358) = VALUE abap_bool( ).
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t359 = t351.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t363) = VALUE abap_bool( ).
        IF t359 IS INITIAL.
          t363 = abap_true.
        ELSEIF t359->has = abap_false.
          t363 = abap_true.
        ENDIF.
        t358 = t363.
        IF t358 = abap_true.
        ELSE.
          DATA t367 TYPE REF TO zif_lnt_interface_definition.
          DATA t369 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t370 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t370 = t349->current.
          t369 = t370.
          DATA t372 TYPE REF TO zif_lnt_interface_definition.
          DATA(t373) = xsdbool( t369 IS INITIAL ).
          IF t373 = abap_true.
          ELSE.
            DATA t376 TYPE REF TO zif_lnt_interface_definition.
            DATA t377 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t377 = t369.
            DATA t379 TYPE string.
            t379 = t351->value.
            t376 = t377->find_interface_definition( i_name = t379 ).
            t372 = t376.
          ENDIF.
          t367 = t372.
          DATA t381 TYPE REF TO zif_lnt_interface_definition.
          DATA t382 TYPE abap_bool.
          t382 = xsdbool( t367 IS BOUND ).
          IF t382 = abap_true.
            t381 = t367.
          ELSE.
            DATA t390 TYPE REF TO zcl_lnt_ob_interface.
            DATA t391 TYPE REF TO zcl_lnt_ob_interface.
            DATA t392 TYPE REF TO zif_lnt_object.
            DATA t393 TYPE REF TO zif_lnt_registry.
            t393 = t349->reg.
            DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t397) = |INTF|.
            DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t398->has = abap_true.
            t398->value = t397.
            t395 = t398.
            DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t402 TYPE string.
            t402 = t351->value.
            DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t404->has = abap_true.
            t404->value = t402.
            t400 = t404.
            t392 = t393->get_object( i_type_9913 = t395 i_name = t400 ).
            DATA t406 TYPE REF TO object.
            t406 = t392.
            t391 ?= t406.
            t390 = t391.
            DATA t407 TYPE REF TO zif_lnt_interface_definition.
            DATA t408 TYPE abap_bool.
            t408 = xsdbool( t390 IS BOUND ).
            IF t408 = abap_true.
              DATA t414 TYPE REF TO zif_lnt_interface_definition.
              t414 = t390->def.
              t407 = t414.
            ELSE.
              CLEAR t407.
            ENDIF.
            t381 = t407.
          ENDIF.
          t357 = t381.
        ENDIF.
        t348 = t357.
        DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t418 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t419 TYPE string.
        t419 = t2->value.
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
    t431 = t1.
    t430 = t431->get_super_class( ).
    t429 = t430.
    DATA(t433) = VALUE abap_bool( ).
    IF t429 IS BOUND.
      IF t429->has = abap_true.
        t433 = xsdbool( strlen( t429->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t433 = abap_true.
      DATA t435 TYPE REF TO zcl_lnt_class_attribute.
      DATA t436 TYPE REF TO zif_lnt_interface_definition.
      DATA t437 TYPE REF TO zif_lnt_class_definition.
      DATA t438 TYPE string.
      t438 = t429->value.
      t437 = me->find_super_definition( i_name = t438 ).
      t436 ?= t437.
      DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t442 TYPE string.
      t442 = t2->value.
      DATA(t444) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t444->has = abap_true.
      t444->value = t442.
      t440 = t444.
      t435 = me->search_attribute_name( i_def = t436 i_name = t440 ).
      result = t435.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD search_type_name.
    DATA(t1) = i_def.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t21 TYPE REF TO zif_lnt_type_definitions.
    DATA t22 TYPE REF TO zif_lnt_interface_definition.
    t22 = t1.
    t21 = t22->get_type_definitions( ).
    DATA t24 TYPE string.
    t24 = t2->value.
    t20 = t21->get_by_name( i_name = t24 ).
    t19 = t20.
    DATA t26 TYPE abap_bool.
    t26 = xsdbool( t19 IS BOUND ).
    IF t26 = abap_true.
      result = t19.
      RETURN.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zif_lnt_interface_definition.
    t34 = t1.
    t33 = t34->get_aliases( ).
    DATA t36 TYPE REF TO zcl_lnt_alias.
    DATA t37 TYPE REF TO object.
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
      t44 = t36.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE string.
      DATA t50 TYPE REF TO zcl_lnt_abstract_token.
      t50 = t44->token.
      DATA t52 TYPE string.
      t52 = t50->str.
      t47 = t52.
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
        t62 = t47.
        DATA(t64) = VALUE string( ).
        DATA(t66) = 1.
        DATA t67 TYPE i.
        t67 = strlen( t62 ).
        DATA(t70) = strlen( t62 ).
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
          t64 = t62+t66(t67).
        ENDIF.
        t61 = t64.
        t47 = t61.
      ENDIF.
      t46 = t47.
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
      t74 = t2->value.
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
        DATA t81 TYPE string.
        t81 = t36->component.
        t77 = t81.
        DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t83.
        DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t84.
        DATA t85 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t85.
        DATA t86 TYPE REF TO zcl_lnt_current_scope.
        t86 = me->scope.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t92) = |~|.
        DATA(t93) = strlen( t77 ).
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
            t98 = t77+t94(1).
            APPEND t98 TO t90->items.
            t94 = t94 + 1.
          ENDWHILE.
        ELSE.
          WHILE t94 <= t93.
            FIND FIRST OCCURRENCE OF t92 IN SECTION OFFSET t94 OF t77 MATCH OFFSET t95.
            IF sy-subrc = 0.
              t96 = t95 - t94.
            ELSE.
              t95 = -1.
              t96 = t93 - t94.
            ENDIF.
            CLEAR t98.
            IF t96 > 0.
              t98 = t77+t94(t96).
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
        t102 = t88.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        DATA(t106) = VALUE abap_bool( ).
        IF t102 IS INITIAL.
          t106 = abap_true.
        ELSEIF t102->has = abap_false.
          t106 = abap_true.
        ENDIF.
        t101 = t106.
        IF t101 = abap_true.
          CLEAR t100.
        ELSE.
          DATA t110 TYPE REF TO zif_lnt_class_definition.
          CLEAR t110.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          DATA t115 TYPE string.
          t115 = t88->value.
          DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t117->has = abap_true.
          t117->value = t115.
          t112 = t117.
          DATA t119 TYPE REF TO zif_lnt_class_definition.
          CLEAR t119.
          DATA(t120) = VALUE abap_bool( ).
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t121 = t112.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          DATA(t125) = VALUE abap_bool( ).
          IF t121 IS INITIAL.
            t125 = abap_true.
          ELSEIF t121->has = abap_false.
            t125 = abap_true.
          ENDIF.
          t120 = t125.
          IF t120 = abap_true.
            CLEAR t119.
          ELSE.
            DATA t129 TYPE REF TO zif_lnt_class_definition.
            CLEAR t129.
            DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t132 = t86->current.
            t131 = t132.
            DATA t134 TYPE REF TO zif_lnt_class_definition.
            CLEAR t134.
            DATA(t135) = xsdbool( t131 IS INITIAL ).
            IF t135 = abap_true.
              CLEAR t134.
            ELSE.
              DATA t138 TYPE REF TO zif_lnt_class_definition.
              DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t139 = t131.
              DATA t141 TYPE string.
              t141 = t112->value.
              t138 = t139->find_class_definition( i_name = t141 ).
              t134 = t138.
            ENDIF.
            t129 = t134.
            DATA t143 TYPE REF TO zif_lnt_class_definition.
            CLEAR t143.
            DATA t144 TYPE abap_bool.
            t144 = xsdbool( t129 IS BOUND ).
            IF t144 = abap_true.
              t143 = t129.
            ELSE.
              DATA t152 TYPE REF TO zcl_lnt_class.
              CLEAR t152.
              DATA t153 TYPE REF TO zcl_lnt_class.
              CLEAR t153.
              DATA t154 TYPE REF TO zif_lnt_object.
              CLEAR t154.
              DATA t155 TYPE REF TO zif_lnt_registry.
              t155 = t86->reg.
              DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t157.
              DATA(t159) = |CLAS|.
              DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t160->has = abap_true.
              t160->value = t159.
              t157 = t160.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t162.
              DATA t164 TYPE string.
              t164 = t112->value.
              DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t166->has = abap_true.
              t166->value = t164.
              t162 = t166.
              t154 = t155->get_object( i_type_9913 = t157 i_name = t162 ).
              DATA t168 TYPE REF TO object.
              t168 = t154.
              t153 ?= t168.
              t152 = t153.
              DATA t169 TYPE REF TO zif_lnt_class_definition.
              CLEAR t169.
              DATA t170 TYPE abap_bool.
              t170 = xsdbool( t152 IS BOUND ).
              IF t170 = abap_true.
                DATA t172 TYPE REF TO zif_lnt_class_definition.
                DATA t173 TYPE REF TO zcl_lnt_class.
                t173 = t152.
                t172 = t173->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t169 = t172.
              ELSE.
                CLEAR t169.
              ENDIF.
              t143 = t169.
            ENDIF.
            t119 = t143.
          ENDIF.
          t110 = t119.
          DATA t176 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t176.
          DATA t177 TYPE abap_bool.
          t177 = xsdbool( t110 IS BOUND ).
          IF t177 = abap_true.
            DATA t179 TYPE REF TO zif_lnt_interface_definition.
            DATA t180 TYPE REF TO zif_lnt_class_definition.
            t180 = t110.
            t179 ?= t180.
            t176 = t179.
          ELSE.
            DATA t183 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t183.
            DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t185.
            DATA t188 TYPE string.
            t188 = t88->value.
            DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t190->has = abap_true.
            t190->value = t188.
            t185 = t190.
            DATA t192 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t192.
            DATA(t193) = VALUE abap_bool( ).
            DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t194 = t185.
            DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t196.
            DATA(t198) = VALUE abap_bool( ).
            IF t194 IS INITIAL.
              t198 = abap_true.
            ELSEIF t194->has = abap_false.
              t198 = abap_true.
            ENDIF.
            t193 = t198.
            IF t193 = abap_true.
              CLEAR t192.
            ELSE.
              DATA t202 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t202.
              DATA t204 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t205 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t205 = t86->current.
              t204 = t205.
              DATA t207 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t207.
              DATA(t208) = xsdbool( t204 IS INITIAL ).
              IF t208 = abap_true.
                CLEAR t207.
              ELSE.
                DATA t211 TYPE REF TO zif_lnt_interface_definition.
                DATA t212 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t212 = t204.
                DATA t214 TYPE string.
                t214 = t185->value.
                t211 = t212->find_interface_definition( i_name = t214 ).
                t207 = t211.
              ENDIF.
              t202 = t207.
              DATA t216 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t216.
              DATA t217 TYPE abap_bool.
              t217 = xsdbool( t202 IS BOUND ).
              IF t217 = abap_true.
                t216 = t202.
              ELSE.
                DATA t225 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t225.
                DATA t226 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t226.
                DATA t227 TYPE REF TO zif_lnt_object.
                CLEAR t227.
                DATA t228 TYPE REF TO zif_lnt_registry.
                t228 = t86->reg.
                DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t230.
                DATA(t232) = |INTF|.
                DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t233->has = abap_true.
                t233->value = t232.
                t230 = t233.
                DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t235.
                DATA t237 TYPE string.
                t237 = t185->value.
                DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t239->has = abap_true.
                t239->value = t237.
                t235 = t239.
                t227 = t228->get_object( i_type_9913 = t230 i_name = t235 ).
                DATA t241 TYPE REF TO object.
                t241 = t227.
                t226 ?= t241.
                t225 = t226.
                DATA t242 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t242.
                DATA t243 TYPE abap_bool.
                t243 = xsdbool( t225 IS BOUND ).
                IF t243 = abap_true.
                  DATA t249 TYPE REF TO zif_lnt_interface_definition.
                  t249 = t225->def.
                  t242 = t249.
                ELSE.
                  CLEAR t242.
                ENDIF.
                t216 = t242.
              ENDIF.
              t192 = t216.
            ENDIF.
            t183 = t192.
            DATA t252 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t252.
            DATA t253 TYPE abap_bool.
            t253 = xsdbool( t183 IS BOUND ).
            IF t253 = abap_true.
              t252 = t183.
            ELSE.
              CLEAR t252.
            ENDIF.
            t176 = t252.
          ENDIF.
          t100 = t176.
        ENDIF.
        t85 = t100.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t261.
        DATA t262 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t264) = |~|.
        DATA(t265) = strlen( t77 ).
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
            t270 = t77+t266(1).
            APPEND t270 TO t262->items.
            t266 = t266 + 1.
          ENDWHILE.
        ELSE.
          WHILE t266 <= t265.
            FIND FIRST OCCURRENCE OF t264 IN SECTION OFFSET t266 OF t77 MATCH OFFSET t267.
            IF sy-subrc = 0.
              t268 = t267 - t266.
            ELSE.
              t267 = -1.
              t268 = t265 - t266.
            ENDIF.
            CLEAR t270.
            IF t268 > 0.
              t270 = t77+t266(t268).
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
        t272 = xsdbool( t83 IS BOUND ).
        IF t272 = abap_true.
          result = t83.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t279) = VALUE abap_bool( ).
    DATA(t280) = VALUE i( ).
    DATA t281 TYPE string.
    t281 = t2->value.
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
      t289 = t2->value.
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
      t299 = abap_false.
      DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t302 TYPE REF TO zif_lnt_interface_definition.
      t302 = t1.
      t301 = t302->get_implementing( ).
      DATA t304 TYPE REF TO zcl_lnt_iimplementing.
      DATA t305 TYPE REF TO object.
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
        t311 = t304->name.
        DATA(t313) = strlen( t311 ).
        t310 = t311.
        IF t310 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t310 TO UPPER CASE.
        ELSE.
          t310 = zlnt_runtime_uppe_91169605024d=>full( t310 ).
        ENDIF.
        DATA t314 TYPE string.
        DATA(t316) = strlen( t286 ).
        t314 = t286.
        IF t314 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t314 TO UPPER CASE.
        ELSE.
          t314 = zlnt_runtime_uppe_91169605024d=>full( t314 ).
        ENDIF.
        t309 = xsdbool( t310 = t314 ).
        IF t309 = abap_true.
          t299 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      t298 = t299.
      IF t298 = abap_true.
        DATA t319 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t320 TYPE REF TO zif_lnt_interface_definition.
        DATA t321 TYPE REF TO zcl_lnt_current_scope.
        t321 = me->scope.
        DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t327) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t327->has = abap_true.
        t327->value = t286.
        t323 = t327.
        DATA t329 TYPE REF TO zif_lnt_interface_definition.
        DATA(t330) = VALUE abap_bool( ).
        DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t331 = t323.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t335) = VALUE abap_bool( ).
        IF t331 IS INITIAL.
          t335 = abap_true.
        ELSEIF t331->has = abap_false.
          t335 = abap_true.
        ENDIF.
        t330 = t335.
        IF t330 = abap_true.
        ELSE.
          DATA t339 TYPE REF TO zif_lnt_interface_definition.
          DATA t341 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t342 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t342 = t321->current.
          t341 = t342.
          DATA t344 TYPE REF TO zif_lnt_interface_definition.
          DATA(t345) = xsdbool( t341 IS INITIAL ).
          IF t345 = abap_true.
          ELSE.
            DATA t348 TYPE REF TO zif_lnt_interface_definition.
            DATA t349 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t349 = t341.
            DATA t351 TYPE string.
            t351 = t323->value.
            t348 = t349->find_interface_definition( i_name = t351 ).
            t344 = t348.
          ENDIF.
          t339 = t344.
          DATA t353 TYPE REF TO zif_lnt_interface_definition.
          DATA t354 TYPE abap_bool.
          t354 = xsdbool( t339 IS BOUND ).
          IF t354 = abap_true.
            t353 = t339.
          ELSE.
            DATA t362 TYPE REF TO zcl_lnt_ob_interface.
            DATA t363 TYPE REF TO zcl_lnt_ob_interface.
            DATA t364 TYPE REF TO zif_lnt_object.
            DATA t365 TYPE REF TO zif_lnt_registry.
            t365 = t321->reg.
            DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t369) = |INTF|.
            DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t370->has = abap_true.
            t370->value = t369.
            t367 = t370.
            DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t374 TYPE string.
            t374 = t323->value.
            DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t376->has = abap_true.
            t376->value = t374.
            t372 = t376.
            t364 = t365->get_object( i_type_9913 = t367 i_name = t372 ).
            DATA t378 TYPE REF TO object.
            t378 = t364.
            t363 ?= t378.
            t362 = t363.
            DATA t379 TYPE REF TO zif_lnt_interface_definition.
            DATA t380 TYPE abap_bool.
            t380 = xsdbool( t362 IS BOUND ).
            IF t380 = abap_true.
              DATA t386 TYPE REF TO zif_lnt_interface_definition.
              t386 = t362->def.
              t379 = t386.
            ELSE.
              CLEAR t379.
            ENDIF.
            t353 = t379.
          ENDIF.
          t329 = t353.
        ENDIF.
        t320 = t329.
        DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t390 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t391 TYPE string.
        t391 = t2->value.
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
    t403 = t1.
    t402 = t403->get_super_class( ).
    t401 = t402.
    DATA(t405) = VALUE abap_bool( ).
    IF t401 IS BOUND.
      IF t401->has = abap_true.
        t405 = xsdbool( strlen( t401->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t405 = abap_true.
      DATA t407 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t408 TYPE REF TO zif_lnt_interface_definition.
      DATA t409 TYPE REF TO zif_lnt_class_definition.
      DATA t410 TYPE string.
      t410 = t401->value.
      t409 = me->find_super_definition( i_name = t410 ).
      t408 ?= t409.
      DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t414 TYPE string.
      t414 = t2->value.
      DATA(t416) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t416->has = abap_true.
      t416->value = t414.
      t412 = t416.
      t407 = me->search_type_name( i_def = t408 i_name = t412 ).
      result = t407.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD search_constant_name.
    DATA(t1) = i_def.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE string.
    DATA t21 TYPE string.
    t21 = t2->value.
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
    t26 = t1.
    t25 = t26->get_attributes( ).
    t24 = t25->get_constants( ).
    DATA t28 TYPE REF TO zcl_lnt_class_constant.
    DATA t29 TYPE REF TO object.
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
      t36 = t28.
      DATA(t38) = VALUE string( ).
      DATA t39 TYPE string.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      t42 = t36->token.
      DATA t44 TYPE string.
      t44 = t42->str.
      t39 = t44.
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
        t54 = t39.
        DATA(t56) = VALUE string( ).
        DATA(t58) = 1.
        DATA t59 TYPE i.
        t59 = strlen( t54 ).
        DATA(t62) = strlen( t54 ).
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
          t56 = t54+t58(t59).
        ENDIF.
        t53 = t56.
        t39 = t53.
      ENDIF.
      t38 = t39.
      t35 = t38.
      DATA(t64) = strlen( t35 ).
      t34 = t35.
      IF t34 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t34 TO UPPER CASE.
      ELSE.
        t34 = zlnt_runtime_uppe_91169605024d=>full( t34 ).
      ENDIF.
      t33 = xsdbool( t34 = t19 ).
      IF t33 = abap_true.
        result = t28.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t71 TYPE REF TO zif_lnt_interface_definition.
    t71 = t1.
    t70 = t71->get_aliases( ).
    DATA t73 TYPE REF TO zcl_lnt_alias.
    DATA t74 TYPE REF TO object.
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
      t81 = t73.
      DATA(t83) = VALUE string( ).
      DATA t84 TYPE string.
      DATA t87 TYPE REF TO zcl_lnt_abstract_token.
      t87 = t81->token.
      DATA t89 TYPE string.
      t89 = t87->str.
      t84 = t89.
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
        t99 = t84.
        DATA(t101) = VALUE string( ).
        DATA(t103) = 1.
        DATA t104 TYPE i.
        t104 = strlen( t99 ).
        DATA(t107) = strlen( t99 ).
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
          t101 = t99+t103(t104).
        ENDIF.
        t98 = t101.
        t84 = t98.
      ENDIF.
      t83 = t84.
      t80 = t83.
      DATA(t109) = strlen( t80 ).
      t79 = t80.
      IF t79 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t79 TO UPPER CASE.
      ELSE.
        t79 = zlnt_runtime_uppe_91169605024d=>full( t79 ).
      ENDIF.
      t78 = xsdbool( t79 = t19 ).
      IF t78 = abap_true.
        DATA t111 TYPE string.
        DATA t115 TYPE string.
        t115 = t73->component.
        t111 = t115.
        DATA t117 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t117.
        DATA t118 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t118.
        DATA t119 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_current_scope.
        t120 = me->scope.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t126) = |~|.
        DATA(t127) = strlen( t111 ).
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
            t132 = t111+t128(1).
            APPEND t132 TO t124->items.
            t128 = t128 + 1.
          ENDWHILE.
        ELSE.
          WHILE t128 <= t127.
            FIND FIRST OCCURRENCE OF t126 IN SECTION OFFSET t128 OF t111 MATCH OFFSET t129.
            IF sy-subrc = 0.
              t130 = t129 - t128.
            ELSE.
              t129 = -1.
              t130 = t127 - t128.
            ENDIF.
            CLEAR t132.
            IF t130 > 0.
              t132 = t111+t128(t130).
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
        t136 = t122.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        DATA(t140) = VALUE abap_bool( ).
        IF t136 IS INITIAL.
          t140 = abap_true.
        ELSEIF t136->has = abap_false.
          t140 = abap_true.
        ENDIF.
        t135 = t140.
        IF t135 = abap_true.
          CLEAR t134.
        ELSE.
          DATA t144 TYPE REF TO zif_lnt_class_definition.
          CLEAR t144.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          DATA t149 TYPE string.
          t149 = t122->value.
          DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t151->has = abap_true.
          t151->value = t149.
          t146 = t151.
          DATA t153 TYPE REF TO zif_lnt_class_definition.
          CLEAR t153.
          DATA(t154) = VALUE abap_bool( ).
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t155 = t146.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          DATA(t159) = VALUE abap_bool( ).
          IF t155 IS INITIAL.
            t159 = abap_true.
          ELSEIF t155->has = abap_false.
            t159 = abap_true.
          ENDIF.
          t154 = t159.
          IF t154 = abap_true.
            CLEAR t153.
          ELSE.
            DATA t163 TYPE REF TO zif_lnt_class_definition.
            CLEAR t163.
            DATA t165 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t166 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t166 = t120->current.
            t165 = t166.
            DATA t168 TYPE REF TO zif_lnt_class_definition.
            CLEAR t168.
            DATA(t169) = xsdbool( t165 IS INITIAL ).
            IF t169 = abap_true.
              CLEAR t168.
            ELSE.
              DATA t172 TYPE REF TO zif_lnt_class_definition.
              DATA t173 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t173 = t165.
              DATA t175 TYPE string.
              t175 = t146->value.
              t172 = t173->find_class_definition( i_name = t175 ).
              t168 = t172.
            ENDIF.
            t163 = t168.
            DATA t177 TYPE REF TO zif_lnt_class_definition.
            CLEAR t177.
            DATA t178 TYPE abap_bool.
            t178 = xsdbool( t163 IS BOUND ).
            IF t178 = abap_true.
              t177 = t163.
            ELSE.
              DATA t186 TYPE REF TO zcl_lnt_class.
              CLEAR t186.
              DATA t187 TYPE REF TO zcl_lnt_class.
              CLEAR t187.
              DATA t188 TYPE REF TO zif_lnt_object.
              CLEAR t188.
              DATA t189 TYPE REF TO zif_lnt_registry.
              t189 = t120->reg.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              DATA(t193) = |CLAS|.
              DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t194->has = abap_true.
              t194->value = t193.
              t191 = t194.
              DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t196.
              DATA t198 TYPE string.
              t198 = t146->value.
              DATA(t200) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t200->has = abap_true.
              t200->value = t198.
              t196 = t200.
              t188 = t189->get_object( i_type_9913 = t191 i_name = t196 ).
              DATA t202 TYPE REF TO object.
              t202 = t188.
              t187 ?= t202.
              t186 = t187.
              DATA t203 TYPE REF TO zif_lnt_class_definition.
              CLEAR t203.
              DATA t204 TYPE abap_bool.
              t204 = xsdbool( t186 IS BOUND ).
              IF t204 = abap_true.
                DATA t206 TYPE REF TO zif_lnt_class_definition.
                DATA t207 TYPE REF TO zcl_lnt_class.
                t207 = t186.
                t206 = t207->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t203 = t206.
              ELSE.
                CLEAR t203.
              ENDIF.
              t177 = t203.
            ENDIF.
            t153 = t177.
          ENDIF.
          t144 = t153.
          DATA t210 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t210.
          DATA t211 TYPE abap_bool.
          t211 = xsdbool( t144 IS BOUND ).
          IF t211 = abap_true.
            DATA t213 TYPE REF TO zif_lnt_interface_definition.
            DATA t214 TYPE REF TO zif_lnt_class_definition.
            t214 = t144.
            t213 ?= t214.
            t210 = t213.
          ELSE.
            DATA t217 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t217.
            DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t219.
            DATA t222 TYPE string.
            t222 = t122->value.
            DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t224->has = abap_true.
            t224->value = t222.
            t219 = t224.
            DATA t226 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t226.
            DATA(t227) = VALUE abap_bool( ).
            DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t228 = t219.
            DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t230.
            DATA(t232) = VALUE abap_bool( ).
            IF t228 IS INITIAL.
              t232 = abap_true.
            ELSEIF t228->has = abap_false.
              t232 = abap_true.
            ENDIF.
            t227 = t232.
            IF t227 = abap_true.
              CLEAR t226.
            ELSE.
              DATA t236 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t236.
              DATA t238 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t239 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t239 = t120->current.
              t238 = t239.
              DATA t241 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t241.
              DATA(t242) = xsdbool( t238 IS INITIAL ).
              IF t242 = abap_true.
                CLEAR t241.
              ELSE.
                DATA t245 TYPE REF TO zif_lnt_interface_definition.
                DATA t246 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t246 = t238.
                DATA t248 TYPE string.
                t248 = t219->value.
                t245 = t246->find_interface_definition( i_name = t248 ).
                t241 = t245.
              ENDIF.
              t236 = t241.
              DATA t250 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t250.
              DATA t251 TYPE abap_bool.
              t251 = xsdbool( t236 IS BOUND ).
              IF t251 = abap_true.
                t250 = t236.
              ELSE.
                DATA t259 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t259.
                DATA t260 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t260.
                DATA t261 TYPE REF TO zif_lnt_object.
                CLEAR t261.
                DATA t262 TYPE REF TO zif_lnt_registry.
                t262 = t120->reg.
                DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t264.
                DATA(t266) = |INTF|.
                DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t267->has = abap_true.
                t267->value = t266.
                t264 = t267.
                DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t269.
                DATA t271 TYPE string.
                t271 = t219->value.
                DATA(t273) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t273->has = abap_true.
                t273->value = t271.
                t269 = t273.
                t261 = t262->get_object( i_type_9913 = t264 i_name = t269 ).
                DATA t275 TYPE REF TO object.
                t275 = t261.
                t260 ?= t275.
                t259 = t260.
                DATA t276 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t276.
                DATA t277 TYPE abap_bool.
                t277 = xsdbool( t259 IS BOUND ).
                IF t277 = abap_true.
                  DATA t283 TYPE REF TO zif_lnt_interface_definition.
                  t283 = t259->def.
                  t276 = t283.
                ELSE.
                  CLEAR t276.
                ENDIF.
                t250 = t276.
              ENDIF.
              t226 = t250.
            ENDIF.
            t217 = t226.
            DATA t286 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t286.
            DATA t287 TYPE abap_bool.
            t287 = xsdbool( t217 IS BOUND ).
            IF t287 = abap_true.
              t286 = t217.
            ELSE.
              CLEAR t286.
            ENDIF.
            t210 = t286.
          ENDIF.
          t134 = t210.
        ENDIF.
        t119 = t134.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        DATA t296 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t298) = |~|.
        DATA(t299) = strlen( t111 ).
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
            t304 = t111+t300(1).
            APPEND t304 TO t296->items.
            t300 = t300 + 1.
          ENDWHILE.
        ELSE.
          WHILE t300 <= t299.
            FIND FIRST OCCURRENCE OF t298 IN SECTION OFFSET t300 OF t111 MATCH OFFSET t301.
            IF sy-subrc = 0.
              t302 = t301 - t300.
            ELSE.
              t301 = -1.
              t302 = t299 - t300.
            ENDIF.
            CLEAR t304.
            IF t302 > 0.
              t304 = t111+t300(t302).
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
        t306 = xsdbool( t117 IS BOUND ).
        IF t306 = abap_true.
          result = t117.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t313) = VALUE abap_bool( ).
    DATA(t314) = VALUE i( ).
    DATA t315 TYPE string.
    t315 = t2->value.
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
      DATA(t324) = |~|.
      DATA(t325) = strlen( t19 ).
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
          t330 = t19+t326(1).
          APPEND t330 TO t322->items.
          t326 = t326 + 1.
        ENDWHILE.
      ELSE.
        WHILE t326 <= t325.
          FIND FIRST OCCURRENCE OF t324 IN SECTION OFFSET t326 OF t19 MATCH OFFSET t327.
          IF sy-subrc = 0.
            t328 = t327 - t326.
          ELSE.
            t327 = -1.
            t328 = t325 - t326.
          ENDIF.
          CLEAR t330.
          IF t328 > 0.
            t330 = t19+t326(t328).
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
      t332 = abap_false.
      DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t335 TYPE REF TO zif_lnt_interface_definition.
      t335 = t1.
      t334 = t335->get_implementing( ).
      DATA t337 TYPE REF TO zcl_lnt_iimplementing.
      DATA t338 TYPE REF TO object.
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
        t344 = t337->name.
        DATA(t346) = strlen( t344 ).
        t343 = t344.
        IF t343 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t343 TO UPPER CASE.
        ELSE.
          t343 = zlnt_runtime_uppe_91169605024d=>full( t343 ).
        ENDIF.
        t342 = xsdbool( t343 = t320 ).
        IF t342 = abap_true.
          t332 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      t331 = t332.
      IF t331 = abap_true.
        DATA t350 TYPE REF TO zcl_lnt_class_constant.
        DATA t351 TYPE REF TO zif_lnt_interface_definition.
        DATA t352 TYPE REF TO zcl_lnt_current_scope.
        t352 = me->scope.
        DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t358) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t358->has = abap_true.
        t358->value = t320.
        t354 = t358.
        DATA t360 TYPE REF TO zif_lnt_interface_definition.
        DATA(t361) = VALUE abap_bool( ).
        DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t362 = t354.
        DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t366) = VALUE abap_bool( ).
        IF t362 IS INITIAL.
          t366 = abap_true.
        ELSEIF t362->has = abap_false.
          t366 = abap_true.
        ENDIF.
        t361 = t366.
        IF t361 = abap_true.
        ELSE.
          DATA t370 TYPE REF TO zif_lnt_interface_definition.
          DATA t372 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t373 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t373 = t352->current.
          t372 = t373.
          DATA t375 TYPE REF TO zif_lnt_interface_definition.
          DATA(t376) = xsdbool( t372 IS INITIAL ).
          IF t376 = abap_true.
          ELSE.
            DATA t379 TYPE REF TO zif_lnt_interface_definition.
            DATA t380 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t380 = t372.
            DATA t382 TYPE string.
            t382 = t354->value.
            t379 = t380->find_interface_definition( i_name = t382 ).
            t375 = t379.
          ENDIF.
          t370 = t375.
          DATA t384 TYPE REF TO zif_lnt_interface_definition.
          DATA t385 TYPE abap_bool.
          t385 = xsdbool( t370 IS BOUND ).
          IF t385 = abap_true.
            t384 = t370.
          ELSE.
            DATA t393 TYPE REF TO zcl_lnt_ob_interface.
            DATA t394 TYPE REF TO zcl_lnt_ob_interface.
            DATA t395 TYPE REF TO zif_lnt_object.
            DATA t396 TYPE REF TO zif_lnt_registry.
            t396 = t352->reg.
            DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t400) = |INTF|.
            DATA(t401) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t401->has = abap_true.
            t401->value = t400.
            t398 = t401.
            DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t405 TYPE string.
            t405 = t354->value.
            DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t407->has = abap_true.
            t407->value = t405.
            t403 = t407.
            t395 = t396->get_object( i_type_9913 = t398 i_name = t403 ).
            DATA t409 TYPE REF TO object.
            t409 = t395.
            t394 ?= t409.
            t393 = t394.
            DATA t410 TYPE REF TO zif_lnt_interface_definition.
            DATA t411 TYPE abap_bool.
            t411 = xsdbool( t393 IS BOUND ).
            IF t411 = abap_true.
              DATA t417 TYPE REF TO zif_lnt_interface_definition.
              t417 = t393->def.
              t410 = t417.
            ELSE.
              CLEAR t410.
            ENDIF.
            t384 = t410.
          ENDIF.
          t360 = t384.
        ENDIF.
        t351 = t360.
        DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t421 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t422 TYPE string.
        t422 = t2->value.
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
    t434 = t1.
    t433 = t434->get_super_class( ).
    t432 = t433.
    DATA(t436) = VALUE abap_bool( ).
    IF t432 IS BOUND.
      IF t432->has = abap_true.
        t436 = xsdbool( strlen( t432->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t436 = abap_true.
      DATA t438 TYPE REF TO zcl_lnt_class_constant.
      DATA t439 TYPE REF TO zif_lnt_interface_definition.
      DATA t440 TYPE REF TO zif_lnt_class_definition.
      DATA t441 TYPE string.
      t441 = t432->value.
      t440 = me->find_super_definition( i_name = t441 ).
      t439 ?= t440.
      DATA t443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t445 TYPE string.
      t445 = t2->value.
      DATA(t447) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t447->has = abap_true.
      t447->value = t445.
      t443 = t447.
      t438 = me->search_constant_name( i_def = t439 i_name = t443 ).
      result = t438.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD search_method_name.
    DATA(t1) = i_def.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_shape_a38e878f.
      DATA t19 TYPE REF TO zif_lnt_method_definition.
      DATA t21 TYPE REF TO zif_lnt_interface_definition.
      t18 = NEW zcl_lnt_shape_a38e878f( i_method = t19 i_def = t21 ).
      CREATE OBJECT t18->zlnt_view_ownkeys_b0e8086400eb.
      t18->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t18->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t23 ).
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t18->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t18->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t24 ).
      ENDIF.
      CREATE OBJECT t18->zlnt_json_ownkeys_70e5fd461788.
      t18->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t25) = |method|.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = t25 p1 = t26 ).
      DATA(t27) = |def|.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t18->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
      ENDIF.
      result = t18.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zif_lnt_method_definition.
    DATA t30 TYPE REF TO zif_lnt_method_definition.
    DATA t31 TYPE REF TO zif_lnt_interface_definition.
    t31 = t1.
    DATA t33 TYPE string.
    t33 = t2->value.
    t30 = me->find_method( i_def = t31 i_method_name = t33 ).
    t29 = t30.
    DATA t35 TYPE abap_bool.
    t35 = xsdbool( t29 IS BOUND ).
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_shape_a38e878f.
      DATA t38 TYPE REF TO zif_lnt_method_definition.
      t38 = t29.
      DATA t44 TYPE REF TO zif_lnt_interface_definition.
      t44 = t1.
      t37 = NEW zcl_lnt_shape_a38e878f( i_method = t38 i_def = t44 ).
      CREATE OBJECT t37->zlnt_view_ownkeys_b0e8086400eb.
      t37->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t50 ).
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t51 ).
      ENDIF.
      CREATE OBJECT t37->zlnt_json_ownkeys_70e5fd461788.
      t37->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t52) = |method|.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
      DATA(t54) = |def|.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
      ENDIF.
      result = t37.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = VALUE i( ).
    DATA t60 TYPE string.
    t60 = t2->value.
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
      DATA(t67) = VALUE string( ).
      DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t69 TYPE string.
      t69 = t2->value.
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
      t56 = t78.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = VALUE abap_bool( ).
      IF t56 IS BOUND.
        IF t56->has = abap_true.
          t81 = xsdbool( strlen( t56->value ) > 0 ).
        ENDIF.
      ENDIF.
      t80 = t81.
      IF t81 = abap_true.
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = VALUE abap_bool( ).
        DATA t85 TYPE abap_bool.
        t85 = abap_false.
        DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t88 TYPE REF TO zif_lnt_interface_definition.
        t88 = t1.
        t87 = me->find_interfaces( i_cd = t88 ).
        DATA t90 TYPE REF TO zcl_lnt_iimplementing.
        DATA t91 TYPE REF TO object.
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
          t97 = t90->name.
          DATA(t99) = strlen( t97 ).
          t96 = t97.
          IF t96 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t96 TO UPPER CASE.
          ELSE.
            t96 = zlnt_runtime_uppe_91169605024d=>full( t96 ).
          ENDIF.
          DATA t100 TYPE string.
          DATA t101 TYPE string.
          t101 = t56->value.
          DATA(t103) = strlen( t101 ).
          t100 = t101.
          IF t100 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t100 TO UPPER CASE.
          ELSE.
            t100 = zlnt_runtime_uppe_91169605024d=>full( t100 ).
          ENDIF.
          t95 = xsdbool( t96 = t100 ).
          IF t95 = abap_true.
            t85 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
        t84 = t85.
        t83 = xsdbool( t84 = abap_false ).
        t80 = t83.
      ENDIF.
      IF t80 = abap_true.
        DATA t107 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t108 TYPE REF TO zif_lnt_method_definition.
        DATA t110 TYPE REF TO zif_lnt_interface_definition.
        t107 = NEW zcl_lnt_shape_a38e878f( i_method = t108 i_def = t110 ).
        CREATE OBJECT t107->zlnt_view_ownkeys_b0e8086400eb.
        t107->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t112 ).
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t113 ).
        ENDIF.
        CREATE OBJECT t107->zlnt_json_ownkeys_70e5fd461788.
        t107->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t114) = |method|.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
        DATA(t116) = |def|.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
        ENDIF.
        result = t107.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t118) = VALUE abap_bool( ).
    DATA(t119) = VALUE abap_bool( ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t119 = xsdbool( t29 IS INITIAL ).
    t118 = t119.
    IF t119 = abap_true.
      DATA(t126) = VALUE abap_bool( ).
      IF t56 IS BOUND.
        IF t56->has = abap_true.
          t126 = xsdbool( strlen( t56->value ) > 0 ).
        ENDIF.
      ENDIF.
      t118 = t126.
    ENDIF.
    IF t118 = abap_true.
      DATA(t130) = VALUE string( ).
      DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t132 TYPE string.
      t132 = t2->value.
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
      t2 = t141.
      DATA t143 TYPE REF TO zcl_lnt_shape_a38e878f.
      DATA t146 TYPE string.
      t146 = t56->value.
      DATA t148 TYPE string.
      DATA t149 TYPE string.
      t149 = t2->value.
      t148 = t149.
      DATA t152 TYPE REF TO zif_lnt_interface_definition.
      DATA t154 TYPE REF TO zcl_lnt_current_scope.
      t154 = me->scope.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t160->has = abap_true.
      t160->value = t146.
      t156 = t160.
      DATA t162 TYPE REF TO zif_lnt_interface_definition.
      DATA(t163) = VALUE abap_bool( ).
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t164 = t156.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t168) = VALUE abap_bool( ).
      IF t164 IS INITIAL.
        t168 = abap_true.
      ELSEIF t164->has = abap_false.
        t168 = abap_true.
      ENDIF.
      t163 = t168.
      IF t163 = abap_true.
      ELSE.
        DATA t172 TYPE REF TO zif_lnt_interface_definition.
        DATA t174 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t175 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t175 = t154->current.
        t174 = t175.
        DATA t177 TYPE REF TO zif_lnt_interface_definition.
        DATA(t178) = xsdbool( t174 IS INITIAL ).
        IF t178 = abap_true.
        ELSE.
          DATA t181 TYPE REF TO zif_lnt_interface_definition.
          DATA t182 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t182 = t174.
          DATA t184 TYPE string.
          t184 = t156->value.
          t181 = t182->find_interface_definition( i_name = t184 ).
          t177 = t181.
        ENDIF.
        t172 = t177.
        DATA t186 TYPE REF TO zif_lnt_interface_definition.
        DATA t187 TYPE abap_bool.
        t187 = xsdbool( t172 IS BOUND ).
        IF t187 = abap_true.
          t186 = t172.
        ELSE.
          DATA t195 TYPE REF TO zcl_lnt_ob_interface.
          DATA t196 TYPE REF TO zcl_lnt_ob_interface.
          DATA t197 TYPE REF TO zif_lnt_object.
          DATA t198 TYPE REF TO zif_lnt_registry.
          t198 = t154->reg.
          DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t202) = |INTF|.
          DATA(t203) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t203->has = abap_true.
          t203->value = t202.
          t200 = t203.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t207 TYPE string.
          t207 = t156->value.
          DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t209->has = abap_true.
          t209->value = t207.
          t205 = t209.
          t197 = t198->get_object( i_type_9913 = t200 i_name = t205 ).
          DATA t211 TYPE REF TO object.
          t211 = t197.
          t196 ?= t211.
          t195 = t196.
          DATA t212 TYPE REF TO zif_lnt_interface_definition.
          DATA t213 TYPE abap_bool.
          t213 = xsdbool( t195 IS BOUND ).
          IF t213 = abap_true.
            DATA t219 TYPE REF TO zif_lnt_interface_definition.
            t219 = t195->def.
            t212 = t219.
          ELSE.
            CLEAR t212.
          ENDIF.
          t186 = t212.
        ENDIF.
        t162 = t186.
      ENDIF.
      t152 = t162.
      DATA t222 TYPE REF TO zcl_lnt_shape_a38e878f.
      DATA t223 TYPE abap_bool.
      t223 = xsdbool( t152 IS BOUND ).
      IF t223 = abap_true.
        DATA t226 TYPE REF TO zif_lnt_method_definition.
        DATA t227 TYPE REF TO zif_lnt_method_definition.
        DATA t228 TYPE REF TO zif_lnt_method_definitions.
        DATA t229 TYPE REF TO zif_lnt_interface_definition.
        t229 = t152.
        t228 = t229->get_method_definitions( ).
        DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t234->has = abap_true.
        t234->value = t148.
        t231 = t234.
        t227 = t228->get_by_name( i_name = t231 ).
        t226 = t227.
        DATA t236 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t237 TYPE abap_bool.
        t237 = xsdbool( t226 IS BOUND ).
        IF t237 = abap_true.
          DATA t241 TYPE REF TO zcl_lnt_shape_a38e878f.
          DATA t242 TYPE REF TO zif_lnt_method_definition.
          t242 = t226.
          DATA t248 TYPE REF TO zif_lnt_interface_definition.
          t248 = t152.
          t241 = NEW zcl_lnt_shape_a38e878f( i_method = t242 i_def = t248 ).
          CREATE OBJECT t241->zlnt_view_ownkeys_b0e8086400eb.
          t241->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t254 ).
          DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t255 ).
          ENDIF.
          CREATE OBJECT t241->zlnt_json_ownkeys_70e5fd461788.
          t241->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t256) = |method|.
          DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
          DATA(t258) = |def|.
          DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
          ENDIF.
          t236 = t241.
        ELSE.
          DATA t261 TYPE REF TO zcl_lnt_shape_a38e878f.
          DATA t263 TYPE REF TO zif_lnt_interface_definition.
          t263 = t152.
          t261 = me->find_method_via_alias( i_method_name = t148 i_def = t263 ).
          t236 = t261.
        ENDIF.
        t222 = t236.
      ELSE.
        CLEAR t222.
      ENDIF.
      t143 = t222.
      DATA t266 TYPE abap_bool.
      t266 = xsdbool( t143 IS BOUND ).
      IF t266 = abap_true.
        result = t143.
        RETURN.
      ENDIF.
    ELSE.
      DATA(t270) = VALUE abap_bool( ).
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t270 = xsdbool( t29 IS INITIAL ).
      IF t270 = abap_true.
        DATA t277 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t278 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t279 TYPE string.
        t279 = t2->value.
        DATA t281 TYPE REF TO zif_lnt_interface_definition.
        t281 = t1.
        t278 = me->find_method_via_alias( i_method_name = t279 i_def = t281 ).
        t277 = t278.
        DATA t283 TYPE abap_bool.
        t283 = xsdbool( t277 IS BOUND ).
        IF t283 = abap_true.
          result = t277.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t289 TYPE REF TO zif_lnt_interface_definition.
    t289 = t1.
    t288 = t289->get_super_class( ).
    t287 = t288.
    DATA(t291) = VALUE abap_bool( ).
    DATA(t292) = VALUE abap_bool( ).
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t292 = xsdbool( t29 IS INITIAL ).
    t291 = t292.
    IF t292 = abap_true.
      DATA(t299) = VALUE abap_bool( ).
      IF t287 IS BOUND.
        IF t287->has = abap_true.
          t299 = xsdbool( strlen( t287->value ) > 0 ).
        ENDIF.
      ENDIF.
      t291 = t299.
    ENDIF.
    IF t291 = abap_true.
      DATA t301 TYPE REF TO zcl_lnt_shape_a38e878f.
      DATA t302 TYPE REF TO zif_lnt_interface_definition.
      DATA t303 TYPE REF TO zif_lnt_class_definition.
      DATA t304 TYPE string.
      t304 = t287->value.
      t303 = me->find_super_definition( i_name = t304 ).
      t302 ?= t303.
      DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t308 TYPE string.
      t308 = t2->value.
      DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t310->has = abap_true.
      t310->value = t308.
      t306 = t310.
      t301 = me->search_method_name( i_def = t302 i_name = t306 ).
      result = t301.
      RETURN.
    ENDIF.
    DATA t312 TYPE REF TO zcl_lnt_shape_a38e878f.
    DATA t313 TYPE REF TO zif_lnt_method_definition.
    DATA t315 TYPE REF TO zif_lnt_interface_definition.
    t312 = NEW zcl_lnt_shape_a38e878f( i_method = t313 i_def = t315 ).
    CREATE OBJECT t312->zlnt_view_ownkeys_b0e8086400eb.
    t312->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t317 ).
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t318 ).
    ENDIF.
    CREATE OBJECT t312->zlnt_json_ownkeys_70e5fd461788.
    t312->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t319) = |method|.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t319 p1 = t320 ).
    DATA(t321) = |def|.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    t4 = t1->get_method_definitions( ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6 = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zif_lnt_method_definition.
    DATA t15 TYPE REF TO zif_lnt_method_definition.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t20->has = abap_true.
    t20->value = t2.
    t17 = t20.
    t15 = t3->get_by_name( i_name = t17 ).
    t14 = t15.
    DATA(t22) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t22 = xsdbool( t14 IS INITIAL ).
    IF t22 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t30 TYPE abap_bool.
    DATA t31 TYPE REF TO zif_lnt_method_definition.
    t31 = t14.
    t30 = t31->is_redefinition( ).
    IF t30 = abap_true.
      DATA t33 TYPE REF TO zif_lnt_method_definition.
      t33 = me->find_method_in_super( i_child = t1 i_method_name = t2 ).
      result = t33.
      RETURN.
    ENDIF.
    result = t14.

  ENDMETHOD.

  METHOD find_method_in_super.
    DATA(t2) = i_method_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4 = i_child->get_super_class( ).
    t3 = t4.
    DO.
      DATA(t6) = VALUE abap_bool( ).
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t7 = t3.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE abap_bool( ).
      IF t7 IS INITIAL.
        t12 = abap_true.
      ELSEIF t7->has = abap_false.
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
      t16 = t3->value.
      t15 = me->find_super_definition( i_name = t16 ).
      t14 = t15.
      DATA t18 TYPE REF TO zif_lnt_method_definition.
      DATA t19 TYPE REF TO zif_lnt_method_definition.
      DATA t20 TYPE REF TO zif_lnt_interface_definition.
      t20 ?= t14.
      t19 = me->find_method( i_def = t20 i_method_name = t2 ).
      t18 = t19.
      DATA t23 TYPE abap_bool.
      t23 = xsdbool( t18 IS BOUND ).
      IF t23 = abap_true.
        result = t18.
        RETURN.
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t30 = t14->get_super_class( ).
      t3 = t30.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_super_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zif_lnt_class_definition.
    DATA t4 TYPE REF TO zcl_lnt_current_scope.
    t4 = me->scope.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = t1.
    t6 = t10.
    DATA t12 TYPE REF TO zif_lnt_class_definition.
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t14 = t6.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = VALUE abap_bool( ).
    IF t14 IS INITIAL.
      t18 = abap_true.
    ELSEIF t14->has = abap_false.
      t18 = abap_true.
    ENDIF.
    t13 = t18.
    IF t13 = abap_true.
    ELSE.
      DATA t22 TYPE REF TO zif_lnt_class_definition.
      DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t25 = t4->current.
      t24 = t25.
      DATA t27 TYPE REF TO zif_lnt_class_definition.
      DATA(t28) = xsdbool( t24 IS INITIAL ).
      IF t28 = abap_true.
      ELSE.
        DATA t31 TYPE REF TO zif_lnt_class_definition.
        DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t32 = t24.
        DATA(t34) = VALUE string( ).
        t34 = t6->value.
        t31 = t32->find_class_definition( i_name = t34 ).
        t27 = t31.
      ENDIF.
      t22 = t27.
      DATA t36 TYPE REF TO zif_lnt_class_definition.
      DATA(t37) = VALUE abap_bool( ).
      t37 = xsdbool( t22 IS BOUND ).
      IF t37 = abap_true.
        t36 = t22.
      ELSE.
        DATA t45 TYPE REF TO zcl_lnt_class.
        DATA t46 TYPE REF TO zcl_lnt_class.
        DATA t47 TYPE REF TO zif_lnt_object.
        DATA t48 TYPE REF TO zif_lnt_registry.
        t48 = t4->reg.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t52) = |CLAS|.
        DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t53->has = abap_true.
        t53->value = t52.
        t50 = t53.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t57) = VALUE string( ).
        t57 = t6->value.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t57.
        t55 = t59.
        t47 = t48->get_object( i_type_9913 = t50 i_name = t55 ).
        DATA t61 TYPE REF TO object.
        t61 = t47.
        t46 ?= t61.
        t45 = t46.
        DATA t62 TYPE REF TO zif_lnt_class_definition.
        DATA(t63) = VALUE abap_bool( ).
        t63 = xsdbool( t45 IS BOUND ).
        IF t63 = abap_true.
          DATA t65 TYPE REF TO zif_lnt_class_definition.
          DATA t66 TYPE REF TO zcl_lnt_class.
          t66 = t45.
          t65 = t66->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t62 = t65.
        ELSE.
          CLEAR t62.
        ENDIF.
        t36 = t62.
      ENDIF.
      t12 = t36.
    ENDIF.
    t2 = t12.
    DATA(t69) = VALUE abap_bool( ).
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t69 = xsdbool( t2 IS INITIAL ).
    IF t69 = abap_true.
      DATA t76 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t77 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t80) = VALUE string( ).
      DATA(t81) = VALUE string( ).
      DATA(t82) = |Super class "|.
      DATA(t84) = strlen( t82 ).
      t81 = |{ t82 }{ t1 }|.
      DATA(t85) = |" not found or contains errors|.
      DATA(t86) = strlen( t81 ).
      t80 = |{ t81 }{ t85 }|.
      DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t87->has = abap_true.
      t87->value = t80.
      t78 = t87.
      t77 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t78 ).
      t76 = NEW #( ).
      t76->payload = t77.
      CLEAR t76->source_value.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t90 TYPE REF TO object.
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
      RAISE EXCEPTION t76.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD frm_spr_clsss_and_intrfcs.
    DATA(t1) = i_child.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t3 = me->from_super_classes( i_child = t1 ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zif_lnt_interface_definition.
    t6 ?= t1.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t8 = t3.
    t5 = me->from_interfaces( i_definition = t6 i_skip_34cc = t8 ).
  ENDMETHOD.

  METHOD from_super_classes.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = i_child->get_super_class( ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t6.
    t5 = t6.
    DO.
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t8 = t2.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      IF t8 IS INITIAL.
        t13 = abap_true.
      ELSEIF t8->has = abap_false.
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
      t17 = t2->value.
      t16 = me->find_super_definition( i_name = t17 ).
      t15 = t16.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zif_lnt_attributes.
      t20 = t15->get_attributes( ).
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
        DATA t31 TYPE f.
        t31 = t22->visibility.
        t28 = t31.
        DATA(t33) = CONV f( 1 ).
        t27 = xsdbool( t28 <> t33 ).
        IF t27 = abap_true.
          DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
          t36 = t22.
          DATA(t38) = VALUE abap_bool( ).
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          t38 = xsdbool( t36 IS INITIAL ).
          IF t38 = abap_true.
          ELSE.
            DATA(t46) = VALUE string( ).
            DATA t47 TYPE REF TO zcl_lnt_fi_identifier.
            t47 = t36.
            DATA(t50) = VALUE string( ).
            DATA t51 TYPE string.
            DATA t54 TYPE REF TO zcl_lnt_abstract_token.
            t54 = t47->token.
            DATA t56 TYPE string.
            t56 = t54->str.
            t51 = t56.
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
              t66 = t51.
              DATA(t68) = VALUE string( ).
              DATA(t70) = 1.
              DATA t71 TYPE i.
              t71 = strlen( t66 ).
              DATA(t74) = strlen( t66 ).
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
                t68 = t66+t70(t71).
              ENDIF.
              t65 = t68.
              t51 = t65.
            ENDIF.
            t50 = t51.
            t46 = t50.
            DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
            t76 = t36.
            me->scope->add_named_identifier( i_name = t46 i_identifier = t76 ).
          ENDIF.
        ENDIF.
      ENDDO.
      DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t79 TYPE REF TO zif_lnt_attributes.
      t79 = t15->get_attributes( ).
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
        DATA t90 TYPE f.
        t90 = t81->visibility.
        t87 = t90.
        DATA(t92) = CONV f( 1 ).
        t86 = xsdbool( t87 <> t92 ).
        IF t86 = abap_true.
          DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
          t95 = t81.
          DATA(t97) = VALUE abap_bool( ).
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          t97 = xsdbool( t95 IS INITIAL ).
          IF t97 = abap_true.
          ELSE.
            DATA(t105) = VALUE string( ).
            DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
            t106 = t95.
            DATA(t109) = VALUE string( ).
            DATA t110 TYPE string.
            DATA t113 TYPE REF TO zcl_lnt_abstract_token.
            t113 = t106->token.
            DATA t115 TYPE string.
            t115 = t113->str.
            t110 = t115.
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
              t125 = t110.
              DATA(t127) = VALUE string( ).
              DATA(t129) = 1.
              DATA t130 TYPE i.
              t130 = strlen( t125 ).
              DATA(t133) = strlen( t125 ).
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
                t127 = t125+t129(t130).
              ENDIF.
              t124 = t127.
              t110 = t124.
            ENDIF.
            t109 = t110.
            t105 = t109.
            DATA t135 TYPE REF TO zcl_lnt_typed_identifier.
            t135 = t95.
            me->scope->add_named_identifier( i_name = t105 i_identifier = t135 ).
          ENDIF.
        ENDIF.
      ENDDO.
      DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t138 TYPE REF TO zif_lnt_type_definitions.
      t138 = t15->get_type_definitions( ).
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
        t146 = t140->visibility.
        DATA(t148) = CONV f( 1 ).
        t145 = xsdbool( t146 <> t148 ).
        IF t145 = abap_true.
          DATA t151 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t151.
          DATA t154 TYPE REF TO zcl_lnt_typed_identifier.
          t154 = t140->type_cba0.
          t151 = t154.
          DATA(t157) = VALUE abap_bool( ).
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          t157 = xsdbool( t151 IS INITIAL ).
          IF t157 = abap_true.
          ELSE.
            DATA(t165) = VALUE string( ).
            DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
            t166 = t151.
            DATA(t169) = VALUE string( ).
            DATA t170 TYPE string.
            DATA t173 TYPE REF TO zcl_lnt_abstract_token.
            t173 = t166->token.
            DATA t175 TYPE string.
            t175 = t173->str.
            t170 = t175.
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
              t185 = t170.
              DATA(t187) = VALUE string( ).
              DATA(t189) = 1.
              DATA t190 TYPE i.
              t190 = strlen( t185 ).
              DATA(t193) = strlen( t185 ).
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
                t187 = t185+t189(t190).
              ENDIF.
              t184 = t187.
              t170 = t184.
            ENDIF.
            t169 = t170.
            t165 = t169.
            DATA t195 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t195.
            t195 = t151.
            me->scope->add_type_named( i_name = t165 i_type_9913 = t195 ).
          ENDIF.
        ENDIF.
      ENDDO.
      DATA(t200) = VALUE i( ).
      DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t201.
      DATA t202 TYPE REF TO zif_lnt_interface_definition.
      t202 ?= t15.
      DATA t204 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t204.
      t204 = t5.
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
        t5->load( ).
        APPEND t208 TO t5->items.
        t5->save( ).
      ENDDO.
      DATA t212 TYPE i.
      t5->load( ).
      t212 = lines( t5->items ).
      t200 = t212.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t214 = t15->get_super_class( ).
      t2 = t214.
    ENDDO.
    result = t5.

  ENDMETHOD.

  METHOD list_interfaces_recursive.
    DATA(t1) = i_definition.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->get_implementing( ).
    DATA t6 TYPE REF TO zcl_lnt_iimplementing.
    DATA t7 TYPE REF TO object.
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
      t13 = t6->name.
      DATA(t15) = strlen( t13 ).
      t12 = t13.
      IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t12 TO UPPER CASE.
      ELSE.
        t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
      ENDIF.
      t11 = t12.
      t2->load( ).
      APPEND t11 TO t2->items.
      t2->save( ).
      DATA t18 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t18.
      DATA t20 TYPE REF TO zcl_lnt_current_scope.
      t20 = me->scope.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t11.
      t22 = t26.
      DATA t28 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t30 = t22.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      DATA(t34) = VALUE abap_bool( ).
      IF t30 IS INITIAL.
        t34 = abap_true.
      ELSEIF t30->has = abap_false.
        t34 = abap_true.
      ENDIF.
      t29 = t34.
      IF t29 = abap_true.
        CLEAR t28.
      ELSE.
        DATA t38 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t38.
        DATA t40 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t41 = t20->current.
        t40 = t41.
        DATA t43 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t43.
        DATA(t44) = xsdbool( t40 IS INITIAL ).
        IF t44 = abap_true.
          CLEAR t43.
        ELSE.
          DATA t47 TYPE REF TO zif_lnt_interface_definition.
          DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t48 = t40.
          DATA t50 TYPE string.
          t50 = t22->value.
          t47 = t48->find_interface_definition( i_name = t50 ).
          t43 = t47.
        ENDIF.
        t38 = t43.
        DATA t52 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t52.
        DATA t53 TYPE abap_bool.
        t53 = xsdbool( t38 IS BOUND ).
        IF t53 = abap_true.
          t52 = t38.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t61.
          DATA t62 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t62.
          DATA t63 TYPE REF TO zif_lnt_object.
          CLEAR t63.
          DATA t64 TYPE REF TO zif_lnt_registry.
          t64 = t20->reg.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          DATA(t68) = |INTF|.
          DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t69->has = abap_true.
          t69->value = t68.
          t66 = t69.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          DATA t73 TYPE string.
          t73 = t22->value.
          DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t75->has = abap_true.
          t75->value = t73.
          t71 = t75.
          t63 = t64->get_object( i_type_9913 = t66 i_name = t71 ).
          DATA t77 TYPE REF TO object.
          t77 = t63.
          t62 ?= t77.
          t61 = t62.
          DATA t78 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t78.
          DATA t79 TYPE abap_bool.
          t79 = xsdbool( t61 IS BOUND ).
          IF t79 = abap_true.
            DATA t85 TYPE REF TO zif_lnt_interface_definition.
            t85 = t61->def.
            t78 = t85.
          ELSE.
            CLEAR t78.
          ENDIF.
          t52 = t78.
        ENDIF.
        t28 = t52.
      ENDIF.
      t18 = t28.
      DATA t88 TYPE abap_bool.
      t88 = xsdbool( t18 IS BOUND ).
      IF t88 = abap_true.
        DATA(t90) = VALUE i( ).
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t92 TYPE REF TO zif_lnt_interface_definition.
        t92 = t18.
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
          t2->load( ).
          APPEND t94 TO t2->items.
          t2->save( ).
        ENDDO.
        DATA t98 TYPE i.
        t2->load( ).
        t98 = lines( t2->items ).
        t90 = t98.
      ENDIF.
    ENDDO.
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t102.
    DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t107 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t108) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t107 = t108->fromarray( p0 = t2 ).
    t106 = t107->values( ).
    t104 = t102->concat( p0 = t106 ).
    result = t104.

  ENDMETHOD.

  METHOD from_interfaces.
    DATA(t1) = i_definition.
    DATA(t2) = i_skip_34cc.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->get_implementing( ).
    DATA t7 TYPE REF TO zcl_lnt_iimplementing.
    DATA t8 TYPE REF TO object.
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
      t14 = t7->name.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t16.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t19 = t2.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      DATA t22 TYPE abap_bool.
      t22 = xsdbool( t19 IS BOUND ).
      IF t22 = abap_true.
        t21 = t19.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t26.
        t21 = t26.
      ENDIF.
      t18 = t21.
      t16 = t3->concat( p0 = t18 ).
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
        t3->load( ).
        APPEND t27 TO t3->items.
        t3->save( ).
      ENDDO.
      DATA t31 TYPE i.
      t3->load( ).
      t31 = lines( t3->items ).
      t12 = t31.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD fn_is_friend.
    DATA(t1) = i_cd.
    DATA(t3) = i_name.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = i_friends.
    DATA t7 TYPE string.
    DATA(t9) = strlen( t3 ).
    t7 = t3.
    IF t7 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t7 TO UPPER CASE.
    ELSE.
      t7 = zlnt_runtime_uppe_91169605024d=>full( t7 ).
    ENDIF.
    t5 = t6->includes( p0 = t7 ).
    t4 = t5.
    IF t5 = abap_false.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t12) = me->scope.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      t14 = t1->get_name( ).
      t13 = t14.
      DATA t16 TYPE string.
      t16 = t3.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t22 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
      t22 = t12->local_friends.
      DATA t24 TYPE string.
      DATA(t26) = strlen( t13 ).
      t24 = t13.
      IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t24 TO UPPER CASE.
      ELSE.
        t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
      ENDIF.
      t21 = t22->get( p0 = t24 ).
      t20 = t21.
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t28) = xsdbool( t20 IS INITIAL ).
      IF t28 = abap_true.
      ELSE.
        DATA(t31) = VALUE abap_bool( ).
        DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t32 = t20.
        DATA t34 TYPE string.
        DATA(t36) = strlen( t16 ).
        t34 = t16.
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
      DATA(t41) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t41->has = abap_true.
      t41->value = abap_true.
      t38 = t41.
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
