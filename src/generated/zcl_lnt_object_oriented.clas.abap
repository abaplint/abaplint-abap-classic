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
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t15 = t7.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = VALUE abap_bool( ).
    IF t15 IS INITIAL.
      t19 = abap_true.
    ELSEIF t15->has = abap_false.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
    ELSE.
      DATA t23 TYPE REF TO zif_lnt_interface_definition.
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t25 = t5->current.
      DATA t28 TYPE REF TO zif_lnt_interface_definition.
      IF xsdbool( t25 IS INITIAL ) = abap_true.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t33 = t25.
        DATA t35 TYPE string.
        t35 = t7->value.
        t28 = t33->find_interface_definition( i_name = t35 ).
      ENDIF.
      t23 = t28.
      DATA t37 TYPE REF TO zif_lnt_interface_definition.
      IF xsdbool( t23 IS BOUND ) = abap_true.
        t37 = t23.
      ELSE.
        DATA t46 TYPE REF TO zcl_lnt_ob_interface.
        DATA t47 TYPE REF TO zcl_lnt_ob_interface.
        DATA t49 TYPE REF TO zif_lnt_registry.
        t49 = t5->reg.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = |INTF|.
        t51 = t54.
        DATA t58 TYPE string.
        t58 = t7->value.
        DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t60->has = abap_true.
        t60->value = t58.
        DATA t62 TYPE REF TO object.
        t62 = t49->get_object( i_type_9913 = t51 i_name = t60 ).
        t47 ?= t62.
        t46 = t47.
        DATA t63 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t46 IS BOUND ) = abap_true.
          t63 = t46->def.
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
      DATA t83 TYPE string.
      DATA(t85) = strlen( t1 ).
      t83 = t1.
      IF t83 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t83 TO UPPER CASE.
      ELSE.
        t83 = zlnt_runtime_uppe_91169605024d=>full( t83 ).
      ENDIF.
      t73 = t2->includes( p0 = t83 ).
    ENDIF.
    IF t73 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t89.
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
    t96 = t3->get_type_definitions( )->get_all( ).
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
      DATA t107 TYPE string.
      DATA(t110) = strlen( t1 ).
      t107 = |{ t1 }{ |~| }|.
      DATA(t111) = VALUE string( ).
      DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
      t112 = t100->type_cba0.
      DATA t116 TYPE string.
      t116 = t112->token->str.
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
      ELSE.
        IF t127 > t128 - t126.
          t127 = t128 - t126.
        ENDIF.
        t124 = t125+t126(t127).
      ENDIF.
      IF xsdbool( t124 = |!| ) = abap_true.
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
        ELSE.
          IF t136 > t139 - t135.
            t136 = t139 - t135.
          ENDIF.
          t133 = t131+t135(t136).
        ENDIF.
        t116 = t133.
      ENDIF.
      t111 = t116.
      DATA(t141) = strlen( t107 ).
      t105 = |{ t107 }{ t111 }|.
      DATA t146 TYPE REF TO zcl_lnt_typed_identifier.
      t146 = t100->type_cba0.
      me->scope->add_type_named( i_name = t105 i_type_9913 = t146 ).
    ENDDO.
    DATA(t149) = me->scope.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t150 = t3->get_attributes( )->get_constants( ).
    DATA(t157) = strlen( t1 ).
    t149->add_list_prefix( i_identifiers = t150 i_prefix = |{ t1 }{ |~| }| ).
    DATA(t158) = me->scope.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t159 = t3->get_attributes( )->get_static( ).
    DATA(t166) = strlen( t1 ).
    t158->add_list_prefix( i_identifiers = t159 i_prefix = |{ t1 }{ |~| }| ).
    DATA(t167) = me->scope.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t168 = t3->get_attributes( )->get_instance( ).
    DATA(t175) = strlen( t1 ).
    t167->add_list_prefix( i_identifiers = t168 i_prefix = |{ t1 }{ |~| }| ).
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t176 = t3->get_implementing( ).
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
      IF t2->includes( p0 = t186 ) = abap_true.
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
      t87->load( ).
      t190 = lines( t87->items ).
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
    t3 = t1->get_aliases( ).
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t3 IS BOUND ) = abap_true.
      t6 = t3.
    ELSE.
      CREATE OBJECT t6.
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
      t16 = t11->component.
      DATA t22 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t22.
      DATA t24 TYPE REF TO zcl_lnt_current_scope.
      t24 = me->scope.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
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
      t26 = t28->get( p0 = 0 ).
      DATA t38 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t38.
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
      IF t44 = abap_true.
        CLEAR t38.
      ELSE.
        DATA t48 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t48.
        DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t50 = t24->current.
        DATA t53 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t53.
        IF xsdbool( t50 IS INITIAL ) = abap_true.
          CLEAR t53.
        ELSE.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t58 = t50.
          DATA t60 TYPE string.
          t60 = t26->value.
          t53 = t58->find_interface_definition( i_name = t60 ).
        ENDIF.
        t48 = t53.
        DATA t62 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t62.
        IF xsdbool( t48 IS BOUND ) = abap_true.
          t62 = t48.
        ELSE.
          DATA t71 TYPE REF TO zcl_lnt_ob_interface.
          DATA t72 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t72.
          DATA t74 TYPE REF TO zif_lnt_registry.
          t74 = t24->reg.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = |INTF|.
          t76 = t79.
          DATA t83 TYPE string.
          t83 = t26->value.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = t83.
          DATA t87 TYPE REF TO object.
          t87 = t74->get_object( i_type_9913 = t76 i_name = t85 ).
          t72 ?= t87.
          t71 = t72.
          DATA t88 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t88.
          IF xsdbool( t71 IS BOUND ) = abap_true.
            t88 = t71->def.
          ELSE.
            CLEAR t88.
          ENDIF.
          t62 = t88.
        ENDIF.
        t38 = t62.
      ENDIF.
      t22 = t38.
      IF xsdbool( t22 IS BOUND ) = abap_true.
        DATA t100 TYPE REF TO zif_lnt_union_a346537f.
        CLEAR t100.
        DATA t102 TYPE REF TO zif_lnt_attributes.
        t102 = t22->get_attributes( ).
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
        READ TABLE t106->items INDEX 2 INTO t105.
        t100 = t102->find_by_name( i_name = t105 ).
        IF xsdbool( t100 IS BOUND ) = abap_true.
          DATA(t118) = VALUE string( ).
          DATA t119 TYPE REF TO zcl_lnt_fi_identifier.
          t119 = t11.
          DATA t122 TYPE string.
          t122 = t119->token->str.
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
          ELSE.
            IF t133 > t134 - t132.
              t133 = t134 - t132.
            ENDIF.
            t130 = t131+t132(t133).
          ENDIF.
          IF xsdbool( t130 = |!| ) = abap_true.
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
            ELSE.
              IF t142 > t145 - t141.
                t142 = t145 - t141.
              ENDIF.
              t139 = t137+t141(t142).
            ENDIF.
            t122 = t139.
          ENDIF.
          t118 = t122.
          DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
          t147 ?= t100.
          me->scope->add_named_identifier( i_name = t118 i_identifier = t147 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t150 = t1->get_super_class( ).
    DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t154 = t150.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t159) = VALUE abap_bool( ).
    IF t154 IS INITIAL.
      t159 = abap_true.
    ELSEIF t154->has = abap_false.
      t159 = abap_true.
    ENDIF.
    IF xsdbool( t159 = abap_false ) = abap_true.
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
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t174 = t165.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t178) = VALUE abap_bool( ).
      IF t174 IS INITIAL.
        t178 = abap_true.
      ELSEIF t174->has = abap_false.
        t178 = abap_true.
      ENDIF.
      IF t178 = abap_true.
      ELSE.
        DATA t182 TYPE REF TO zif_lnt_class_definition.
        DATA t184 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t184 = t163->current.
        DATA t187 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t184 IS INITIAL ) = abap_true.
        ELSE.
          DATA t192 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t192 = t184.
          DATA t194 TYPE string.
          t194 = t165->value.
          t187 = t192->find_class_definition( i_name = t194 ).
        ENDIF.
        t182 = t187.
        DATA t196 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t182 IS BOUND ) = abap_true.
          t196 = t182.
        ELSE.
          DATA t205 TYPE REF TO zcl_lnt_class.
          DATA t206 TYPE REF TO zcl_lnt_class.
          DATA t208 TYPE REF TO zif_lnt_registry.
          t208 = t163->reg.
          DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t213->has = abap_true.
          t213->value = |CLAS|.
          t210 = t213.
          DATA t217 TYPE string.
          t217 = t165->value.
          DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t219->has = abap_true.
          t219->value = t217.
          DATA t221 TYPE REF TO object.
          t221 = t208->get_object( i_type_9913 = t210 i_name = t219 ).
          t206 ?= t221.
          t205 = t206.
          DATA t222 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t205 IS BOUND ) = abap_true.
            t222 = t205->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t222.
          ENDIF.
          t196 = t222.
        ENDIF.
        t172 = t196.
      ENDIF.
      t161 = t172.
      IF xsdbool( t161 IS BOUND ) = abap_true.
        me->add_aliased_attributes( i_class_definition_ad05 = t161 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD add_aliased_types.
    DATA(t1) = i_class_definition_ad05.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = t1->get_aliases( ).
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t3 IS BOUND ) = abap_true.
      t6 = t3.
    ELSE.
      CREATE OBJECT t6.
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
      t16 = t11->component.
      DATA t22 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t22.
      DATA t24 TYPE REF TO zcl_lnt_current_scope.
      t24 = me->scope.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
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
      t26 = t28->get( p0 = 0 ).
      DATA t38 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t38.
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
      IF t44 = abap_true.
        CLEAR t38.
      ELSE.
        DATA t48 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t48.
        DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t50 = t24->current.
        DATA t53 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t53.
        IF xsdbool( t50 IS INITIAL ) = abap_true.
          CLEAR t53.
        ELSE.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t58 = t50.
          DATA t60 TYPE string.
          t60 = t26->value.
          t53 = t58->find_interface_definition( i_name = t60 ).
        ENDIF.
        t48 = t53.
        DATA t62 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t62.
        IF xsdbool( t48 IS BOUND ) = abap_true.
          t62 = t48.
        ELSE.
          DATA t71 TYPE REF TO zcl_lnt_ob_interface.
          DATA t72 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t72.
          DATA t74 TYPE REF TO zif_lnt_registry.
          t74 = t24->reg.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = |INTF|.
          t76 = t79.
          DATA t83 TYPE string.
          t83 = t26->value.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = t83.
          DATA t87 TYPE REF TO object.
          t87 = t74->get_object( i_type_9913 = t76 i_name = t85 ).
          t72 ?= t87.
          t71 = t72.
          DATA t88 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t88.
          IF xsdbool( t71 IS BOUND ) = abap_true.
            t88 = t71->def.
          ELSE.
            CLEAR t88.
          ENDIF.
          t62 = t88.
        ENDIF.
        t38 = t62.
      ENDIF.
      t22 = t38.
      IF xsdbool( t22 IS BOUND ) = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t100.
        DATA t102 TYPE REF TO zif_lnt_type_definitions.
        t102 = t22->get_type_definitions( ).
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
        READ TABLE t106->items INDEX 2 INTO t105.
        t100 = t102->get_by_name( i_name = t105 ).
        IF xsdbool( t100 IS BOUND ) = abap_true.
          DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t119.
          t119 = t100.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF xsdbool( t119 IS INITIAL ) = abap_true.
          ELSE.
            DATA t134 TYPE REF TO zcl_lnt_fi_identifier.
            t134 = t119.
            DATA t138 TYPE string.
            t138 = t134->token->str.
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
            ELSE.
              IF t149 > t150 - t148.
                t149 = t150 - t148.
              ENDIF.
              t146 = t147+t148(t149).
            ENDIF.
            IF xsdbool( t146 = |!| ) = abap_true.
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
              ELSE.
                IF t158 > t161 - t157.
                  t158 = t161 - t157.
                ENDIF.
                t155 = t153+t157(t158).
              ENDIF.
              t138 = t155.
            ENDIF.
            me->scope->add_type_named( i_name = t138 i_type_9913 = t119 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t168 = t1->get_super_class( ).
    DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t172 = t168.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t177) = VALUE abap_bool( ).
    IF t172 IS INITIAL.
      t177 = abap_true.
    ELSEIF t172->has = abap_false.
      t177 = abap_true.
    ENDIF.
    IF xsdbool( t177 = abap_false ) = abap_true.
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
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t192 = t183.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t196) = VALUE abap_bool( ).
      IF t192 IS INITIAL.
        t196 = abap_true.
      ELSEIF t192->has = abap_false.
        t196 = abap_true.
      ENDIF.
      IF t196 = abap_true.
      ELSE.
        DATA t200 TYPE REF TO zif_lnt_class_definition.
        DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t202 = t181->current.
        DATA t205 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t202 IS INITIAL ) = abap_true.
        ELSE.
          DATA t210 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t210 = t202.
          DATA t212 TYPE string.
          t212 = t183->value.
          t205 = t210->find_class_definition( i_name = t212 ).
        ENDIF.
        t200 = t205.
        DATA t214 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t200 IS BOUND ) = abap_true.
          t214 = t200.
        ELSE.
          DATA t223 TYPE REF TO zcl_lnt_class.
          DATA t224 TYPE REF TO zcl_lnt_class.
          DATA t226 TYPE REF TO zif_lnt_registry.
          t226 = t181->reg.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t231->has = abap_true.
          t231->value = |CLAS|.
          t228 = t231.
          DATA t235 TYPE string.
          t235 = t183->value.
          DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t237->has = abap_true.
          t237->value = t235.
          DATA t239 TYPE REF TO object.
          t239 = t226->get_object( i_type_9913 = t228 i_name = t237 ).
          t224 ?= t239.
          t223 = t224.
          DATA t240 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t223 IS BOUND ) = abap_true.
            t240 = t223->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t240.
          ENDIF.
          t214 = t240.
        ENDIF.
        t190 = t214.
      ENDIF.
      t179 = t190.
      IF xsdbool( t179 IS BOUND ) = abap_true.
        me->add_aliased_types( i_class_definition_ad05 = t179 ).
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
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t15 = t7.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = VALUE abap_bool( ).
    IF t15 IS INITIAL.
      t19 = abap_true.
    ELSEIF t15->has = abap_false.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
    ELSE.
      DATA t23 TYPE REF TO zif_lnt_interface_definition.
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t25 = t5->current.
      DATA t28 TYPE REF TO zif_lnt_interface_definition.
      IF xsdbool( t25 IS INITIAL ) = abap_true.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t33 = t25.
        DATA t35 TYPE string.
        t35 = t7->value.
        t28 = t33->find_interface_definition( i_name = t35 ).
      ENDIF.
      t23 = t28.
      DATA t37 TYPE REF TO zif_lnt_interface_definition.
      IF xsdbool( t23 IS BOUND ) = abap_true.
        t37 = t23.
      ELSE.
        DATA t46 TYPE REF TO zcl_lnt_ob_interface.
        DATA t47 TYPE REF TO zcl_lnt_ob_interface.
        DATA t49 TYPE REF TO zif_lnt_registry.
        t49 = t5->reg.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = |INTF|.
        t51 = t54.
        DATA t58 TYPE string.
        t58 = t7->value.
        DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t60->has = abap_true.
        t60->value = t58.
        DATA t62 TYPE REF TO object.
        t62 = t49->get_object( i_type_9913 = t51 i_name = t60 ).
        t47 ?= t62.
        t46 = t47.
        DATA t63 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t46 IS BOUND ) = abap_true.
          t63 = t46->def.
        ELSE.
          CLEAR t63.
        ENDIF.
        t37 = t63.
      ENDIF.
      t13 = t37.
    ENDIF.
    t3 = t13.
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA t75 TYPE REF TO zif_lnt_method_definition.
      DATA t77 TYPE REF TO zif_lnt_method_definitions.
      t77 = t3->get_method_definitions( ).
      DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t83->has = abap_true.
      t83->value = t2.
      t75 = t77->get_by_name( i_name = t83 ).
      IF xsdbool( t75 IS BOUND ) = abap_true.
        DATA t89 TYPE REF TO zcl_lnt_shape_a38e878f.
        t89 = NEW zcl_lnt_shape_a38e878f( i_method = t75 i_def = t3 ).
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
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |method| p1 = t105 ).
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |def| p1 = t107 ).
        ENDIF.
        result = t89.
        RETURN.
      ENDIF.
      result = me->find_method_via_alias( i_method_name = t2 i_def = t3 ).
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD find_method_via_alias.
    DATA(t1) = i_method_name.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = i_def->get_aliases( ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t7 = t4.
    ELSE.
      CREATE OBJECT t7.
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
      DATA(t18) = VALUE string( ).
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
      t20 = t12.
      DATA t23 TYPE string.
      t23 = t20->token->str.
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
      ELSE.
        IF t34 > t35 - t33.
          t34 = t35 - t33.
        ENDIF.
        t31 = t32+t33(t34).
      ENDIF.
      IF xsdbool( t31 = |!| ) = abap_true.
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
        ELSE.
          IF t43 > t46 - t42.
            t43 = t46 - t42.
          ENDIF.
          t40 = t38+t42(t43).
        ENDIF.
        t23 = t40.
      ENDIF.
      t19 = t23.
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
      IF xsdbool( t18 = t49 ) = abap_true.
        DATA t52 TYPE string.
        t52 = t12->component.
        DATA t58 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t58.
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
        READ TABLE t62->items INDEX 1 INTO t61.
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
        READ TABLE t73->items INDEX 2 INTO t72.
        t71 = t72.
        DATA t83 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t83.
        DATA t85 TYPE REF TO zcl_lnt_current_scope.
        t85 = me->scope.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t91->has = abap_true.
        t91->value = t61.
        t87 = t91.
        DATA t93 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t93.
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
        IF t99 = abap_true.
          CLEAR t93.
        ELSE.
          DATA t103 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t103.
          DATA t105 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t105 = t85->current.
          DATA t108 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t108.
          IF xsdbool( t105 IS INITIAL ) = abap_true.
            CLEAR t108.
          ELSE.
            DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t113 = t105.
            DATA t115 TYPE string.
            t115 = t87->value.
            t108 = t113->find_interface_definition( i_name = t115 ).
          ENDIF.
          t103 = t108.
          DATA t117 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t117.
          IF xsdbool( t103 IS BOUND ) = abap_true.
            t117 = t103.
          ELSE.
            DATA t126 TYPE REF TO zcl_lnt_ob_interface.
            DATA t127 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t127.
            DATA t129 TYPE REF TO zif_lnt_registry.
            t129 = t85->reg.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t134->has = abap_true.
            t134->value = |INTF|.
            t131 = t134.
            DATA t138 TYPE string.
            t138 = t87->value.
            DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t140->has = abap_true.
            t140->value = t138.
            DATA t142 TYPE REF TO object.
            t142 = t129->get_object( i_type_9913 = t131 i_name = t140 ).
            t127 ?= t142.
            t126 = t127.
            DATA t143 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t143.
            IF xsdbool( t126 IS BOUND ) = abap_true.
              t143 = t126->def.
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
        IF xsdbool( t83 IS BOUND ) = abap_true.
          DATA t157 TYPE REF TO zif_lnt_method_definition.
          CLEAR t157.
          DATA t159 TYPE REF TO zif_lnt_method_definitions.
          t159 = t83->get_method_definitions( ).
          DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t165->has = abap_true.
          t165->value = t71.
          t157 = t159->get_by_name( i_name = t165 ).
          DATA t167 TYPE REF TO zcl_lnt_shape_a38e878f.
          CLEAR t167.
          IF xsdbool( t157 IS BOUND ) = abap_true.
            DATA t172 TYPE REF TO zcl_lnt_shape_a38e878f.
            t172 = NEW zcl_lnt_shape_a38e878f( i_method = t157 i_def = t83 ).
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
            DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t188.
            t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |method| p1 = t188 ).
            DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t190.
            IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |def| p1 = t190 ).
            ENDIF.
            t167 = t172.
          ELSE.
            t167 = me->find_method_via_alias( i_method_name = t71 i_def = t83 ).
          ENDIF.
          t153 = t167.
        ELSE.
          CLEAR t153.
        ENDIF.
        t58 = t153.
        IF xsdbool( t58 IS BOUND ) = abap_true.
          result = t58.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD method_reference_extras.
    DATA(t1) = i_found_def.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
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
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t20 ).
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t10->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t22 ).
      ENDIF.
      result = t10.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_ireference_extras.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zif_lnt_interface_definition.
    t26 = t1.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t26 IS INITIAL ) = abap_true.
    ELSE.
      DATA t33 TYPE string.
      t33 = t26->get_name( ).
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t33.
      t29 = t35.
    ENDIF.
    t24 = t29.
    DATA(t39) = VALUE string( ).
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_class_definition ) = abap_true.
      t39 = |CLAS|.
    ELSE.
      t39 = |INTF|.
    ENDIF.
    DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t44->has = abap_true.
    t44->value = t39.
    DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t23 = NEW zcl_lnt_ireference_extras( i_oo_name = t24 i_oo_type = t44 i_found_qualified = t46 ).
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
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t51 ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t53 ).
    ENDIF.
    result = t23.

  ENDMETHOD.

  METHOD find_class_name.
    DATA(t1) = i_node.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_statement.
    t5 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
    t3 = t4.
    IF t4 = abap_false.
      DATA t8 TYPE REF TO zif_lnt_statement.
      t8 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t3 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_st_class_definition ).
    ENDIF.
    IF xsdbool( t3 = abap_false ) = abap_true.
      DATA t10 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t11 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = |findClassName, unexpected node type|.
      t11 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t15 ).
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
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t19 = t1->find_first_expression( i_type_9913 = t22 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t19 IS INITIAL ) = abap_true.
      DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = |findClassName, unexpected node type|.
      t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t35 ).
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
    result = t19->get_first_token( )->str.

  ENDMETHOD.

  METHOD find_interfaces.
    DATA(t1) = i_cd.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t2 = t5->concat( p0 = t1->get_implementing( ) ).
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
      t22 = me->scope.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t27) = VALUE string( ).
      t27 = t13->name.
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t27.
      t24 = t29.
      DATA t31 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t31.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
      IF t37 = abap_true.
        CLEAR t31.
      ELSE.
        DATA t41 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t41.
        DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t43 = t22->current.
        DATA t46 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t46.
        IF xsdbool( t43 IS INITIAL ) = abap_true.
          CLEAR t46.
        ELSE.
          DATA t51 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t51 = t43.
          DATA(t53) = VALUE string( ).
          t53 = t24->value.
          t46 = t51->find_interface_definition( i_name = t53 ).
        ENDIF.
        t41 = t46.
        DATA t55 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t55.
        IF xsdbool( t41 IS BOUND ) = abap_true.
          t55 = t41.
        ELSE.
          DATA t64 TYPE REF TO zcl_lnt_ob_interface.
          DATA t65 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t65.
          DATA t67 TYPE REF TO zif_lnt_registry.
          t67 = t22->reg.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t72->has = abap_true.
          t72->value = |INTF|.
          t69 = t72.
          DATA(t76) = VALUE string( ).
          t76 = t24->value.
          DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t78->has = abap_true.
          t78->value = t76.
          DATA t80 TYPE REF TO object.
          t80 = t67->get_object( i_type_9913 = t69 i_name = t78 ).
          t65 ?= t80.
          t64 = t65.
          DATA t81 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t81.
          IF xsdbool( t64 IS BOUND ) = abap_true.
            t81 = t64->def.
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
      IF xsdbool( t20 IS INITIAL ) = abap_true.
        CLEAR t91.
      ELSE.
        t91 = t20->get_implementing( ).
      ENDIF.
      t18 = t91.
      IF xsdbool( t18 IS BOUND ) = abap_true.
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
            t107 = t106->as_ref( ).
            t103 ?= t107.
          ELSE.
            t103 ?= t104.
          ENDIF.
          t2->load( ).
          APPEND t103 TO t2->items.
          t2->save( ).
        ENDDO.
        t2->load( ).
        t100 = lines( t2->items ).
      ENDIF.
    ENDDO.
    DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t112 = t1->get_super_class( ).
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
          t2->load( ).
          t118 = lines( t2->items ).
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
    CREATE OBJECT t5.
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
      DATA(t31) = me->scope.
      DATA t32 TYPE string.
      t32 = t1->get_name( ).
      DATA t35 TYPE string.
      t35 = t21.
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
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
      t39 = t41->get( p0 = t43 ).
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      IF xsdbool( t39 IS INITIAL ) = abap_true.
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
      t23 = t37.
    ENDIF.
    IF t23 = abap_true.
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
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t77 = t69.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = VALUE abap_bool( ).
    IF t77 IS INITIAL.
      t81 = abap_true.
    ELSEIF t77->has = abap_false.
      t81 = abap_true.
    ENDIF.
    IF t81 = abap_true.
    ELSE.
      DATA t85 TYPE REF TO zif_lnt_class_definition.
      DATA t87 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t87 = t67->current.
      DATA t90 TYPE REF TO zif_lnt_class_definition.
      IF xsdbool( t87 IS INITIAL ) = abap_true.
      ELSE.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t95 = t87.
        DATA t97 TYPE string.
        t97 = t69->value.
        t90 = t95->find_class_definition( i_name = t97 ).
      ENDIF.
      t85 = t90.
      DATA t99 TYPE REF TO zif_lnt_class_definition.
      IF xsdbool( t85 IS BOUND ) = abap_true.
        t99 = t85.
      ELSE.
        DATA t108 TYPE REF TO zcl_lnt_class.
        DATA t109 TYPE REF TO zcl_lnt_class.
        DATA t111 TYPE REF TO zif_lnt_registry.
        t111 = t67->reg.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = |CLAS|.
        t113 = t116.
        DATA t120 TYPE string.
        t120 = t69->value.
        DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t122->has = abap_true.
        t122->value = t120.
        DATA t124 TYPE REF TO object.
        t124 = t111->get_object( i_type_9913 = t113 i_name = t122 ).
        t109 ?= t124.
        t108 = t109.
        DATA t125 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t108 IS BOUND ) = abap_true.
          t125 = t108->gt_dfn_ins_src_obj_cls_ts_clss( ).
        ELSE.
          CLEAR t125.
        ENDIF.
        t99 = t125.
      ENDIF.
      t75 = t99.
    ENDIF.
    t65 = t75.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t65 IS INITIAL ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t141 TYPE abap_bool.
    t141 = abap_false.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t144 TYPE REF TO zif_lnt_interface_definition.
    t144 ?= t65.
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
      IF t3->includes( p0 = t154 ) = abap_true.
        t141 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    IF t141 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t161 = t65->get_super_class( ).
    DO.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t166 = t161.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      DATA(t171) = VALUE abap_bool( ).
      IF t166 IS INITIAL.
        t171 = abap_true.
      ELSEIF t166->has = abap_false.
        t171 = abap_true.
      ENDIF.
      IF xsdbool( t171 = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t178 TYPE string.
      t178 = t161->value.
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
        DATA(t189) = me->scope.
        DATA t190 TYPE string.
        t190 = t1->get_name( ).
        DATA t193 TYPE string.
        t193 = t178.
        DATA(t195) = VALUE abap_bool( ).
        DATA t196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t196.
        DATA t197 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t197.
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
        t197 = t199->get( p0 = t201 ).
        DATA t204 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t204.
        IF xsdbool( t197 IS INITIAL ) = abap_true.
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
        t181 = t195.
      ENDIF.
      IF t181 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA t224 TYPE REF TO zif_lnt_class_definition.
      CLEAR t224.
      DATA t226 TYPE REF TO zcl_lnt_current_scope.
      t226 = me->scope.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t231 TYPE string.
      t231 = t161->value.
      DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t233->has = abap_true.
      t233->value = t231.
      t228 = t233.
      DATA t235 TYPE REF TO zif_lnt_class_definition.
      CLEAR t235.
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
      IF t241 = abap_true.
        CLEAR t235.
      ELSE.
        DATA t245 TYPE REF TO zif_lnt_class_definition.
        CLEAR t245.
        DATA t247 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t247 = t226->current.
        DATA t250 TYPE REF TO zif_lnt_class_definition.
        CLEAR t250.
        IF xsdbool( t247 IS INITIAL ) = abap_true.
          CLEAR t250.
        ELSE.
          DATA t255 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t255 = t247.
          DATA t257 TYPE string.
          t257 = t228->value.
          t250 = t255->find_class_definition( i_name = t257 ).
        ENDIF.
        t245 = t250.
        DATA t259 TYPE REF TO zif_lnt_class_definition.
        CLEAR t259.
        IF xsdbool( t245 IS BOUND ) = abap_true.
          t259 = t245.
        ELSE.
          DATA t268 TYPE REF TO zcl_lnt_class.
          DATA t269 TYPE REF TO zcl_lnt_class.
          CLEAR t269.
          DATA t271 TYPE REF TO zif_lnt_registry.
          t271 = t226->reg.
          DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t273.
          DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t276->has = abap_true.
          t276->value = |CLAS|.
          t273 = t276.
          DATA t280 TYPE string.
          t280 = t228->value.
          DATA(t282) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t282->has = abap_true.
          t282->value = t280.
          DATA t284 TYPE REF TO object.
          t284 = t271->get_object( i_type_9913 = t273 i_name = t282 ).
          t269 ?= t284.
          t268 = t269.
          DATA t285 TYPE REF TO zif_lnt_class_definition.
          CLEAR t285.
          IF xsdbool( t268 IS BOUND ) = abap_true.
            t285 = t268->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
      IF xsdbool( t224 IS INITIAL ) = abap_true.
        CLEAR t292.
      ELSE.
        t292 = t224->get_super_class( ).
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
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t3 = t16.
    ENDIF.
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zif_lnt_event_definition.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = t1->get_events( ).
    DATA t25 TYPE i.
    t21->load( ).
    t25 = lines( t21->items ).
    DATA t28 TYPE i.
    t28 = 0.
    DATA t30 TYPE REF TO zif_lnt_event_definition.
    DO.
      IF xsdbool( t28 < t25 ) = abap_false.
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
      IF xsdbool( t44 = t48 ) = abap_true.
        t30 = t35.
        EXIT.
      ENDIF.
      DATA(t58) = 1.
      t28 = t28 + t58.
    ENDDO.
    t19 = t30.
    IF xsdbool( t19 IS BOUND ) = abap_true.
      result = t19.
      RETURN.
    ENDIF.
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
    IF xsdbool( t68 >= 0 ) = abap_true.
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
      DATA(t86) = VALUE string( ).
      IF t74->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t74->load( ).
      READ TABLE t74->items INDEX 1 INTO t86.
      DATA(t89) = VALUE string( ).
      IF t74->has( 2 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t74->load( ).
      READ TABLE t74->items INDEX 2 INTO t89.
      DATA t92 TYPE REF TO zif_lnt_interface_definition.
      DATA t93 TYPE REF TO zcl_lnt_current_scope.
      t93 = me->scope.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t99->has = abap_true.
      t99->value = t86.
      t95 = t99.
      DATA t101 TYPE REF TO zif_lnt_interface_definition.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t103 = t95.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t107) = VALUE abap_bool( ).
      IF t103 IS INITIAL.
        t107 = abap_true.
      ELSEIF t103->has = abap_false.
        t107 = abap_true.
      ENDIF.
      IF t107 = abap_true.
      ELSE.
        DATA t111 TYPE REF TO zif_lnt_interface_definition.
        DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t113 = t93->current.
        DATA t116 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t113 IS INITIAL ) = abap_true.
        ELSE.
          DATA t121 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t121 = t113.
          DATA t123 TYPE string.
          t123 = t95->value.
          t116 = t121->find_interface_definition( i_name = t123 ).
        ENDIF.
        t111 = t116.
        DATA t125 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t111 IS BOUND ) = abap_true.
          t125 = t111.
        ELSE.
          DATA t134 TYPE REF TO zcl_lnt_ob_interface.
          DATA t135 TYPE REF TO zcl_lnt_ob_interface.
          DATA t137 TYPE REF TO zif_lnt_registry.
          t137 = t93->reg.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t142->has = abap_true.
          t142->value = |INTF|.
          t139 = t142.
          DATA t146 TYPE string.
          t146 = t95->value.
          DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t148->has = abap_true.
          t148->value = t146.
          DATA t150 TYPE REF TO object.
          t150 = t137->get_object( i_type_9913 = t139 i_name = t148 ).
          t135 ?= t150.
          t134 = t135.
          DATA t151 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t134 IS BOUND ) = abap_true.
            t151 = t134->def.
          ELSE.
            CLEAR t151.
          ENDIF.
          t125 = t151.
        ENDIF.
        t101 = t125.
      ENDIF.
      t92 = t101.
      DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t164->has = abap_true.
      t164->value = t89.
      result = me->search_event( i_def = t92 i_name = t164 ).
      RETURN.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t167 = t1->get_aliases( ).
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t167 IS BOUND ) = abap_true.
      t171 = t167.
    ELSE.
      CREATE OBJECT t171.
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
      DATA(t182) = VALUE string( ).
      DATA(t183) = VALUE string( ).
      DATA t184 TYPE REF TO zcl_lnt_fi_identifier.
      t184 = t176.
      DATA t187 TYPE string.
      t187 = t184->token->str.
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
      ELSE.
        IF t198 > t199 - t197.
          t198 = t199 - t197.
        ENDIF.
        t195 = t196+t197(t198).
      ENDIF.
      IF xsdbool( t195 = |!| ) = abap_true.
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
        ELSE.
          IF t207 > t210 - t206.
            t207 = t210 - t206.
          ENDIF.
          t204 = t202+t206(t207).
        ENDIF.
        t187 = t204.
      ENDIF.
      t183 = t187.
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
      IF xsdbool( t182 = t213 ) = abap_true.
        DATA t217 TYPE string.
        t217 = t176->component.
        DATA t223 TYPE REF TO zif_lnt_event_definition.
        CLEAR t223.
        DATA t225 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t225.
        DATA t226 TYPE REF TO zcl_lnt_current_scope.
        t226 = me->scope.
        DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t228.
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
        t228 = t230->get( p0 = 0 ).
        DATA t240 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t240.
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
        IF t246 = abap_true.
          CLEAR t240.
        ELSE.
          DATA t250 TYPE REF TO zif_lnt_class_definition.
          CLEAR t250.
          DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t255 TYPE string.
          t255 = t228->value.
          DATA(t257) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t257->has = abap_true.
          t257->value = t255.
          t252 = t257.
          DATA t259 TYPE REF TO zif_lnt_class_definition.
          CLEAR t259.
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
          IF t265 = abap_true.
            CLEAR t259.
          ELSE.
            DATA t269 TYPE REF TO zif_lnt_class_definition.
            CLEAR t269.
            DATA t271 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t271 = t226->current.
            DATA t274 TYPE REF TO zif_lnt_class_definition.
            CLEAR t274.
            IF xsdbool( t271 IS INITIAL ) = abap_true.
              CLEAR t274.
            ELSE.
              DATA t279 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t279 = t271.
              DATA t281 TYPE string.
              t281 = t252->value.
              t274 = t279->find_class_definition( i_name = t281 ).
            ENDIF.
            t269 = t274.
            DATA t283 TYPE REF TO zif_lnt_class_definition.
            CLEAR t283.
            IF xsdbool( t269 IS BOUND ) = abap_true.
              t283 = t269.
            ELSE.
              DATA t292 TYPE REF TO zcl_lnt_class.
              DATA t293 TYPE REF TO zcl_lnt_class.
              CLEAR t293.
              DATA t295 TYPE REF TO zif_lnt_registry.
              t295 = t226->reg.
              DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t297.
              DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t300->has = abap_true.
              t300->value = |CLAS|.
              t297 = t300.
              DATA t304 TYPE string.
              t304 = t252->value.
              DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t306->has = abap_true.
              t306->value = t304.
              DATA t308 TYPE REF TO object.
              t308 = t295->get_object( i_type_9913 = t297 i_name = t306 ).
              t293 ?= t308.
              t292 = t293.
              DATA t309 TYPE REF TO zif_lnt_class_definition.
              CLEAR t309.
              IF xsdbool( t292 IS BOUND ) = abap_true.
                t309 = t292->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
          IF xsdbool( t250 IS BOUND ) = abap_true.
            DATA t319 TYPE REF TO zif_lnt_interface_definition.
            t319 ?= t250.
            t316 = t319.
          ELSE.
            DATA t323 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t323.
            DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t328 TYPE string.
            t328 = t228->value.
            DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t330->has = abap_true.
            t330->value = t328.
            t325 = t330.
            DATA t332 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t332.
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
            IF t338 = abap_true.
              CLEAR t332.
            ELSE.
              DATA t342 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t342.
              DATA t344 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t344 = t226->current.
              DATA t347 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t347.
              IF xsdbool( t344 IS INITIAL ) = abap_true.
                CLEAR t347.
              ELSE.
                DATA t352 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t352 = t344.
                DATA t354 TYPE string.
                t354 = t325->value.
                t347 = t352->find_interface_definition( i_name = t354 ).
              ENDIF.
              t342 = t347.
              DATA t356 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t356.
              IF xsdbool( t342 IS BOUND ) = abap_true.
                t356 = t342.
              ELSE.
                DATA t365 TYPE REF TO zcl_lnt_ob_interface.
                DATA t366 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t366.
                DATA t368 TYPE REF TO zif_lnt_registry.
                t368 = t226->reg.
                DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t370.
                DATA(t373) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t373->has = abap_true.
                t373->value = |INTF|.
                t370 = t373.
                DATA t377 TYPE string.
                t377 = t325->value.
                DATA(t379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t379->has = abap_true.
                t379->value = t377.
                DATA t381 TYPE REF TO object.
                t381 = t368->get_object( i_type_9913 = t370 i_name = t379 ).
                t366 ?= t381.
                t365 = t366.
                DATA t382 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t382.
                IF xsdbool( t365 IS BOUND ) = abap_true.
                  t382 = t365->def.
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
            IF xsdbool( t323 IS BOUND ) = abap_true.
              t392 = t323.
            ELSE.
              CLEAR t392.
            ENDIF.
            t316 = t392.
          ENDIF.
          t240 = t316.
        ENDIF.
        t225 = t240.
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
        t223 = me->search_event( i_def = t225 i_name = t402->get( p0 = 1 ) ).
        IF xsdbool( t223 IS BOUND ) = abap_true.
          result = t223.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t419 = t1->get_super_class( ).
    DATA(t423) = VALUE abap_bool( ).
    IF t419 IS BOUND.
      IF t419->has = abap_true.
        t423 = xsdbool( strlen( t419->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t423 = abap_true.
      DATA t426 TYPE REF TO zif_lnt_interface_definition.
      DATA t427 TYPE REF TO zif_lnt_class_definition.
      DATA t428 TYPE string.
      t428 = t419->value.
      t427 = me->find_super_definition( i_name = t428 ).
      t426 ?= t427.
      DATA t432 TYPE string.
      t432 = t2->value.
      DATA(t434) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t434->has = abap_true.
      t434->value = t432.
      result = me->search_event( i_def = t426 i_name = t434 ).
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
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t3 = t16.
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
    t24 = t1->get_attributes( ).
    IF xsdbool( t24 IS BOUND ) = abap_true.
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
        DATA(t38) = VALUE string( ).
        DATA(t39) = VALUE string( ).
        DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
        t40 = t32.
        DATA t43 TYPE string.
        t43 = t40->token->str.
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
        ELSE.
          IF t54 > t55 - t53.
            t54 = t55 - t53.
          ENDIF.
          t51 = t52+t53(t54).
        ENDIF.
        IF xsdbool( t51 = |!| ) = abap_true.
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
          ELSE.
            IF t63 > t66 - t62.
              t63 = t66 - t62.
            ENDIF.
            t60 = t58+t62(t63).
          ENDIF.
          t43 = t60.
        ENDIF.
        t39 = t43.
        DATA(t68) = strlen( t39 ).
        t38 = t39.
        IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t38 TO UPPER CASE.
        ELSE.
          t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
        ENDIF.
        IF xsdbool( t38 = t19 ) = abap_true.
          result = t32.
          RETURN.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t75 = t1->get_aliases( ).
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t75 IS BOUND ) = abap_true.
      t79 = t75.
    ELSE.
      CREATE OBJECT t79.
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
      DATA(t90) = VALUE string( ).
      DATA(t91) = VALUE string( ).
      DATA t92 TYPE REF TO zcl_lnt_fi_identifier.
      t92 = t84.
      DATA t95 TYPE string.
      t95 = t92->token->str.
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
      ELSE.
        IF t106 > t107 - t105.
          t106 = t107 - t105.
        ENDIF.
        t103 = t104+t105(t106).
      ENDIF.
      IF xsdbool( t103 = |!| ) = abap_true.
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
        ELSE.
          IF t115 > t118 - t114.
            t115 = t118 - t114.
          ENDIF.
          t112 = t110+t114(t115).
        ENDIF.
        t95 = t112.
      ENDIF.
      t91 = t95.
      DATA(t120) = strlen( t91 ).
      t90 = t91.
      IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t90 TO UPPER CASE.
      ELSE.
        t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
      ENDIF.
      IF xsdbool( t90 = t19 ) = abap_true.
        DATA t122 TYPE string.
        t122 = t84->component.
        DATA t128 TYPE REF TO zcl_lnt_class_attribute.
        CLEAR t128.
        DATA t130 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t130.
        DATA t131 TYPE REF TO zcl_lnt_current_scope.
        t131 = me->scope.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t133.
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
        t133 = t135->get( p0 = 0 ).
        DATA t145 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t145.
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
        IF t151 = abap_true.
          CLEAR t145.
        ELSE.
          DATA t155 TYPE REF TO zif_lnt_class_definition.
          CLEAR t155.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t160 TYPE string.
          t160 = t133->value.
          DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t162->has = abap_true.
          t162->value = t160.
          t157 = t162.
          DATA t164 TYPE REF TO zif_lnt_class_definition.
          CLEAR t164.
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
          IF t170 = abap_true.
            CLEAR t164.
          ELSE.
            DATA t174 TYPE REF TO zif_lnt_class_definition.
            CLEAR t174.
            DATA t176 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t176 = t131->current.
            DATA t179 TYPE REF TO zif_lnt_class_definition.
            CLEAR t179.
            IF xsdbool( t176 IS INITIAL ) = abap_true.
              CLEAR t179.
            ELSE.
              DATA t184 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t184 = t176.
              DATA t186 TYPE string.
              t186 = t157->value.
              t179 = t184->find_class_definition( i_name = t186 ).
            ENDIF.
            t174 = t179.
            DATA t188 TYPE REF TO zif_lnt_class_definition.
            CLEAR t188.
            IF xsdbool( t174 IS BOUND ) = abap_true.
              t188 = t174.
            ELSE.
              DATA t197 TYPE REF TO zcl_lnt_class.
              DATA t198 TYPE REF TO zcl_lnt_class.
              CLEAR t198.
              DATA t200 TYPE REF TO zif_lnt_registry.
              t200 = t131->reg.
              DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t202.
              DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t205->has = abap_true.
              t205->value = |CLAS|.
              t202 = t205.
              DATA t209 TYPE string.
              t209 = t157->value.
              DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t211->has = abap_true.
              t211->value = t209.
              DATA t213 TYPE REF TO object.
              t213 = t200->get_object( i_type_9913 = t202 i_name = t211 ).
              t198 ?= t213.
              t197 = t198.
              DATA t214 TYPE REF TO zif_lnt_class_definition.
              CLEAR t214.
              IF xsdbool( t197 IS BOUND ) = abap_true.
                t214 = t197->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
          IF xsdbool( t155 IS BOUND ) = abap_true.
            DATA t224 TYPE REF TO zif_lnt_interface_definition.
            t224 ?= t155.
            t221 = t224.
          ELSE.
            DATA t228 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t228.
            DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t233 TYPE string.
            t233 = t133->value.
            DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t235->has = abap_true.
            t235->value = t233.
            t230 = t235.
            DATA t237 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t237.
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
            IF t243 = abap_true.
              CLEAR t237.
            ELSE.
              DATA t247 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t247.
              DATA t249 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t249 = t131->current.
              DATA t252 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t252.
              IF xsdbool( t249 IS INITIAL ) = abap_true.
                CLEAR t252.
              ELSE.
                DATA t257 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t257 = t249.
                DATA t259 TYPE string.
                t259 = t230->value.
                t252 = t257->find_interface_definition( i_name = t259 ).
              ENDIF.
              t247 = t252.
              DATA t261 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t261.
              IF xsdbool( t247 IS BOUND ) = abap_true.
                t261 = t247.
              ELSE.
                DATA t270 TYPE REF TO zcl_lnt_ob_interface.
                DATA t271 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t271.
                DATA t273 TYPE REF TO zif_lnt_registry.
                t273 = t131->reg.
                DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t275.
                DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t278->has = abap_true.
                t278->value = |INTF|.
                t275 = t278.
                DATA t282 TYPE string.
                t282 = t230->value.
                DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t284->has = abap_true.
                t284->value = t282.
                DATA t286 TYPE REF TO object.
                t286 = t273->get_object( i_type_9913 = t275 i_name = t284 ).
                t271 ?= t286.
                t270 = t271.
                DATA t287 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t287.
                IF xsdbool( t270 IS BOUND ) = abap_true.
                  t287 = t270->def.
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
            IF xsdbool( t228 IS BOUND ) = abap_true.
              t297 = t228.
            ELSE.
              CLEAR t297.
            ENDIF.
            t221 = t297.
          ENDIF.
          t145 = t221.
        ENDIF.
        t130 = t145.
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
        t128 = me->search_attribute_name( i_def = t130 i_name = t307->get( p0 = 1 ) ).
        IF xsdbool( t128 IS BOUND ) = abap_true.
          result = t128.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
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
    IF xsdbool( t325 >= 0 ) = abap_true.
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
      READ TABLE t333->items INDEX 1 INTO t332.
      t331 = t332.
      IF me->list_interfaces_recursive( i_definition = t1 )->includes( p0 = t331 ) = abap_true.
        DATA t348 TYPE REF TO zif_lnt_interface_definition.
        DATA t349 TYPE REF TO zcl_lnt_current_scope.
        t349 = me->scope.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t355->has = abap_true.
        t355->value = t331.
        t351 = t355.
        DATA t357 TYPE REF TO zif_lnt_interface_definition.
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t359 = t351.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t363) = VALUE abap_bool( ).
        IF t359 IS INITIAL.
          t363 = abap_true.
        ELSEIF t359->has = abap_false.
          t363 = abap_true.
        ENDIF.
        IF t363 = abap_true.
        ELSE.
          DATA t367 TYPE REF TO zif_lnt_interface_definition.
          DATA t369 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t369 = t349->current.
          DATA t372 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t369 IS INITIAL ) = abap_true.
          ELSE.
            DATA t377 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t377 = t369.
            DATA t379 TYPE string.
            t379 = t351->value.
            t372 = t377->find_interface_definition( i_name = t379 ).
          ENDIF.
          t367 = t372.
          DATA t381 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t367 IS BOUND ) = abap_true.
            t381 = t367.
          ELSE.
            DATA t390 TYPE REF TO zcl_lnt_ob_interface.
            DATA t391 TYPE REF TO zcl_lnt_ob_interface.
            DATA t393 TYPE REF TO zif_lnt_registry.
            t393 = t349->reg.
            DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t398->has = abap_true.
            t398->value = |INTF|.
            t395 = t398.
            DATA t402 TYPE string.
            t402 = t351->value.
            DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t404->has = abap_true.
            t404->value = t402.
            DATA t406 TYPE REF TO object.
            t406 = t393->get_object( i_type_9913 = t395 i_name = t404 ).
            t391 ?= t406.
            t390 = t391.
            DATA t407 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t390 IS BOUND ) = abap_true.
              t407 = t390->def.
            ELSE.
              CLEAR t407.
            ENDIF.
            t381 = t407.
          ENDIF.
          t357 = t381.
        ENDIF.
        t348 = t357.
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
        result = me->search_attribute_name( i_def = t348 i_name = t418->get( p0 = 1 ) ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t429 = t1->get_super_class( ).
    DATA(t433) = VALUE abap_bool( ).
    IF t429 IS BOUND.
      IF t429->has = abap_true.
        t433 = xsdbool( strlen( t429->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t433 = abap_true.
      DATA t436 TYPE REF TO zif_lnt_interface_definition.
      DATA t437 TYPE REF TO zif_lnt_class_definition.
      DATA t438 TYPE string.
      t438 = t429->value.
      t437 = me->find_super_definition( i_name = t438 ).
      t436 ?= t437.
      DATA t442 TYPE string.
      t442 = t2->value.
      DATA(t444) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t444->has = abap_true.
      t444->value = t442.
      result = me->search_attribute_name( i_def = t436 i_name = t444 ).
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
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t3 = t16.
    ENDIF.
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t21 TYPE REF TO zif_lnt_type_definitions.
    t21 = t1->get_type_definitions( ).
    DATA t24 TYPE string.
    t24 = t2->value.
    t19 = t21->get_by_name( i_name = t24 ).
    IF xsdbool( t19 IS BOUND ) = abap_true.
      result = t19.
      RETURN.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t33 = t1->get_aliases( ).
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
      DATA(t42) = VALUE string( ).
      DATA(t43) = VALUE string( ).
      DATA t44 TYPE REF TO zcl_lnt_fi_identifier.
      t44 = t36.
      DATA t47 TYPE string.
      t47 = t44->token->str.
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
      ELSE.
        IF t58 > t59 - t57.
          t58 = t59 - t57.
        ENDIF.
        t55 = t56+t57(t58).
      ENDIF.
      IF xsdbool( t55 = |!| ) = abap_true.
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
        ELSE.
          IF t67 > t70 - t66.
            t67 = t70 - t66.
          ENDIF.
          t64 = t62+t66(t67).
        ENDIF.
        t47 = t64.
      ENDIF.
      t43 = t47.
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
      IF xsdbool( t42 = t73 ) = abap_true.
        DATA t77 TYPE string.
        t77 = t36->component.
        DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t83.
        DATA t85 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t85.
        DATA t86 TYPE REF TO zcl_lnt_current_scope.
        t86 = me->scope.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
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
        t88 = t90->get( p0 = 0 ).
        DATA t100 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t100.
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
        IF t106 = abap_true.
          CLEAR t100.
        ELSE.
          DATA t110 TYPE REF TO zif_lnt_class_definition.
          CLEAR t110.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t115 TYPE string.
          t115 = t88->value.
          DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t117->has = abap_true.
          t117->value = t115.
          t112 = t117.
          DATA t119 TYPE REF TO zif_lnt_class_definition.
          CLEAR t119.
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
          IF t125 = abap_true.
            CLEAR t119.
          ELSE.
            DATA t129 TYPE REF TO zif_lnt_class_definition.
            CLEAR t129.
            DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t131 = t86->current.
            DATA t134 TYPE REF TO zif_lnt_class_definition.
            CLEAR t134.
            IF xsdbool( t131 IS INITIAL ) = abap_true.
              CLEAR t134.
            ELSE.
              DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t139 = t131.
              DATA t141 TYPE string.
              t141 = t112->value.
              t134 = t139->find_class_definition( i_name = t141 ).
            ENDIF.
            t129 = t134.
            DATA t143 TYPE REF TO zif_lnt_class_definition.
            CLEAR t143.
            IF xsdbool( t129 IS BOUND ) = abap_true.
              t143 = t129.
            ELSE.
              DATA t152 TYPE REF TO zcl_lnt_class.
              DATA t153 TYPE REF TO zcl_lnt_class.
              CLEAR t153.
              DATA t155 TYPE REF TO zif_lnt_registry.
              t155 = t86->reg.
              DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t157.
              DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t160->has = abap_true.
              t160->value = |CLAS|.
              t157 = t160.
              DATA t164 TYPE string.
              t164 = t112->value.
              DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t166->has = abap_true.
              t166->value = t164.
              DATA t168 TYPE REF TO object.
              t168 = t155->get_object( i_type_9913 = t157 i_name = t166 ).
              t153 ?= t168.
              t152 = t153.
              DATA t169 TYPE REF TO zif_lnt_class_definition.
              CLEAR t169.
              IF xsdbool( t152 IS BOUND ) = abap_true.
                t169 = t152->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
          IF xsdbool( t110 IS BOUND ) = abap_true.
            DATA t179 TYPE REF TO zif_lnt_interface_definition.
            t179 ?= t110.
            t176 = t179.
          ELSE.
            DATA t183 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t183.
            DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t188 TYPE string.
            t188 = t88->value.
            DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t190->has = abap_true.
            t190->value = t188.
            t185 = t190.
            DATA t192 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t192.
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
            IF t198 = abap_true.
              CLEAR t192.
            ELSE.
              DATA t202 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t202.
              DATA t204 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t204 = t86->current.
              DATA t207 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t207.
              IF xsdbool( t204 IS INITIAL ) = abap_true.
                CLEAR t207.
              ELSE.
                DATA t212 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t212 = t204.
                DATA t214 TYPE string.
                t214 = t185->value.
                t207 = t212->find_interface_definition( i_name = t214 ).
              ENDIF.
              t202 = t207.
              DATA t216 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t216.
              IF xsdbool( t202 IS BOUND ) = abap_true.
                t216 = t202.
              ELSE.
                DATA t225 TYPE REF TO zcl_lnt_ob_interface.
                DATA t226 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t226.
                DATA t228 TYPE REF TO zif_lnt_registry.
                t228 = t86->reg.
                DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t230.
                DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t233->has = abap_true.
                t233->value = |INTF|.
                t230 = t233.
                DATA t237 TYPE string.
                t237 = t185->value.
                DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t239->has = abap_true.
                t239->value = t237.
                DATA t241 TYPE REF TO object.
                t241 = t228->get_object( i_type_9913 = t230 i_name = t239 ).
                t226 ?= t241.
                t225 = t226.
                DATA t242 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t242.
                IF xsdbool( t225 IS BOUND ) = abap_true.
                  t242 = t225->def.
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
            IF xsdbool( t183 IS BOUND ) = abap_true.
              t252 = t183.
            ELSE.
              CLEAR t252.
            ENDIF.
            t176 = t252.
          ENDIF.
          t100 = t176.
        ENDIF.
        t85 = t100.
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
        t83 = me->search_type_name( i_def = t85 i_name = t262->get( p0 = 1 ) ).
        IF xsdbool( t83 IS BOUND ) = abap_true.
          result = t83.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
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
    IF xsdbool( t280 >= 0 ) = abap_true.
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
      READ TABLE t288->items INDEX 1 INTO t287.
      t286 = t287.
      DATA t299 TYPE abap_bool.
      t299 = abap_false.
      DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t301 = t1->get_implementing( ).
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
        IF xsdbool( t310 = t314 ) = abap_true.
          t299 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      IF t299 = abap_true.
        DATA t320 TYPE REF TO zif_lnt_interface_definition.
        DATA t321 TYPE REF TO zcl_lnt_current_scope.
        t321 = me->scope.
        DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t327) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t327->has = abap_true.
        t327->value = t286.
        t323 = t327.
        DATA t329 TYPE REF TO zif_lnt_interface_definition.
        DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t331 = t323.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t335) = VALUE abap_bool( ).
        IF t331 IS INITIAL.
          t335 = abap_true.
        ELSEIF t331->has = abap_false.
          t335 = abap_true.
        ENDIF.
        IF t335 = abap_true.
        ELSE.
          DATA t339 TYPE REF TO zif_lnt_interface_definition.
          DATA t341 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t341 = t321->current.
          DATA t344 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t341 IS INITIAL ) = abap_true.
          ELSE.
            DATA t349 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t349 = t341.
            DATA t351 TYPE string.
            t351 = t323->value.
            t344 = t349->find_interface_definition( i_name = t351 ).
          ENDIF.
          t339 = t344.
          DATA t353 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t339 IS BOUND ) = abap_true.
            t353 = t339.
          ELSE.
            DATA t362 TYPE REF TO zcl_lnt_ob_interface.
            DATA t363 TYPE REF TO zcl_lnt_ob_interface.
            DATA t365 TYPE REF TO zif_lnt_registry.
            t365 = t321->reg.
            DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t370->has = abap_true.
            t370->value = |INTF|.
            t367 = t370.
            DATA t374 TYPE string.
            t374 = t323->value.
            DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t376->has = abap_true.
            t376->value = t374.
            DATA t378 TYPE REF TO object.
            t378 = t365->get_object( i_type_9913 = t367 i_name = t376 ).
            t363 ?= t378.
            t362 = t363.
            DATA t379 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t362 IS BOUND ) = abap_true.
              t379 = t362->def.
            ELSE.
              CLEAR t379.
            ENDIF.
            t353 = t379.
          ENDIF.
          t329 = t353.
        ENDIF.
        t320 = t329.
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
        result = me->search_type_name( i_def = t320 i_name = t390->get( p0 = 1 ) ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t401 = t1->get_super_class( ).
    DATA(t405) = VALUE abap_bool( ).
    IF t401 IS BOUND.
      IF t401->has = abap_true.
        t405 = xsdbool( strlen( t401->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t405 = abap_true.
      DATA t408 TYPE REF TO zif_lnt_interface_definition.
      DATA t409 TYPE REF TO zif_lnt_class_definition.
      DATA t410 TYPE string.
      t410 = t401->value.
      t409 = me->find_super_definition( i_name = t410 ).
      t408 ?= t409.
      DATA t414 TYPE string.
      t414 = t2->value.
      DATA(t416) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t416->has = abap_true.
      t416->value = t414.
      result = me->search_type_name( i_def = t408 i_name = t416 ).
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
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t3 = t16.
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
    t24 = t1->get_attributes( )->get_constants( ).
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
      DATA(t34) = VALUE string( ).
      DATA(t35) = VALUE string( ).
      DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
      t36 = t28.
      DATA t39 TYPE string.
      t39 = t36->token->str.
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
      ELSE.
        IF t50 > t51 - t49.
          t50 = t51 - t49.
        ENDIF.
        t47 = t48+t49(t50).
      ENDIF.
      IF xsdbool( t47 = |!| ) = abap_true.
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
        ELSE.
          IF t59 > t62 - t58.
            t59 = t62 - t58.
          ENDIF.
          t56 = t54+t58(t59).
        ENDIF.
        t39 = t56.
      ENDIF.
      t35 = t39.
      DATA(t64) = strlen( t35 ).
      t34 = t35.
      IF t34 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t34 TO UPPER CASE.
      ELSE.
        t34 = zlnt_runtime_uppe_91169605024d=>full( t34 ).
      ENDIF.
      IF xsdbool( t34 = t19 ) = abap_true.
        result = t28.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t70 = t1->get_aliases( ).
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
      DATA(t79) = VALUE string( ).
      DATA(t80) = VALUE string( ).
      DATA t81 TYPE REF TO zcl_lnt_fi_identifier.
      t81 = t73.
      DATA t84 TYPE string.
      t84 = t81->token->str.
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
      ELSE.
        IF t95 > t96 - t94.
          t95 = t96 - t94.
        ENDIF.
        t92 = t93+t94(t95).
      ENDIF.
      IF xsdbool( t92 = |!| ) = abap_true.
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
        ELSE.
          IF t104 > t107 - t103.
            t104 = t107 - t103.
          ENDIF.
          t101 = t99+t103(t104).
        ENDIF.
        t84 = t101.
      ENDIF.
      t80 = t84.
      DATA(t109) = strlen( t80 ).
      t79 = t80.
      IF t79 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t79 TO UPPER CASE.
      ELSE.
        t79 = zlnt_runtime_uppe_91169605024d=>full( t79 ).
      ENDIF.
      IF xsdbool( t79 = t19 ) = abap_true.
        DATA t111 TYPE string.
        t111 = t73->component.
        DATA t117 TYPE REF TO zcl_lnt_class_constant.
        CLEAR t117.
        DATA t119 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_current_scope.
        t120 = me->scope.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
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
        t122 = t124->get( p0 = 0 ).
        DATA t134 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t134.
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
        IF t140 = abap_true.
          CLEAR t134.
        ELSE.
          DATA t144 TYPE REF TO zif_lnt_class_definition.
          CLEAR t144.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t149 TYPE string.
          t149 = t122->value.
          DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t151->has = abap_true.
          t151->value = t149.
          t146 = t151.
          DATA t153 TYPE REF TO zif_lnt_class_definition.
          CLEAR t153.
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
          IF t159 = abap_true.
            CLEAR t153.
          ELSE.
            DATA t163 TYPE REF TO zif_lnt_class_definition.
            CLEAR t163.
            DATA t165 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t165 = t120->current.
            DATA t168 TYPE REF TO zif_lnt_class_definition.
            CLEAR t168.
            IF xsdbool( t165 IS INITIAL ) = abap_true.
              CLEAR t168.
            ELSE.
              DATA t173 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t173 = t165.
              DATA t175 TYPE string.
              t175 = t146->value.
              t168 = t173->find_class_definition( i_name = t175 ).
            ENDIF.
            t163 = t168.
            DATA t177 TYPE REF TO zif_lnt_class_definition.
            CLEAR t177.
            IF xsdbool( t163 IS BOUND ) = abap_true.
              t177 = t163.
            ELSE.
              DATA t186 TYPE REF TO zcl_lnt_class.
              DATA t187 TYPE REF TO zcl_lnt_class.
              CLEAR t187.
              DATA t189 TYPE REF TO zif_lnt_registry.
              t189 = t120->reg.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t194->has = abap_true.
              t194->value = |CLAS|.
              t191 = t194.
              DATA t198 TYPE string.
              t198 = t146->value.
              DATA(t200) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t200->has = abap_true.
              t200->value = t198.
              DATA t202 TYPE REF TO object.
              t202 = t189->get_object( i_type_9913 = t191 i_name = t200 ).
              t187 ?= t202.
              t186 = t187.
              DATA t203 TYPE REF TO zif_lnt_class_definition.
              CLEAR t203.
              IF xsdbool( t186 IS BOUND ) = abap_true.
                t203 = t186->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
          IF xsdbool( t144 IS BOUND ) = abap_true.
            DATA t213 TYPE REF TO zif_lnt_interface_definition.
            t213 ?= t144.
            t210 = t213.
          ELSE.
            DATA t217 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t217.
            DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t222 TYPE string.
            t222 = t122->value.
            DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t224->has = abap_true.
            t224->value = t222.
            t219 = t224.
            DATA t226 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t226.
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
            IF t232 = abap_true.
              CLEAR t226.
            ELSE.
              DATA t236 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t236.
              DATA t238 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t238 = t120->current.
              DATA t241 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t241.
              IF xsdbool( t238 IS INITIAL ) = abap_true.
                CLEAR t241.
              ELSE.
                DATA t246 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t246 = t238.
                DATA t248 TYPE string.
                t248 = t219->value.
                t241 = t246->find_interface_definition( i_name = t248 ).
              ENDIF.
              t236 = t241.
              DATA t250 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t250.
              IF xsdbool( t236 IS BOUND ) = abap_true.
                t250 = t236.
              ELSE.
                DATA t259 TYPE REF TO zcl_lnt_ob_interface.
                DATA t260 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t260.
                DATA t262 TYPE REF TO zif_lnt_registry.
                t262 = t120->reg.
                DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t264.
                DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t267->has = abap_true.
                t267->value = |INTF|.
                t264 = t267.
                DATA t271 TYPE string.
                t271 = t219->value.
                DATA(t273) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t273->has = abap_true.
                t273->value = t271.
                DATA t275 TYPE REF TO object.
                t275 = t262->get_object( i_type_9913 = t264 i_name = t273 ).
                t260 ?= t275.
                t259 = t260.
                DATA t276 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t276.
                IF xsdbool( t259 IS BOUND ) = abap_true.
                  t276 = t259->def.
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
            IF xsdbool( t217 IS BOUND ) = abap_true.
              t286 = t217.
            ELSE.
              CLEAR t286.
            ENDIF.
            t210 = t286.
          ENDIF.
          t134 = t210.
        ENDIF.
        t119 = t134.
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
        t117 = me->search_constant_name( i_def = t119 i_name = t296->get( p0 = 1 ) ).
        IF xsdbool( t117 IS BOUND ) = abap_true.
          result = t117.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
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
    IF xsdbool( t314 >= 0 ) = abap_true.
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
      READ TABLE t322->items INDEX 1 INTO t321.
      t320 = t321.
      DATA t332 TYPE abap_bool.
      t332 = abap_false.
      DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t334 = t1->get_implementing( ).
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
        IF xsdbool( t343 = t320 ) = abap_true.
          t332 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      IF t332 = abap_true.
        DATA t351 TYPE REF TO zif_lnt_interface_definition.
        DATA t352 TYPE REF TO zcl_lnt_current_scope.
        t352 = me->scope.
        DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t358) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t358->has = abap_true.
        t358->value = t320.
        t354 = t358.
        DATA t360 TYPE REF TO zif_lnt_interface_definition.
        DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t362 = t354.
        DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t366) = VALUE abap_bool( ).
        IF t362 IS INITIAL.
          t366 = abap_true.
        ELSEIF t362->has = abap_false.
          t366 = abap_true.
        ENDIF.
        IF t366 = abap_true.
        ELSE.
          DATA t370 TYPE REF TO zif_lnt_interface_definition.
          DATA t372 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t372 = t352->current.
          DATA t375 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t372 IS INITIAL ) = abap_true.
          ELSE.
            DATA t380 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t380 = t372.
            DATA t382 TYPE string.
            t382 = t354->value.
            t375 = t380->find_interface_definition( i_name = t382 ).
          ENDIF.
          t370 = t375.
          DATA t384 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t370 IS BOUND ) = abap_true.
            t384 = t370.
          ELSE.
            DATA t393 TYPE REF TO zcl_lnt_ob_interface.
            DATA t394 TYPE REF TO zcl_lnt_ob_interface.
            DATA t396 TYPE REF TO zif_lnt_registry.
            t396 = t352->reg.
            DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t401) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t401->has = abap_true.
            t401->value = |INTF|.
            t398 = t401.
            DATA t405 TYPE string.
            t405 = t354->value.
            DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t407->has = abap_true.
            t407->value = t405.
            DATA t409 TYPE REF TO object.
            t409 = t396->get_object( i_type_9913 = t398 i_name = t407 ).
            t394 ?= t409.
            t393 = t394.
            DATA t410 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t393 IS BOUND ) = abap_true.
              t410 = t393->def.
            ELSE.
              CLEAR t410.
            ENDIF.
            t384 = t410.
          ENDIF.
          t360 = t384.
        ENDIF.
        t351 = t360.
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
        result = me->search_constant_name( i_def = t351 i_name = t421->get( p0 = 1 ) ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t432 = t1->get_super_class( ).
    DATA(t436) = VALUE abap_bool( ).
    IF t432 IS BOUND.
      IF t432->has = abap_true.
        t436 = xsdbool( strlen( t432->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t436 = abap_true.
      DATA t439 TYPE REF TO zif_lnt_interface_definition.
      DATA t440 TYPE REF TO zif_lnt_class_definition.
      DATA t441 TYPE string.
      t441 = t432->value.
      t440 = me->find_super_definition( i_name = t441 ).
      t439 ?= t440.
      DATA t445 TYPE string.
      t445 = t2->value.
      DATA(t447) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t447->has = abap_true.
      t447->value = t445.
      result = me->search_constant_name( i_def = t439 i_name = t447 ).
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
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t3 = t16.
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
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = |method| p1 = t26 ).
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t18->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = |def| p1 = t28 ).
      ENDIF.
      result = t18.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zif_lnt_method_definition.
    DATA t31 TYPE REF TO zif_lnt_interface_definition.
    t31 = t1.
    DATA t33 TYPE string.
    t33 = t2->value.
    t29 = me->find_method( i_def = t31 i_method_name = t33 ).
    IF xsdbool( t29 IS BOUND ) = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_shape_a38e878f.
      t37 = NEW zcl_lnt_shape_a38e878f( i_method = t29 i_def = t1 ).
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
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = |method| p1 = t53 ).
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = |def| p1 = t55 ).
      ENDIF.
      result = t37.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
    IF xsdbool( t59 >= 0 ) = abap_true.
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
        DATA t85 TYPE abap_bool.
        t85 = abap_false.
        DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t87 = me->find_interfaces( i_cd = t1 ).
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
          IF xsdbool( t96 = t100 ) = abap_true.
            t85 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
        t80 = xsdbool( t85 = abap_false ).
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
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |method| p1 = t115 ).
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |def| p1 = t117 ).
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
      READ TABLE t131->items INDEX 2 INTO t130.
      DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t141->has = abap_true.
      t141->value = t130.
      t2 = t141.
      DATA t143 TYPE REF TO zcl_lnt_shape_a38e878f.
      DATA t146 TYPE string.
      t146 = t56->value.
      DATA t148 TYPE string.
      t148 = t2->value.
      DATA t152 TYPE REF TO zif_lnt_interface_definition.
      DATA t154 TYPE REF TO zcl_lnt_current_scope.
      t154 = me->scope.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t160->has = abap_true.
      t160->value = t146.
      t156 = t160.
      DATA t162 TYPE REF TO zif_lnt_interface_definition.
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t164 = t156.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t168) = VALUE abap_bool( ).
      IF t164 IS INITIAL.
        t168 = abap_true.
      ELSEIF t164->has = abap_false.
        t168 = abap_true.
      ENDIF.
      IF t168 = abap_true.
      ELSE.
        DATA t172 TYPE REF TO zif_lnt_interface_definition.
        DATA t174 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t174 = t154->current.
        DATA t177 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t174 IS INITIAL ) = abap_true.
        ELSE.
          DATA t182 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t182 = t174.
          DATA t184 TYPE string.
          t184 = t156->value.
          t177 = t182->find_interface_definition( i_name = t184 ).
        ENDIF.
        t172 = t177.
        DATA t186 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t172 IS BOUND ) = abap_true.
          t186 = t172.
        ELSE.
          DATA t195 TYPE REF TO zcl_lnt_ob_interface.
          DATA t196 TYPE REF TO zcl_lnt_ob_interface.
          DATA t198 TYPE REF TO zif_lnt_registry.
          t198 = t154->reg.
          DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t203) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t203->has = abap_true.
          t203->value = |INTF|.
          t200 = t203.
          DATA t207 TYPE string.
          t207 = t156->value.
          DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t209->has = abap_true.
          t209->value = t207.
          DATA t211 TYPE REF TO object.
          t211 = t198->get_object( i_type_9913 = t200 i_name = t209 ).
          t196 ?= t211.
          t195 = t196.
          DATA t212 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t195 IS BOUND ) = abap_true.
            t212 = t195->def.
          ELSE.
            CLEAR t212.
          ENDIF.
          t186 = t212.
        ENDIF.
        t162 = t186.
      ENDIF.
      t152 = t162.
      DATA t222 TYPE REF TO zcl_lnt_shape_a38e878f.
      IF xsdbool( t152 IS BOUND ) = abap_true.
        DATA t226 TYPE REF TO zif_lnt_method_definition.
        DATA t228 TYPE REF TO zif_lnt_method_definitions.
        t228 = t152->get_method_definitions( ).
        DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t234->has = abap_true.
        t234->value = t148.
        t226 = t228->get_by_name( i_name = t234 ).
        DATA t236 TYPE REF TO zcl_lnt_shape_a38e878f.
        IF xsdbool( t226 IS BOUND ) = abap_true.
          DATA t241 TYPE REF TO zcl_lnt_shape_a38e878f.
          t241 = NEW zcl_lnt_shape_a38e878f( i_method = t226 i_def = t152 ).
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
          DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = |method| p1 = t257 ).
          DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = |def| p1 = t259 ).
          ENDIF.
          t236 = t241.
        ELSE.
          t236 = me->find_method_via_alias( i_method_name = t148 i_def = t152 ).
        ENDIF.
        t222 = t236.
      ELSE.
        CLEAR t222.
      ENDIF.
      t143 = t222.
      IF xsdbool( t143 IS BOUND ) = abap_true.
        result = t143.
        RETURN.
      ENDIF.
    ELSE.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t29 IS INITIAL ) = abap_true.
        DATA t277 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA t279 TYPE string.
        t279 = t2->value.
        t277 = me->find_method_via_alias( i_method_name = t279 i_def = t1 ).
        IF xsdbool( t277 IS BOUND ) = abap_true.
          result = t277.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t287 = t1->get_super_class( ).
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
      DATA t302 TYPE REF TO zif_lnt_interface_definition.
      DATA t303 TYPE REF TO zif_lnt_class_definition.
      DATA t304 TYPE string.
      t304 = t287->value.
      t303 = me->find_super_definition( i_name = t304 ).
      t302 ?= t303.
      DATA t308 TYPE string.
      t308 = t2->value.
      DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t310->has = abap_true.
      t310->value = t308.
      result = me->search_method_name( i_def = t302 i_name = t310 ).
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
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = |method| p1 = t320 ).
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = |def| p1 = t322 ).
    ENDIF.
    result = t312.

  ENDMETHOD.

  METHOD find_method.
    DATA(t1) = i_def.
    DATA(t2) = i_method_name.
    DATA t3 TYPE REF TO zif_lnt_method_definitions.
    t3 = t1->get_method_definitions( ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zif_lnt_method_definition.
    DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t20->has = abap_true.
    t20->value = t2.
    t14 = t3->get_by_name( i_name = t20 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t14 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    IF t14->is_redefinition( ) = abap_true.
      result = me->find_method_in_super( i_child = t1 i_method_name = t2 ).
      RETURN.
    ENDIF.
    result = t14.

  ENDMETHOD.

  METHOD find_method_in_super.
    DATA(t2) = i_method_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = i_child->get_super_class( ).
    DO.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t7 = t3.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      DATA(t12) = VALUE abap_bool( ).
      IF t7 IS INITIAL.
        t12 = abap_true.
      ELSEIF t7->has = abap_false.
        t12 = abap_true.
      ENDIF.
      IF xsdbool( t12 = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_class_definition.
      DATA t16 TYPE string.
      t16 = t3->value.
      t14 = me->find_super_definition( i_name = t16 ).
      DATA t18 TYPE REF TO zif_lnt_method_definition.
      DATA t20 TYPE REF TO zif_lnt_interface_definition.
      t20 ?= t14.
      t18 = me->find_method( i_def = t20 i_method_name = t2 ).
      IF xsdbool( t18 IS BOUND ) = abap_true.
        result = t18.
        RETURN.
      ENDIF.
      t3 = t14->get_super_class( ).
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
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t14 = t6.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = VALUE abap_bool( ).
    IF t14 IS INITIAL.
      t18 = abap_true.
    ELSEIF t14->has = abap_false.
      t18 = abap_true.
    ENDIF.
    IF t18 = abap_true.
    ELSE.
      DATA t22 TYPE REF TO zif_lnt_class_definition.
      DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t24 = t4->current.
      DATA t27 TYPE REF TO zif_lnt_class_definition.
      IF xsdbool( t24 IS INITIAL ) = abap_true.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t32 = t24.
        DATA(t34) = VALUE string( ).
        t34 = t6->value.
        t27 = t32->find_class_definition( i_name = t34 ).
      ENDIF.
      t22 = t27.
      DATA t36 TYPE REF TO zif_lnt_class_definition.
      IF xsdbool( t22 IS BOUND ) = abap_true.
        t36 = t22.
      ELSE.
        DATA t45 TYPE REF TO zcl_lnt_class.
        DATA t46 TYPE REF TO zcl_lnt_class.
        DATA t48 TYPE REF TO zif_lnt_registry.
        t48 = t4->reg.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t53->has = abap_true.
        t53->value = |CLAS|.
        t50 = t53.
        DATA(t57) = VALUE string( ).
        t57 = t6->value.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t57.
        DATA t61 TYPE REF TO object.
        t61 = t48->get_object( i_type_9913 = t50 i_name = t59 ).
        t46 ?= t61.
        t45 = t46.
        DATA t62 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t45 IS BOUND ) = abap_true.
          t62 = t45->gt_dfn_ins_src_obj_cls_ts_clss( ).
        ELSE.
          CLEAR t62.
        ENDIF.
        t36 = t62.
      ENDIF.
      t12 = t36.
    ENDIF.
    t2 = t12.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      DATA t76 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t77 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t80) = VALUE string( ).
      DATA(t81) = VALUE string( ).
      DATA(t82) = |Super class "|.
      DATA(t84) = strlen( t82 ).
      t81 = |{ t82 }{ t1 }|.
      DATA(t86) = strlen( t81 ).
      t80 = |{ t81 }{ |" not found or contains errors| }|.
      DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t87->has = abap_true.
      t87->value = t80.
      t77 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t87 ).
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
    t5 = me->from_interfaces( i_definition = t6 i_skip_34cc = t3 ).
  ENDMETHOD.

  METHOD from_super_classes.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2 = i_child->get_super_class( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t5.
    DO.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t8 = t2.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      DATA(t13) = VALUE abap_bool( ).
      IF t8 IS INITIAL.
        t13 = abap_true.
      ELSEIF t8->has = abap_false.
        t13 = abap_true.
      ENDIF.
      IF xsdbool( t13 = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_class_definition.
      DATA t17 TYPE string.
      t17 = t2->value.
      t15 = me->find_super_definition( i_name = t17 ).
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t19 = t15->get_attributes( )->get_all( ).
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
        IF xsdbool( t22->visibility <> CONV f( 1 ) ) = abap_true.
          DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
          t36 = t22.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          IF xsdbool( t36 IS INITIAL ) = abap_true.
          ELSE.
            DATA t47 TYPE REF TO zcl_lnt_fi_identifier.
            t47 = t36.
            DATA t51 TYPE string.
            t51 = t47->token->str.
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
            ELSE.
              IF t62 > t63 - t61.
                t62 = t63 - t61.
              ENDIF.
              t59 = t60+t61(t62).
            ENDIF.
            IF xsdbool( t59 = |!| ) = abap_true.
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
              ELSE.
                IF t71 > t74 - t70.
                  t71 = t74 - t70.
                ENDIF.
                t68 = t66+t70(t71).
              ENDIF.
              t51 = t68.
            ENDIF.
            me->scope->add_named_identifier( i_name = t51 i_identifier = t36 ).
          ENDIF.
        ENDIF.
      ENDDO.
      DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t78 = t15->get_attributes( )->get_constants( ).
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
        IF xsdbool( t81->visibility <> CONV f( 1 ) ) = abap_true.
          DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
          t95 = t81.
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          IF xsdbool( t95 IS INITIAL ) = abap_true.
          ELSE.
            DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
            t106 = t95.
            DATA t110 TYPE string.
            t110 = t106->token->str.
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
            ELSE.
              IF t121 > t122 - t120.
                t121 = t122 - t120.
              ENDIF.
              t118 = t119+t120(t121).
            ENDIF.
            IF xsdbool( t118 = |!| ) = abap_true.
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
              ELSE.
                IF t130 > t133 - t129.
                  t130 = t133 - t129.
                ENDIF.
                t127 = t125+t129(t130).
              ENDIF.
              t110 = t127.
            ENDIF.
            me->scope->add_named_identifier( i_name = t110 i_identifier = t95 ).
          ENDIF.
        ENDIF.
      ENDDO.
      DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t137 = t15->get_type_definitions( )->get_all( ).
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
        IF xsdbool( t140->visibility <> CONV f( 1 ) ) = abap_true.
          DATA t151 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t151.
          t151 = t140->type_cba0.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF xsdbool( t151 IS INITIAL ) = abap_true.
          ELSE.
            DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
            t166 = t151.
            DATA t170 TYPE string.
            t170 = t166->token->str.
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
            ELSE.
              IF t181 > t182 - t180.
                t181 = t182 - t180.
              ENDIF.
              t178 = t179+t180(t181).
            ENDIF.
            IF xsdbool( t178 = |!| ) = abap_true.
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
              ELSE.
                IF t190 > t193 - t189.
                  t190 = t193 - t189.
                ENDIF.
                t187 = t185+t189(t190).
              ENDIF.
              t170 = t187.
            ENDIF.
            me->scope->add_type_named( i_name = t170 i_type_9913 = t151 ).
          ENDIF.
        ENDIF.
      ENDDO.
      DATA(t200) = VALUE i( ).
      DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t201.
      DATA t202 TYPE REF TO zif_lnt_interface_definition.
      t202 ?= t15.
      t201 = me->from_interfaces( i_definition = t202 i_skip_34cc = t5 ).
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
      t5->load( ).
      t200 = lines( t5->items ).
      t2 = t15->get_super_class( ).
    ENDDO.
    result = t5.

  ENDMETHOD.

  METHOD list_interfaces_recursive.
    DATA(t1) = i_definition.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
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
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t11.
      t22 = t26.
      DATA t28 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t28.
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
      IF t34 = abap_true.
        CLEAR t28.
      ELSE.
        DATA t38 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t38.
        DATA t40 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t40 = t20->current.
        DATA t43 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t43.
        IF xsdbool( t40 IS INITIAL ) = abap_true.
          CLEAR t43.
        ELSE.
          DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t48 = t40.
          DATA t50 TYPE string.
          t50 = t22->value.
          t43 = t48->find_interface_definition( i_name = t50 ).
        ENDIF.
        t38 = t43.
        DATA t52 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t52.
        IF xsdbool( t38 IS BOUND ) = abap_true.
          t52 = t38.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_ob_interface.
          DATA t62 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t62.
          DATA t64 TYPE REF TO zif_lnt_registry.
          t64 = t20->reg.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t69->has = abap_true.
          t69->value = |INTF|.
          t66 = t69.
          DATA t73 TYPE string.
          t73 = t22->value.
          DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t75->has = abap_true.
          t75->value = t73.
          DATA t77 TYPE REF TO object.
          t77 = t64->get_object( i_type_9913 = t66 i_name = t75 ).
          t62 ?= t77.
          t61 = t62.
          DATA t78 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t78.
          IF xsdbool( t61 IS BOUND ) = abap_true.
            t78 = t61->def.
          ELSE.
            CLEAR t78.
          ENDIF.
          t52 = t78.
        ENDIF.
        t28 = t52.
      ENDIF.
      t18 = t28.
      IF xsdbool( t18 IS BOUND ) = abap_true.
        DATA(t90) = VALUE i( ).
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t91 = me->list_interfaces_recursive( i_definition = t18 ).
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
        t2->load( ).
        t90 = lines( t2->items ).
      ENDIF.
    ENDDO.
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t102.
    result = t102->concat( p0 = NEW zlnt_runtime_set__1827558fd4c7( )->fromarray( p0 = t2 )->values( ) ).

  ENDMETHOD.

  METHOD from_interfaces.
    DATA(t1) = i_definition.
    DATA(t2) = i_skip_34cc.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
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
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t19 = t2.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      IF xsdbool( t19 IS BOUND ) = abap_true.
        t21 = t19.
      ELSE.
        CREATE OBJECT t21.
      ENDIF.
      t13 = me->from_interface_by_name( i_name = t14 i_ignore = t3->concat( p0 = t21 ) ).
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
      t3->load( ).
      t12 = lines( t3->items ).
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
      DATA(t12) = me->scope.
      DATA t13 TYPE string.
      t13 = t1->get_name( ).
      DATA t16 TYPE string.
      t16 = t3.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
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
      t20 = t22->get( p0 = t24 ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      IF xsdbool( t20 IS INITIAL ) = abap_true.
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
      t4 = t18.
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
