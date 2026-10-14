* TS: src/abap/5_syntax/global_definitions/find_global_definitions.ts:17:1 FindGlobalDefinitions
CLASS zcl_lnt_fnd_glbl_dfntns DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS run IMPORTING i_progress TYPE REF TO zif_lnt_progress.
    METHODS count_untyped IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_union_291f04b3 RETURNING VALUE(result) TYPE int8.
    METHODS count IMPORTING i_type_9913 TYPE REF TO zif_lnt_union_ea265422 RETURNING VALUE(result) TYPE int8.
    METHODS update IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_union_291f04b3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fnd_glbl_dfntns IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
  ENDMETHOD.
  METHOD run.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_progress( i_progress ).
    DATA t2 TYPE i.
    DATA(t3) = 10.
    t2 = t3.
    DATA t4 TYPE int8.
    DATA(t5) = CONV int8( 9007199 ).
    t5 = t5 * 1000000000.
    t5 = t5 + 254740991.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = CAST zif_lnt_registry( me->reg ).
    t8 = t9->get_objects( ).
    DATA t10 TYPE REF TO zif_lnt_object.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t8->items INTO t11.
      t10 ?= t11.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE abap_bool.
      DATA(t15) = CAST zif_lnt_object( t10 ).
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_ob_interface ).
      t13 = t14.
      IF t14 = abap_false.
        DATA t16 TYPE abap_bool.
        DATA(t17) = CAST zif_lnt_object( t10 ).
        t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_class ).
        t13 = t16.
      ENDIF.
      t12 = t13.
      IF t13 = abap_true.
        DATA(t18) = VALUE abap_bool( ).
        DATA t19 TYPE REF TO zif_lnt_interface_definition.
        DATA t20 TYPE REF TO zif_lnt_interface_definition.
        DATA t21 TYPE REF TO zif_lnt_union_291f04b3.
        DATA(t22) = CAST zif_lnt_object( t10 ).
        t21 ?= t22.
        t20 = t21->get_definition( ).
        t19 = t20.
        DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t24.
        t23 = t24.
        DATA(t25) = VALUE abap_bool( ).
        DATA(t26) = CAST zif_lnt_interface_definition( t19 ).
        IF t26 IS INITIAL.
          t25 = abap_true.
        ENDIF.
        t18 = t25.
        t12 = t18.
      ENDIF.
      IF t12 = abap_true.
        DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
        DATA t28 TYPE REF TO zif_lnt_union_291f04b3.
        DATA(t29) = CAST zif_lnt_object( t10 ).
        t28 ?= t29.
        APPEND t28 TO t27->items.
      ELSE.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t31) = VALUE abap_bool( ).
        DATA(t32) = VALUE abap_bool( ).
        DATA(t33) = VALUE abap_bool( ).
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE abap_bool.
        DATA(t36) = CAST zif_lnt_object( t10 ).
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_data_element ).
        t34 = t35.
        IF t35 = abap_false.
          DATA t37 TYPE abap_bool.
          DATA(t38) = CAST zif_lnt_object( t10 ).
          t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_table ).
          t34 = t37.
        ENDIF.
        t33 = t34.
        IF t34 = abap_false.
          DATA t39 TYPE abap_bool.
          DATA(t40) = CAST zif_lnt_object( t10 ).
          t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_ob_table_type ).
          t33 = t39.
        ENDIF.
        t32 = t33.
        IF t33 = abap_false.
          DATA t41 TYPE abap_bool.
          DATA(t42) = CAST zif_lnt_object( t10 ).
          t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_view ).
          t32 = t41.
        ENDIF.
        t31 = t32.
        IF t32 = abap_false.
          DATA t43 TYPE abap_bool.
          DATA(t44) = CAST zif_lnt_object( t10 ).
          t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_lock_object ).
          t31 = t43.
        ENDIF.
        t30 = t31.
        IF t31 = abap_false.
          DATA t45 TYPE abap_bool.
          DATA(t46) = CAST zif_lnt_object( t10 ).
          t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_athrztn_chck_fld ).
          t30 = t45.
        ENDIF.
        IF t30 = abap_true.
          DATA t47 TYPE REF TO zcl_lnt_abstract_type.
          DATA t48 TYPE REF TO zif_lnt_union_e3559bc5.
          DATA(t49) = CAST zif_lnt_object( t10 ).
          t48 ?= t49.
          DATA(t50) = CAST zif_lnt_registry( me->reg ).
          t47 = t48->parse_type( i_reg_f149 = t50 ).
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t52 = t53.
    DATA t54 TYPE i.
    DATA t55 TYPE i.
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    t55 = lines( t56->items ).
    t54 = t55.
    DATA t57 TYPE i.
    DATA(t58) = 1.
    t57 = t58.
    DO.
      DATA t59 TYPE abap_bool.
      DATA(t60) = t57.
      DATA(t61) = t54.
      t59 = xsdbool( t60 < t61 ).
      IF t59 = abap_false.
        EXIT.
      ENDIF.
      DATA t62 TYPE REF TO zif_lnt_union_291f04b3.
      DATA t63 TYPE REF TO zif_lnt_union_291f04b3.
      DATA t64 TYPE REF TO zif_lnt_union_291f04b3.
      DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
      DATA(t66) = t57.
      DATA t67 TYPE REF TO object.
      t67 = t65->get( p0 = t66 ).
      t64 ?= t67.
      t63 = t64.
      t62 = t63.
      DATA t68 TYPE i.
      DATA(t69) = t57.
      t68 = t69.
      DO.
        DATA t70 TYPE abap_bool.
        DATA(t71) = t68.
        DATA(t72) = 0.
        t70 = xsdbool( t71 > t72 ).
        IF t70 = abap_false.
          EXIT.
        ENDIF.
        DATA t73 TYPE REF TO zif_lnt_union_291f04b3.
        DATA t74 TYPE REF TO zif_lnt_union_291f04b3.
        DATA t75 TYPE REF TO zif_lnt_union_291f04b3.
        DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
        DATA t77 TYPE i.
        DATA(t78) = t68.
        DATA(t79) = 1.
        t77 = t78 - t79.
        DATA t80 TYPE REF TO object.
        t80 = t76->get( p0 = t77 ).
        t75 ?= t80.
        t74 = t75.
        t73 = t74.
        DATA t81 TYPE abap_bool.
        DATA t82 TYPE i.
        DATA t83 TYPE string.
        DATA(t84) = CAST zif_lnt_union_291f04b3( t73 ).
        t83 = t84->get_name( ).
        DATA t85 TYPE string.
        DATA(t86) = CAST zif_lnt_union_291f04b3( t62 ).
        t85 = t86->get_name( ).
        t82 = zlnt_runtime_orde_654b9c3be2c1=>object_name( p0 = t83 p1 = t85 ).
        DATA(t87) = 0.
        t81 = xsdbool( t82 <= t87 ).
        IF t81 = abap_true.
          EXIT.
        ENDIF.
        DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
        DATA(t89) = t68.
        DATA(t90) = CAST zif_lnt_union_291f04b3( t73 ).
        t89 = t89 + 1.
        DATA t91 TYPE REF TO object.
        CLEAR t91.
        CLEAR t91.
        WHILE lines( t88->items ) < t89.
          APPEND t91 TO t88->items.
        ENDWHILE.
        MODIFY t88->items FROM t90 INDEX t89.
        DATA t92 TYPE i.
        DATA(t93) = t68.
        DATA(t94) = 1.
        t92 = t93 - t94.
        t68 = t92.
      ENDDO.
      DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
      DATA(t96) = t68.
      DATA(t97) = CAST zif_lnt_union_291f04b3( t62 ).
      t96 = t96 + 1.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      CLEAR t98.
      WHILE lines( t95->items ) < t96.
        APPEND t98 TO t95->items.
      ENDWHILE.
      MODIFY t95->items FROM t97 INDEX t96.
      DATA t99 TYPE i.
      DATA(t100) = t57.
      DATA(t101) = 1.
      t99 = t100 + t101.
      t57 = t99.
    ENDDO.
    DATA(t102) = CAST zlnt_runtime_arra_c22708faf2e3( t52 ).
    t51 = t102.
    DATA t103 TYPE i.
    DATA(t104) = 1.
    t103 = t104.
    DO.
      DATA t105 TYPE abap_bool.
      DATA(t106) = t103.
      DATA(t107) = t2.
      t105 = xsdbool( t106 <= t107 ).
      IF t105 = abap_false.
        EXIT.
      ENDIF.
      DATA(t108) = VALUE abap_bool( ).
      DATA t109 TYPE REF TO zif_lnt_progress.
      DATA(t110) = CAST zif_lnt_progress( t1 ).
      t109 = t110.
      DATA(t111) = VALUE abap_bool( ).
      DATA(t112) = VALUE abap_bool( ).
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = CAST zif_lnt_progress( t109 ).
      IF t114 IS INITIAL.
        t113 = abap_true.
      ENDIF.
      t112 = xsdbool( t113 = abap_false ).
      IF t112 = abap_true.
        DATA t115 TYPE REF TO zif_lnt_progress.
        DATA(t116) = CAST zif_lnt_progress( t109 ).
        t115 = t116.
        DATA t117 TYPE int8.
        DATA t118 TYPE i.
        DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
        t118 = lines( t119->items ).
        t117 = t118.
        DATA t120 TYPE string.
        DATA(t121) = |Global OO types, pass |.
        DATA t122 TYPE string.
        DATA(t123) = t103.
        t122 = |{ t123 }|.
        DATA(t124) = strlen( t121 ).
        t120 = |{ t121 }{ t122 }|.
        t115->set( i_total = t117 i_text = t120 ).
      ENDIF.
      DATA(t125) = abap_false.
      t111 = t125.
      t108 = t111.
      DATA t126 TYPE int8.
      DATA(t127) = CONV int8( 0 ).
      t126 = t127.
      DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t129.
      t128 = t129.
      DATA(t130) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
      DATA t131 TYPE REF TO zif_lnt_union_291f04b3.
      CLEAR t131.
      DATA t132 TYPE REF TO object.
      CLEAR t132.
      LOOP AT t130->items INTO t132.
        t131 ?= t132.
        DATA(t133) = VALUE abap_bool( ).
        DATA t134 TYPE REF TO zif_lnt_progress.
        DATA(t135) = CAST zif_lnt_progress( t1 ).
        t134 = t135.
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = VALUE abap_bool( ).
        DATA(t138) = VALUE abap_bool( ).
        DATA(t139) = CAST zif_lnt_progress( t134 ).
        IF t139 IS INITIAL.
          t138 = abap_true.
        ENDIF.
        t137 = xsdbool( t138 = abap_false ).
        IF t137 = abap_true.
          DATA t140 TYPE REF TO zif_lnt_progress.
          DATA(t141) = CAST zif_lnt_progress( t134 ).
          t140 = t141.
          DATA t142 TYPE string.
          DATA t143 TYPE string.
          DATA t144 TYPE string.
          DATA(t145) = |Global OO types(pass |.
          DATA t146 TYPE string.
          DATA(t147) = t103.
          t146 = |{ t147 }|.
          DATA(t148) = strlen( t145 ).
          t144 = |{ t145 }{ t146 }|.
          DATA(t149) = |), next pass: |.
          DATA(t150) = strlen( t144 ).
          t143 = |{ t144 }{ t149 }|.
          DATA t151 TYPE string.
          DATA t152 TYPE i.
          DATA(t153) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
          t152 = lines( t153->items ).
          t151 = |{ t152 }|.
          DATA(t154) = strlen( t143 ).
          t142 = |{ t143 }{ t151 }|.
          t140->tick_sync( i_text = t142 ).
        ENDIF.
        DATA(t155) = abap_false.
        t136 = t155.
        t133 = t136.
        DATA(t156) = CAST zif_lnt_union_291f04b3( t131 ).
        me->update( i_obj_1ed0 = t156 ).
        DATA t157 TYPE int8.
        DATA t158 TYPE int8.
        DATA(t159) = CAST zif_lnt_union_291f04b3( t131 ).
        t158 = me->count_untyped( i_obj_1ed0 = t159 ).
        t157 = t158.
        DATA t160 TYPE abap_bool.
        DATA(t161) = t157.
        DATA(t162) = CONV int8( 0 ).
        t160 = xsdbool( t161 > t162 ).
        IF t160 = abap_true.
          DATA(t163) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
          DATA(t164) = CAST zif_lnt_union_291f04b3( t131 ).
          APPEND t164 TO t163->items.
        ENDIF.
        DATA t165 TYPE int8.
        DATA(t166) = t126.
        DATA(t167) = t157.
        t165 = t166 + t167.
        IF t165 < range_int8_bound_min OR t165 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t126 = t165.
      ENDLOOP.
      DATA(t168) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
      t6 = t168.
      DATA t169 TYPE abap_bool.
      DATA t170 TYPE abap_bool.
      DATA(t171) = t4.
      DATA(t172) = t126.
      t170 = xsdbool( t171 = t172 ).
      t169 = t170.
      IF t170 = abap_false.
        DATA t173 TYPE abap_bool.
        DATA(t174) = t126.
        DATA(t175) = CONV int8( 0 ).
        t173 = xsdbool( t174 = t175 ).
        t169 = t173.
      ENDIF.
      IF t169 = abap_true.
        EXIT.
      ENDIF.
      DATA(t176) = t126.
      t4 = t176.
      DATA t177 TYPE i.
      DATA(t178) = t103.
      DATA(t179) = 1.
      t177 = t178 + t179.
      t103 = t177.
    ENDDO.
  ENDMETHOD.
  METHOD count_untyped.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_union_291f04b3( i_obj_1ed0 ).
    DATA t2 TYPE REF TO zif_lnt_interface_definition.
    DATA t3 TYPE REF TO zif_lnt_interface_definition.
    DATA(t4) = CAST zif_lnt_union_291f04b3( t1 ).
    t3 = t4->get_definition( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zif_lnt_interface_definition.
    DATA(t7) = CAST zif_lnt_interface_definition( t2 ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zif_lnt_interface_definition( t6 ).
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    IF t5 = abap_true.
      DATA(t12) = CONV int8( 1 ).
      result = t12.
      RETURN.
    ENDIF.
    DATA t13 TYPE int8.
    DATA(t14) = CONV int8( 0 ).
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zif_lnt_type_definitions.
    DATA t17 TYPE REF TO zif_lnt_interface_definition.
    DATA(t18) = CAST zif_lnt_interface_definition( t2 ).
    t17 = t18.
    t16 = t17->get_type_definitions( ).
    t15 = t16->get_all( ).
    DATA t19 TYPE REF TO zcl_lnt_type_definitions_entry.
    CLEAR t19.
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    LOOP AT t15->items INTO t20.
      t19 ?= t20.
      DATA t21 TYPE int8.
      DATA(t22) = t13.
      DATA t23 TYPE int8.
      DATA t24 TYPE REF TO zcl_lnt_abstract_type.
      DATA t25 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t26 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t27) = CAST zcl_lnt_type_definitions_entry( t19 ).
      t26 = t27->type_cba0.
      t25 = t26.
      DATA t28 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t29) = CAST zcl_lnt_typed_identifier( t25 ).
      t28 = t29->type_cba0.
      t24 = t28.
      t23 = me->count( i_type_9913 = t24 ).
      t21 = t22 + t23.
      IF t21 < range_int8_bound_min OR t21 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t13 = t21.
    ENDLOOP.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zif_lnt_attributes.
    DATA t32 TYPE REF TO zif_lnt_interface_definition.
    DATA(t33) = CAST zif_lnt_interface_definition( t2 ).
    t32 = t33.
    t31 = t32->get_attributes( ).
    t30 = t31->get_all( ).
    DATA t34 TYPE REF TO zcl_lnt_class_attribute.
    CLEAR t34.
    DATA t35 TYPE REF TO object.
    CLEAR t35.
    LOOP AT t30->items INTO t35.
      t34 ?= t35.
      DATA t36 TYPE int8.
      DATA(t37) = t13.
      DATA t38 TYPE int8.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t41) = CAST zcl_lnt_class_attribute( t34 ).
      t40 = t41.
      DATA t42 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t43) = CAST zcl_lnt_typed_identifier( t40 ).
      t42 = t43->type_cba0.
      t39 = t42.
      t38 = me->count( i_type_9913 = t39 ).
      t36 = t37 + t38.
      IF t36 < range_int8_bound_min OR t36 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t13 = t36.
    ENDLOOP.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zif_lnt_attributes.
    DATA t46 TYPE REF TO zif_lnt_interface_definition.
    DATA(t47) = CAST zif_lnt_interface_definition( t2 ).
    t46 = t47.
    t45 = t46->get_attributes( ).
    t44 = t45->get_constants( ).
    DATA t48 TYPE REF TO zcl_lnt_class_constant.
    CLEAR t48.
    DATA t49 TYPE REF TO object.
    CLEAR t49.
    LOOP AT t44->items INTO t49.
      t48 ?= t49.
      DATA t50 TYPE int8.
      DATA(t51) = t13.
      DATA t52 TYPE int8.
      DATA t53 TYPE REF TO zcl_lnt_abstract_type.
      DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t55) = CAST zcl_lnt_class_constant( t48 ).
      t54 = t55.
      DATA t56 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t57) = CAST zcl_lnt_typed_identifier( t54 ).
      t56 = t57->type_cba0.
      t53 = t56.
      t52 = me->count( i_type_9913 = t53 ).
      t50 = t51 + t52.
      IF t50 < range_int8_bound_min OR t50 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t13 = t50.
    ENDLOOP.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zif_lnt_method_definitions.
    DATA t60 TYPE REF TO zif_lnt_interface_definition.
    DATA(t61) = CAST zif_lnt_interface_definition( t2 ).
    t60 = t61.
    t59 = t60->get_method_definitions( ).
    t58 = t59->get_all( ).
    DATA t62 TYPE REF TO zif_lnt_method_definition.
    CLEAR t62.
    DATA t63 TYPE REF TO object.
    CLEAR t63.
    LOOP AT t58->items INTO t63.
      t62 ?= t63.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t65 TYPE REF TO zif_lnt_method_parameters.
      DATA(t66) = CAST zif_lnt_method_definition( t62 ).
      t65 = t66->get_parameters( ).
      t64 = t65->get_all( ).
      DATA t67 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t67.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      LOOP AT t64->items INTO t68.
        t67 ?= t68.
        DATA t69 TYPE int8.
        DATA(t70) = t13.
        DATA t71 TYPE int8.
        DATA t72 TYPE REF TO zcl_lnt_abstract_type.
        DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t74) = CAST zcl_lnt_typed_identifier( t67 ).
        t73 = t74.
        DATA t75 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t76) = CAST zcl_lnt_typed_identifier( t73 ).
        t75 = t76->type_cba0.
        t72 = t75.
        t71 = me->count( i_type_9913 = t72 ).
        t69 = t70 + t71.
        IF t69 < range_int8_bound_min OR t69 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t13 = t69.
      ENDLOOP.
    ENDLOOP.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t80 TYPE REF TO zif_lnt_interface_definition.
    DATA(t81) = CAST zif_lnt_interface_definition( t2 ).
    t80 = t81.
    t79 = t80->get_events( ).
    t78 = t79.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    DATA t83 TYPE abap_bool.
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    t83 = xsdbool( t84 IS BOUND ).
    IF t83 = abap_true.
      DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
      t82 = t85.
    ELSE.
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t86.
      t82 = t86.
    ENDIF.
    t77 = t82.
    DATA t87 TYPE REF TO zif_lnt_event_definition.
    CLEAR t87.
    DATA t88 TYPE REF TO object.
    CLEAR t88.
    LOOP AT t77->items INTO t88.
      t87 ?= t88.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t90) = CAST zif_lnt_event_definition( t87 ).
      t89 = t90->get_parameters( ).
      DATA t91 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t91.
      DATA t92 TYPE REF TO object.
      CLEAR t92.
      LOOP AT t89->items INTO t92.
        t91 ?= t92.
        DATA t93 TYPE int8.
        DATA(t94) = t13.
        DATA t95 TYPE int8.
        DATA t96 TYPE REF TO zcl_lnt_abstract_type.
        DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t98) = CAST zcl_lnt_typed_identifier( t91 ).
        t97 = t98.
        DATA t99 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t100) = CAST zcl_lnt_typed_identifier( t97 ).
        t99 = t100->type_cba0.
        t96 = t99.
        t95 = me->count( i_type_9913 = t96 ).
        t93 = t94 + t95.
        IF t93 < range_int8_bound_min OR t93 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t13 = t93.
      ENDLOOP.
    ENDLOOP.
    DATA(t101) = t13.
    result = t101.

  ENDMETHOD.
  METHOD count.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_union_ea265422( i_type_9913 ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CAST zif_lnt_union_ea265422( t1 ).
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_unknown_type ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t5 TYPE abap_bool.
      DATA(t6) = CAST zif_lnt_union_ea265422( t1 ).
      t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_void_type ).
      t2 = t5.
    ENDIF.
    IF t2 = abap_true.
      DATA(t7) = CONV int8( 1 ).
      result = t7.
      RETURN.
    ELSE.
      DATA t8 TYPE abap_bool.
      DATA(t9) = CAST zif_lnt_union_ea265422( t1 ).
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t8 = abap_true.
        DATA t10 TYPE int8.
        DATA t11 TYPE REF TO zcl_lnt_abstract_type.
        DATA t12 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t13 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t14) = CAST zif_lnt_union_ea265422( t1 ).
        DATA t15 TYPE REF TO object.
        t15 = t14.
        t13 ?= t15.
        t12 = t13.
        DATA t16 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t17) = CAST zcl_lnt_ty_table_type( t12 ).
        t16 = t17->row_type.
        t11 = t16.
        t10 = me->count( i_type_9913 = t11 ).
        result = t10.
        RETURN.
      ELSE.
        DATA t18 TYPE abap_bool.
        DATA(t19) = CAST zif_lnt_union_ea265422( t1 ).
        t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_data_reference ).
        IF t18 = abap_true.
          DATA t20 TYPE int8.
          DATA t21 TYPE REF TO zcl_lnt_abstract_type.
          DATA t22 TYPE REF TO zcl_lnt_data_reference.
          DATA t23 TYPE REF TO zcl_lnt_data_reference.
          DATA(t24) = CAST zif_lnt_union_ea265422( t1 ).
          DATA t25 TYPE REF TO object.
          t25 = t24.
          t23 ?= t25.
          t22 = t23.
          DATA t26 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t27) = CAST zcl_lnt_data_reference( t22 ).
          t26 = t27->type_cba0.
          t21 = t26.
          t20 = me->count( i_type_9913 = t21 ).
          result = t20.
          RETURN.
        ELSE.
          DATA t28 TYPE abap_bool.
          DATA(t29) = CAST zif_lnt_union_ea265422( t1 ).
          t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_structure_type ).
          IF t28 = abap_true.
            DATA t30 TYPE int8.
            DATA(t31) = CONV int8( 0 ).
            t30 = t31.
            DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t33 TYPE REF TO zcl_lnt_structure_type.
            DATA t34 TYPE REF TO zcl_lnt_structure_type.
            DATA(t35) = CAST zif_lnt_union_ea265422( t1 ).
            DATA t36 TYPE REF TO object.
            t36 = t35.
            t34 ?= t36.
            t33 = t34.
            DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t38) = CAST zcl_lnt_structure_type( t33 ).
            t37 = t38->components.
            t32 = t37.
            DATA t39 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t39.
            DATA t40 TYPE REF TO object.
            CLEAR t40.
            LOOP AT t32->items INTO t40.
              t39 ?= t40.
              DATA t41 TYPE int8.
              DATA(t42) = t30.
              DATA t43 TYPE int8.
              DATA t44 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t45) = CAST zcl_lnt_istructure_component( t39 ).
              t44 = t45->type_cba0.
              t43 = me->count( i_type_9913 = t44 ).
              t41 = t42 + t43.
              IF t41 < range_int8_bound_min OR t41 > range_int8_bound_max.
                RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
              ENDIF.
              t30 = t41.
            ENDLOOP.
            DATA(t46) = t30.
            result = t46.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t47) = CONV int8( 0 ).
    result = t47.

  ENDMETHOD.
  METHOD update.
    DATA(t1) = CAST zif_lnt_union_291f04b3( i_obj_1ed0 ).
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t3.
    DATA(t4) = CAST zif_lnt_union_291f04b3( t1 ).
    t3 = t4->get_main_abap_file( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t6.
    DATA(t7) = CAST zcl_lnt_abap_file( t2 ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zcl_lnt_abap_file( t6 ).
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    IF t5 = abap_true.
      DATA(t12) = CAST zif_lnt_union_291f04b3( t1 ).
      DATA t13 TYPE REF TO zif_lnt_class_definition.
      CLEAR t13.
      t12->set_definition( i_def = t13 ).
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t17.
    DATA(t18) = CAST zcl_lnt_abap_file( t2 ).
    t17 = t18.
    t16 = t17.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = CAST zcl_lnt_abap_file( t16 ).
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t24.
      DATA(t25) = CAST zcl_lnt_abap_file( t16 ).
      t24 = t25.
      DATA t26 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t26.
      DATA(t27) = CAST zcl_lnt_abap_file( t24 ).
      t26 = t27->structure.
      t23 = t26.
      t19 = t23.
    ENDIF.
    t15 = t19.
    t14 = t15.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t29.
    DATA(t30) = CAST zcl_lnt_structure_node( t14 ).
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zcl_lnt_structure_node( t29 ).
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA(t35) = CAST zif_lnt_union_291f04b3( t1 ).
      DATA t36 TYPE REF TO zif_lnt_class_definition.
      CLEAR t36.
      t35->set_definition( i_def = t36 ).
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zcl_lnt_syntax_input.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_syntax_input.
    CLEAR t38.
    DATA t39 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t39.
    DATA(t40) = CAST zif_lnt_registry( me->reg ).
    DATA t41 TYPE REF TO zif_lnt_object.
    CLEAR t41.
    DATA(t42) = CAST zif_lnt_union_291f04b3( t1 ).
    t41 ?= t42.
    t39 = zcl_lnt_current_scope=>build_default( i_reg_f149 = t40 i_obj_1ed0 = t41 ).
    DATA(t43) = VALUE string( ).
    DATA t44 TYPE REF TO zcl_lnt_abstract_file.
    CLEAR t44.
    DATA t45 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t45.
    DATA(t46) = CAST zcl_lnt_abap_file( t2 ).
    t45 = t46.
    t44 = t45.
    DATA(t47) = VALUE string( ).
    DATA(t48) = CAST zcl_lnt_abstract_file( t44 ).
    t47 = t48->filename.
    t43 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    CREATE OBJECT t49.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    CREATE OBJECT t50.
    t38 = NEW zcl_lnt_syntax_input( i_scope = t39 i_filename = t43 i_issues = t49 i_deferred = t50 ).
    t37 = t38.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = CAST zif_lnt_union_291f04b3( t1 ).
    t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_ob_interface ).
    IF t51 = abap_true.
      DATA t53 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t53.
      DATA t54 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t55.
      DATA(t56) = CAST zcl_lnt_structure_node( t14 ).
      t55 = t56.
      DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d683_aa96b8bd10e1 ).
      t54 = t55->find_first_structure( i_type_9913 = t57 ).
      t53 = t54.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = CAST zcl_lnt_structure_node( t53 ).
      t58 = xsdbool( t59 IS BOUND ).
      IF t58 = abap_true.
        DATA t60 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t60.
        TRY.
            DATA t61 TYPE REF TO zcl_lnt_interface_definition.
            CLEAR t61.
            DATA t62 TYPE REF TO zcl_lnt_interface_definition.
            CLEAR t62.
            DATA t63 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t63.
            DATA(t64) = CAST zcl_lnt_structure_node( t53 ).
            t63 = t64.
            DATA(t65) = CAST zcl_lnt_syntax_input( t37 ).
            t62 = NEW zcl_lnt_interface_definition( i_node = t63 i_input_967e = t65 ).
            t61 = t62.
            DATA t66 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t66.
            DATA(t67) = CAST zif_lnt_union_291f04b3( t1 ).
            DATA t68 TYPE REF TO object.
            CLEAR t68.
            t68 = t67.
            t66 ?= t68.
            DATA(t69) = CAST zcl_lnt_interface_definition( t61 ).
            t66->st_dfn_ins_src_obj_int_ts_intr( i_def = t69 ).
          CATCH zlnt_exception_cl_30eec8e8805d INTO t60.
            DATA(t70) = CAST zcl_lnt_builtin_e8b3bd7e( t60->payload ).
            DATA t71 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t71.
            DATA(t72) = CAST zif_lnt_union_291f04b3( t1 ).
            DATA t73 TYPE REF TO object.
            CLEAR t73.
            t73 = t72.
            t71 ?= t73.
            DATA t74 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t74.
            t71->st_dfn_ins_src_obj_int_ts_intr( i_def = t74 ).
        ENDTRY.
      ELSE.
        DATA t75 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t75.
        DATA(t76) = CAST zif_lnt_union_291f04b3( t1 ).
        DATA t77 TYPE REF TO object.
        CLEAR t77.
        t77 = t76.
        t75 ?= t77.
        DATA t78 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t78.
        t75->st_dfn_ins_src_obj_int_ts_intr( i_def = t78 ).
      ENDIF.
    ELSE.
      DATA t79 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t79.
      DATA t80 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t80.
      DATA t81 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t81.
      DATA(t82) = CAST zcl_lnt_structure_node( t14 ).
      t81 = t82.
      DATA(t83) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d684_dd4b0670faf6 ).
      t80 = t81->find_first_structure( i_type_9913 = t83 ).
      t79 = t80.
      DATA(t84) = VALUE abap_bool( ).
      DATA(t85) = CAST zcl_lnt_structure_node( t79 ).
      t84 = xsdbool( t85 IS BOUND ).
      IF t84 = abap_true.
        DATA t86 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t86.
        TRY.
            DATA t87 TYPE REF TO zcl_lnt_ty_class_definition.
            CLEAR t87.
            DATA t88 TYPE REF TO zcl_lnt_ty_class_definition.
            CLEAR t88.
            DATA t89 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t89.
            DATA(t90) = CAST zcl_lnt_structure_node( t79 ).
            t89 = t90.
            DATA(t91) = CAST zcl_lnt_syntax_input( t37 ).
            t88 = NEW zcl_lnt_ty_class_definition( i_node = t89 i_input_967e = t91 ).
            t87 = t88.
            DATA t92 TYPE REF TO zcl_lnt_class.
            CLEAR t92.
            DATA t93 TYPE REF TO zcl_lnt_class.
            CLEAR t93.
            DATA(t94) = CAST zif_lnt_union_291f04b3( t1 ).
            DATA t95 TYPE REF TO object.
            CLEAR t95.
            t95 = t94.
            t93 ?= t95.
            t92 = t93.
            DATA t96 TYPE REF TO zif_lnt_class_definition.
            CLEAR t96.
            DATA(t97) = CAST zcl_lnt_ty_class_definition( t87 ).
            t96 = t97.
            DATA(t98) = CAST zcl_lnt_class( t92 ).
            DATA(t99) = CAST zif_lnt_class_definition( t96 ).
            t98->def = t99.
          CATCH zlnt_exception_cl_30eec8e8805d INTO t86.
            DATA(t100) = CAST zcl_lnt_builtin_e8b3bd7e( t86->payload ).
            DATA t101 TYPE REF TO zcl_lnt_class.
            CLEAR t101.
            DATA t102 TYPE REF TO zcl_lnt_class.
            CLEAR t102.
            DATA(t103) = CAST zif_lnt_union_291f04b3( t1 ).
            DATA t104 TYPE REF TO object.
            CLEAR t104.
            t104 = t103.
            t102 ?= t104.
            t101 = t102.
            DATA(t105) = CAST zcl_lnt_class( t101 ).
            DATA t106 TYPE REF TO zif_lnt_class_definition.
            CLEAR t106.
            t105->def = t106.
        ENDTRY.
      ELSE.
        DATA t107 TYPE REF TO zcl_lnt_class.
        CLEAR t107.
        DATA t108 TYPE REF TO zcl_lnt_class.
        CLEAR t108.
        DATA(t109) = CAST zif_lnt_union_291f04b3( t1 ).
        DATA t110 TYPE REF TO object.
        CLEAR t110.
        t110 = t109.
        t108 ?= t110.
        t107 = t108.
        DATA(t111) = CAST zcl_lnt_class( t107 ).
        DATA t112 TYPE REF TO zif_lnt_class_definition.
        CLEAR t112.
        t111->def = t112.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d827_4ef46d4fa79b.
  ENDMETHOD.
ENDCLASS.
