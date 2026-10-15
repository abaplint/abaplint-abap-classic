* TS: src/abap/5_syntax/basic_types.ts:21:1 BasicTypes
CLASS zcl_lnt_basic_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA input_2fd0 TYPE REF TO zcl_lnt_syntax_input.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS lookup_qualified_name IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS resolve_like_name IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_header_logic TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS clone_type IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS resolve_type_name IMPORTING i_type_name TYPE REF TO zcl_lnt_expression_node i_length TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a i_decimals_2eed TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a i_qualified_name TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS simple_type IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_qualified_name_prefix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS parse_table IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS rap_table_for IMPORTING i_entity_name TYPE string i_options TYPE REF TO zcl_lnt_itable_options RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS parse_type IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS is_occurs IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_rap_base_entity_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS resolve_rap_alias IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS is_rap_derived_entity_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_rap_table_for IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_rap_type_structure IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS resolve_type_chain IMPORTING i_expr TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS resolve_constant_value IMPORTING i_expr TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS resolve_type_ref IMPORTING i_chain_8ed6 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS find_value IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS find_decimals IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS find_length IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS parse_int IMPORTING i_text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_bb79b741c1de TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_basic_types IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_input_967e.
    DATA(t2) = t1.
    me->input_2fd0 = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `input`.
  ENDMETHOD.

  METHOD lookup_qualified_name.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_current_scope.
    DATA t13 TYPE REF TO zcl_lnt_current_scope.
    DATA(t14) = me->input_2fd0.
    t13 = t14->scope.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA t18 TYPE string.
      DATA(t19) = t1.
      t18 = t19->value.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t18.
      t16 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t16 = t21.
    ENDIF.
    t15 = t16.
    DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = t15.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    t26 = t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t24.
    IF t29 IS INITIAL.
      t28 = abap_true.
    ELSEIF t29->has = abap_false.
      t28 = abap_true.
    ENDIF.
    t23 = t28.
    IF t23 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t30.
      t22 = t30.
    ELSE.
      DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t34) = t12.
      t33 = t34->current.
      t32 = t33.
      DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t35.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t32.
      IF t37 IS INITIAL.
        t36 = abap_true.
      ENDIF.
      IF t36 = abap_true.
        DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t38.
        t35 = t38.
      ELSE.
        DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t40 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t41) = t32.
        t40 = t41.
        DATA t42 TYPE string.
        DATA(t43) = t15.
        t42 = t43->value.
        t39 = t40->find_type( i_name = t42 ).
        t35 = t39.
      ENDIF.
      t31 = t35.
      t22 = t31.
    ENDIF.
    t11 = t22.
    t10 = t11.
    DATA t44 TYPE abap_bool.
    DATA(t45) = t10.
    t44 = xsdbool( t45 IS BOUND ).
    IF t44 = abap_true.
      DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t49) = t10.
        t48 = t49.
        t46 = t48.
      ELSE.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t50.
        t46 = t50.
      ENDIF.
      result = t46.
      RETURN.
    ENDIF.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE i( ).
    DATA t53 TYPE string.
    DATA(t54) = t1.
    t53 = t54->value.
    DATA(t55) = |=>|.
    DATA(t56) = strlen( t53 ).
    IF t55 IS INITIAL.
      t52 = 0.
    ELSE.
      FIND t55 IN t53 MATCH OFFSET t52.
      IF sy-subrc <> 0.
        t52 = -1.
      ENDIF.
    ENDIF.
    DATA(t57) = 0.
    t51 = xsdbool( t52 >= t57 ).
    IF t51 = abap_true.
      DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t60 TYPE string.
      DATA(t61) = t1.
      t60 = t61->value.
      DATA(t62) = |=>|.
      DATA(t63) = strlen( t60 ).
      DATA t64 TYPE i.
      DATA(t65) = VALUE i( ).
      DATA(t66) = VALUE i( ).
      DATA t67 TYPE i.
      DATA(t68) = VALUE string( ).
      CREATE OBJECT t59.
      t67 = strlen( t62 ).
      t64 = 0.
      IF t67 = 0.
        WHILE t64 < t63.
          t68 = t60+t64(1).
          APPEND t68 TO t59->items.
          t64 = t64 + 1.
        ENDWHILE.
      ELSE.
        WHILE t64 <= t63.
          FIND FIRST OCCURRENCE OF t62 IN SECTION OFFSET t64 OF t60 MATCH OFFSET t65.
          IF sy-subrc = 0.
            t66 = t65 - t64.
          ELSE.
            t65 = -1.
            t66 = t63 - t64.
          ENDIF.
          CLEAR t68.
          IF t66 > 0.
            t68 = t60+t64(t66).
          ENDIF.
          APPEND t68 TO t59->items.
          IF t65 < 0.
            EXIT.
          ENDIF.
          t64 = t65 + t67.
        ENDWHILE.
      ENDIF.
      t58 = t59.
      DATA(t69) = VALUE string( ).
      DATA(t70) = VALUE string( ).
      DATA(t71) = t58.
      IF t71->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t71->load( ).
      CLEAR t70.
      READ TABLE t71->items INDEX 1 INTO t70.
      t69 = t70.
      DATA(t72) = VALUE string( ).
      DATA(t73) = VALUE string( ).
      DATA(t74) = t58.
      IF t74->has( 2 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t74->load( ).
      CLEAR t73.
      READ TABLE t74->items INDEX 2 INTO t73.
      t72 = t73.
      DATA t75 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t75.
      DATA t76 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t76.
      DATA t77 TYPE REF TO zcl_lnt_current_scope.
      DATA t78 TYPE REF TO zcl_lnt_current_scope.
      DATA(t79) = me->input_2fd0.
      t78 = t79->scope.
      t77 = t78.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t81.
      DATA(t82) = abap_true.
      IF t82 = abap_true.
        DATA(t83) = t69.
        DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t84->has = abap_true.
        t84->value = t83.
        t81 = t84.
      ELSE.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        t81 = t85.
      ENDIF.
      t80 = t81.
      DATA t86 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t86.
      DATA(t87) = VALUE abap_bool( ).
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t89) = t80.
      t88 = t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      t90 = t91.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = t88.
      IF t93 IS INITIAL.
        t92 = abap_true.
      ELSEIF t93->has = abap_false.
        t92 = abap_true.
      ENDIF.
      t87 = t92.
      IF t87 = abap_true.
        DATA t94 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t94.
        t86 = t94.
      ELSE.
        DATA t95 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t95.
        DATA t96 TYPE REF TO zif_lnt_class_definition.
        CLEAR t96.
        DATA t97 TYPE REF TO zif_lnt_class_definition.
        CLEAR t97.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA(t100) = abap_true.
        IF t100 = abap_true.
          DATA t101 TYPE string.
          DATA(t102) = t80.
          t101 = t102->value.
          DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t103->has = abap_true.
          t103->value = t101.
          t99 = t103.
        ELSE.
          DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t104.
          t99 = t104.
        ENDIF.
        t98 = t99.
        DATA t105 TYPE REF TO zif_lnt_class_definition.
        CLEAR t105.
        DATA(t106) = VALUE abap_bool( ).
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t108) = t98.
        t107 = t108.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        t109 = t110.
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = t107.
        IF t112 IS INITIAL.
          t111 = abap_true.
        ELSEIF t112->has = abap_false.
          t111 = abap_true.
        ENDIF.
        t106 = t111.
        IF t106 = abap_true.
          DATA t113 TYPE REF TO zif_lnt_class_definition.
          CLEAR t113.
          t105 = t113.
        ELSE.
          DATA t114 TYPE REF TO zif_lnt_class_definition.
          CLEAR t114.
          DATA t115 TYPE REF TO zif_lnt_class_definition.
          CLEAR t115.
          DATA t116 TYPE REF TO zif_lnt_class_definition.
          CLEAR t116.
          DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t118 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t119) = t77.
          t118 = t119->current.
          t117 = t118.
          DATA t120 TYPE REF TO zif_lnt_class_definition.
          CLEAR t120.
          DATA(t121) = VALUE abap_bool( ).
          DATA(t122) = t117.
          IF t122 IS INITIAL.
            t121 = abap_true.
          ENDIF.
          IF t121 = abap_true.
            DATA t123 TYPE REF TO zif_lnt_class_definition.
            CLEAR t123.
            t120 = t123.
          ELSE.
            DATA t124 TYPE REF TO zif_lnt_class_definition.
            DATA t125 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t126) = t117.
            t125 = t126.
            DATA t127 TYPE string.
            DATA(t128) = t98.
            t127 = t128->value.
            t124 = t125->find_class_definition( i_name = t127 ).
            t120 = t124.
          ENDIF.
          t116 = t120.
          t115 = t116.
          DATA t129 TYPE REF TO zif_lnt_class_definition.
          CLEAR t129.
          DATA t130 TYPE abap_bool.
          DATA(t131) = t115.
          t130 = xsdbool( t131 IS BOUND ).
          IF t130 = abap_true.
            DATA t132 TYPE REF TO zif_lnt_class_definition.
            CLEAR t132.
            DATA(t133) = abap_true.
            IF t133 = abap_true.
              DATA t134 TYPE REF TO zif_lnt_class_definition.
              DATA(t135) = t115.
              t134 = t135.
              t132 = t134.
            ELSE.
              DATA t136 TYPE REF TO zif_lnt_class_definition.
              CLEAR t136.
              t132 = t136.
            ENDIF.
            t129 = t132.
          ELSE.
            DATA t137 TYPE REF TO zif_lnt_class_definition.
            CLEAR t137.
            DATA t138 TYPE REF TO zcl_lnt_class.
            CLEAR t138.
            DATA t139 TYPE REF TO zcl_lnt_class.
            CLEAR t139.
            DATA t140 TYPE REF TO zif_lnt_object.
            CLEAR t140.
            DATA t141 TYPE REF TO zif_lnt_registry.
            DATA(t142) = t77.
            t141 = t142->reg.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            DATA(t144) = abap_true.
            IF t144 = abap_true.
              DATA(t145) = |CLAS|.
              DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t146->has = abap_true.
              t146->value = t145.
              t143 = t146.
            ELSE.
              DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t147.
              t143 = t147.
            ENDIF.
            DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t148.
            DATA(t149) = abap_true.
            IF t149 = abap_true.
              DATA t150 TYPE string.
              DATA(t151) = t98.
              t150 = t151->value.
              DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t152->has = abap_true.
              t152->value = t150.
              t148 = t152.
            ELSE.
              DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t153.
              t148 = t153.
            ENDIF.
            t140 = t141->get_object( i_type_9913 = t143 i_name = t148 ).
            DATA t154 TYPE REF TO object.
            t154 = t140.
            t139 ?= t154.
            t138 = t139.
            DATA t155 TYPE REF TO zif_lnt_class_definition.
            CLEAR t155.
            DATA t156 TYPE abap_bool.
            DATA(t157) = t138.
            t156 = xsdbool( t157 IS BOUND ).
            IF t156 = abap_true.
              DATA t158 TYPE REF TO zif_lnt_class_definition.
              DATA t159 TYPE REF TO zcl_lnt_class.
              DATA(t160) = t138.
              t159 = t160.
              t158 = t159->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t155 = t158.
            ELSE.
              DATA t161 TYPE REF TO zif_lnt_class_definition.
              CLEAR t161.
              t155 = t161.
            ENDIF.
            t137 = t155.
            t129 = t137.
          ENDIF.
          t114 = t129.
          t105 = t114.
        ENDIF.
        t97 = t105.
        t96 = t97.
        DATA t162 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t162.
        DATA t163 TYPE abap_bool.
        DATA(t164) = t96.
        t163 = xsdbool( t164 IS BOUND ).
        IF t163 = abap_true.
          DATA t165 TYPE REF TO zif_lnt_interface_definition.
          DATA t166 TYPE REF TO zif_lnt_class_definition.
          DATA(t167) = t96.
          t166 = t167.
          t165 ?= t166.
          t162 = t165.
        ELSE.
          DATA t168 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t168.
          DATA t169 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t169.
          DATA t170 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t170.
          DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t171.
          DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t172.
          DATA(t173) = abap_true.
          IF t173 = abap_true.
            DATA t174 TYPE string.
            DATA(t175) = t80.
            t174 = t175->value.
            DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t176->has = abap_true.
            t176->value = t174.
            t172 = t176.
          ELSE.
            DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t177.
            t172 = t177.
          ENDIF.
          t171 = t172.
          DATA t178 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t178.
          DATA(t179) = VALUE abap_bool( ).
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t181) = t171.
          t180 = t181.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          t182 = t183.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = t180.
          IF t185 IS INITIAL.
            t184 = abap_true.
          ELSEIF t185->has = abap_false.
            t184 = abap_true.
          ENDIF.
          t179 = t184.
          IF t179 = abap_true.
            DATA t186 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t186.
            t178 = t186.
          ELSE.
            DATA t187 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t187.
            DATA t188 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t188.
            DATA t189 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t189.
            DATA t190 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t191 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t192) = t77.
            t191 = t192->current.
            t190 = t191.
            DATA t193 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t193.
            DATA(t194) = VALUE abap_bool( ).
            DATA(t195) = t190.
            IF t195 IS INITIAL.
              t194 = abap_true.
            ENDIF.
            IF t194 = abap_true.
              DATA t196 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t196.
              t193 = t196.
            ELSE.
              DATA t197 TYPE REF TO zif_lnt_interface_definition.
              DATA t198 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t199) = t190.
              t198 = t199.
              DATA t200 TYPE string.
              DATA(t201) = t171.
              t200 = t201->value.
              t197 = t198->find_interface_definition( i_name = t200 ).
              t193 = t197.
            ENDIF.
            t189 = t193.
            t188 = t189.
            DATA t202 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t202.
            DATA t203 TYPE abap_bool.
            DATA(t204) = t188.
            t203 = xsdbool( t204 IS BOUND ).
            IF t203 = abap_true.
              DATA t205 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t205.
              DATA(t206) = abap_true.
              IF t206 = abap_true.
                DATA t207 TYPE REF TO zif_lnt_interface_definition.
                DATA(t208) = t188.
                t207 = t208.
                t205 = t207.
              ELSE.
                DATA t209 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t209.
                t205 = t209.
              ENDIF.
              t202 = t205.
            ELSE.
              DATA t210 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t210.
              DATA t211 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t211.
              DATA t212 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t212.
              DATA t213 TYPE REF TO zif_lnt_object.
              CLEAR t213.
              DATA t214 TYPE REF TO zif_lnt_registry.
              DATA(t215) = t77.
              t214 = t215->reg.
              DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t216.
              DATA(t217) = abap_true.
              IF t217 = abap_true.
                DATA(t218) = |INTF|.
                DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t219->has = abap_true.
                t219->value = t218.
                t216 = t219.
              ELSE.
                DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t220.
                t216 = t220.
              ENDIF.
              DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t221.
              DATA(t222) = abap_true.
              IF t222 = abap_true.
                DATA t223 TYPE string.
                DATA(t224) = t171.
                t223 = t224->value.
                DATA(t225) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t225->has = abap_true.
                t225->value = t223.
                t221 = t225.
              ELSE.
                DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t226.
                t221 = t226.
              ENDIF.
              t213 = t214->get_object( i_type_9913 = t216 i_name = t221 ).
              DATA t227 TYPE REF TO object.
              t227 = t213.
              t212 ?= t227.
              t211 = t212.
              DATA t228 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t228.
              DATA t229 TYPE abap_bool.
              DATA(t230) = t211.
              t229 = xsdbool( t230 IS BOUND ).
              IF t229 = abap_true.
                DATA t231 TYPE REF TO zif_lnt_interface_definition.
                DATA t232 TYPE REF TO zcl_lnt_ob_interface.
                DATA t233 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t234) = t211.
                t233 = t234.
                t232 = t233.
                DATA t235 TYPE REF TO zif_lnt_interface_definition.
                DATA(t236) = t232.
                t235 = t236->def.
                t231 = t235.
                t228 = t231.
              ELSE.
                DATA t237 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t237.
                t228 = t237.
              ENDIF.
              t210 = t228.
              t202 = t210.
            ENDIF.
            t187 = t202.
            t178 = t187.
          ENDIF.
          t170 = t178.
          t169 = t170.
          DATA t238 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t238.
          DATA t239 TYPE abap_bool.
          DATA(t240) = t169.
          t239 = xsdbool( t240 IS BOUND ).
          IF t239 = abap_true.
            DATA t241 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t241.
            DATA(t242) = abap_true.
            IF t242 = abap_true.
              DATA t243 TYPE REF TO zif_lnt_interface_definition.
              DATA(t244) = t169.
              t243 = t244.
              t241 = t243.
            ELSE.
              DATA t245 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t245.
              t241 = t245.
            ENDIF.
            t238 = t241.
          ELSE.
            DATA t246 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t246.
            t238 = t246.
          ENDIF.
          t168 = t238.
          t162 = t168.
        ENDIF.
        t95 = t162.
        t86 = t95.
      ENDIF.
      t76 = t86.
      t75 = t76.
      DATA t247 TYPE abap_bool.
      DATA(t248) = t75.
      t247 = xsdbool( t248 IS BOUND ).
      IF t247 = abap_true.
        DATA(t249) = VALUE abap_bool( ).
        DATA(t250) = VALUE i( ).
        DATA(t251) = t72.
        DATA(t252) = |-|.
        DATA(t253) = strlen( t251 ).
        IF t252 IS INITIAL.
          t250 = 0.
        ELSE.
          FIND t252 IN t251 MATCH OFFSET t250.
          IF sy-subrc <> 0.
            t250 = -1.
          ENDIF.
        ENDIF.
        DATA(t254) = 0.
        t249 = xsdbool( t250 >= t254 ).
        IF t249 = abap_true.
          DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t255.
          DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t257) = t72.
          DATA(t258) = |-|.
          DATA(t259) = strlen( t257 ).
          DATA t260 TYPE i.
          DATA(t261) = VALUE i( ).
          DATA(t262) = VALUE i( ).
          DATA t263 TYPE i.
          DATA(t264) = VALUE string( ).
          CREATE OBJECT t256.
          t263 = strlen( t258 ).
          t260 = 0.
          IF t263 = 0.
            WHILE t260 < t259.
              t264 = t257+t260(1).
              APPEND t264 TO t256->items.
              t260 = t260 + 1.
            ENDWHILE.
          ELSE.
            WHILE t260 <= t259.
              FIND FIRST OCCURRENCE OF t258 IN SECTION OFFSET t260 OF t257 MATCH OFFSET t261.
              IF sy-subrc = 0.
                t262 = t261 - t260.
              ELSE.
                t261 = -1.
                t262 = t259 - t260.
              ENDIF.
              CLEAR t264.
              IF t262 > 0.
                t264 = t257+t260(t262).
              ENDIF.
              APPEND t264 TO t256->items.
              IF t261 < 0.
                EXIT.
              ENDIF.
              t260 = t261 + t263.
            ENDWHILE.
          ENDIF.
          t255 = t256.
          DATA(t265) = VALUE string( ).
          DATA(t266) = VALUE string( ).
          DATA(t267) = t255.
          IF t267->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t267->load( ).
          CLEAR t266.
          READ TABLE t267->items INDEX 1 INTO t266.
          t265 = t266.
          DATA(t268) = VALUE string( ).
          DATA(t269) = VALUE string( ).
          DATA(t270) = t255.
          IF t270->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t270->load( ).
          CLEAR t269.
          READ TABLE t270->items INDEX 2 INTO t269.
          t268 = t269.
          DATA t271 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t272 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t273 TYPE REF TO zif_lnt_type_definitions.
          DATA t274 TYPE REF TO zif_lnt_interface_definition.
          DATA(t275) = t75.
          t274 = t275.
          t273 = t274->get_type_definitions( ).
          DATA(t276) = t265.
          t272 = t273->get_by_name( i_name = t276 ).
          t271 = t272.
          DATA t277 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t277.
          DATA t278 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t278.
          DATA t279 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t280) = t271.
          t279 = t280.
          DATA t281 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t281.
          DATA(t282) = VALUE abap_bool( ).
          DATA(t283) = t279.
          IF t283 IS INITIAL.
            t282 = abap_true.
          ENDIF.
          IF t282 = abap_true.
            DATA t284 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t284.
            t281 = t284.
          ELSE.
            DATA t285 TYPE REF TO zcl_lnt_abstract_type.
            DATA t286 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t287 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t288) = t279.
            t287 = t288.
            t286 = t287.
            DATA t289 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t290) = t286.
            t289 = t290->type_cba0.
            t285 = t289.
            t281 = t285.
          ENDIF.
          t278 = t281.
          t277 = t278.
          DATA t291 TYPE abap_bool.
          DATA t292 TYPE abap_bool.
          DATA(t293) = t271.
          t292 = xsdbool( t293 IS BOUND ).
          t291 = t292.
          IF t292 = abap_true.
            DATA t294 TYPE abap_bool.
            DATA(t295) = t277.
            t294 = xsdbool( t295 IS BOUND AND t295 IS INSTANCE OF zcl_lnt_structure_type ).
            t291 = t294.
          ENDIF.
          IF t291 = abap_true.
            DATA t296 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t296.
            DATA t297 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t297.
            DATA t298 TYPE REF TO zcl_lnt_structure_type.
            DATA t299 TYPE REF TO zcl_lnt_structure_type.
            DATA(t300) = t277.
            t299 ?= t300.
            t298 = t299.
            DATA t301 TYPE string.
            DATA(t302) = t268.
            t301 = t302.
            DATA t303 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t303.
            DATA t304 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            DATA(t305) = t298.
            t304 = t305->indexed.
            DATA t306 TYPE string.
            DATA(t307) = t301.
            DATA(t308) = strlen( t307 ).
            t306 = t307.
            IF t306 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t306 TO UPPER CASE.
            ELSE.
              t306 = zlnt_runtime_uppe_91169605024d=>full( t306 ).
            ENDIF.
            t303 = t304->get( p0 = t306 ).
            t297 = t303.
            t296 = t297.
            DATA(t309) = VALUE abap_bool( ).
            DATA(t310) = VALUE abap_bool( ).
            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t312) = t255.
            DATA(t313) = 2.
            t311 = t312->get( p0 = t313 ).
            IF t311 IS BOUND.
              IF t311->has = abap_true.
                t310 = xsdbool( strlen( t311->value ) > 0 ).
              ENDIF.
            ENDIF.
            t309 = t310.
            IF t310 = abap_true.
              DATA t314 TYPE abap_bool.
              DATA(t315) = t296.
              t314 = xsdbool( t315 IS BOUND AND t315 IS INSTANCE OF zcl_lnt_structure_type ).
              t309 = t314.
            ENDIF.
            IF t309 = abap_true.
              DATA t316 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t316.
              DATA t317 TYPE REF TO zcl_lnt_structure_type.
              DATA t318 TYPE REF TO zcl_lnt_structure_type.
              DATA(t319) = t296.
              t318 ?= t319.
              t317 = t318.
              DATA(t320) = VALUE string( ).
              DATA(t321) = VALUE string( ).
              DATA(t322) = t255.
              IF t322->has( 3 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t322->load( ).
              CLEAR t321.
              READ TABLE t322->items INDEX 3 INTO t321.
              t320 = t321.
              DATA t323 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t323.
              DATA t324 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
              DATA(t325) = t317.
              t324 = t325->indexed.
              DATA t326 TYPE string.
              DATA(t327) = t320.
              DATA(t328) = strlen( t327 ).
              t326 = t327.
              IF t326 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t326 TO UPPER CASE.
              ELSE.
                t326 = zlnt_runtime_uppe_91169605024d=>full( t326 ).
              ENDIF.
              t323 = t324->get( p0 = t326 ).
              t316 = t323.
              t296 = t316.
            ENDIF.
            DATA t329 TYPE abap_bool.
            DATA(t330) = t296.
            t329 = xsdbool( t330 IS BOUND ).
            IF t329 = abap_true.
              DATA t331 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t331.
              DATA(t332) = abap_true.
              IF t332 = abap_true.
                DATA t333 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t334 TYPE REF TO zcl_lnt_abstract_token.
                DATA t335 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t336 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t337) = t271.
                t336 = t337.
                t335 = t336.
                DATA t338 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t339) = t335.
                t338 = t339->token.
                t334 = t338.
                DATA t340 TYPE string.
                DATA t341 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t342 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t343) = t271.
                t342 = t343.
                t341 = t342.
                DATA t344 TYPE string.
                DATA(t345) = t341.
                t344 = t345->filename.
                t340 = t344.
                DATA t346 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t347) = t296.
                t346 = t347.
                DATA t348 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t348.
                DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t349.
                t333 = NEW zcl_lnt_typed_identifier( i_token = t334 i_filename = t340 i_type_9913 = t346 i_meta = t348 i_value = t349 ).
                t331 = t333.
              ELSE.
                DATA t350 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t350.
                t331 = t350.
              ENDIF.
              result = t331.
              RETURN.
            ENDIF.
          ENDIF.
        ELSE.
          DATA t351 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t352 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t353 TYPE REF TO zif_lnt_type_definitions.
          DATA t354 TYPE REF TO zif_lnt_interface_definition.
          DATA(t355) = t75.
          t354 = t355.
          t353 = t354->get_type_definitions( ).
          DATA(t356) = t72.
          t352 = t353->get_by_name( i_name = t356 ).
          t351 = t352.
          DATA t357 TYPE abap_bool.
          DATA(t358) = t351.
          t357 = xsdbool( t358 IS BOUND ).
          IF t357 = abap_true.
            DATA t359 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t359.
            DATA(t360) = abap_true.
            IF t360 = abap_true.
              DATA t361 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t362) = t351.
              t361 = t362.
              t359 = t361.
            ELSE.
              DATA t363 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t363.
              t359 = t363.
            ENDIF.
            result = t359.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t364) = VALUE abap_bool( ).
      DATA(t365) = VALUE i( ).
      DATA t366 TYPE string.
      DATA(t367) = t1.
      t366 = t367->value.
      DATA(t368) = |-|.
      DATA(t369) = strlen( t366 ).
      IF t368 IS INITIAL.
        t365 = 0.
      ELSE.
        FIND t368 IN t366 MATCH OFFSET t365.
        IF sy-subrc <> 0.
          t365 = -1.
        ENDIF.
      ENDIF.
      DATA(t370) = 0.
      t364 = xsdbool( t365 >= t370 ).
      IF t364 = abap_true.
        DATA t371 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t371.
        DATA t372 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t373 TYPE string.
        DATA(t374) = t1.
        t373 = t374->value.
        DATA(t375) = |-|.
        DATA(t376) = strlen( t373 ).
        DATA t377 TYPE i.
        DATA(t378) = VALUE i( ).
        DATA(t379) = VALUE i( ).
        DATA t380 TYPE i.
        DATA(t381) = VALUE string( ).
        CREATE OBJECT t372.
        t380 = strlen( t375 ).
        t377 = 0.
        IF t380 = 0.
          WHILE t377 < t376.
            t381 = t373+t377(1).
            APPEND t381 TO t372->items.
            t377 = t377 + 1.
          ENDWHILE.
        ELSE.
          WHILE t377 <= t376.
            FIND FIRST OCCURRENCE OF t375 IN SECTION OFFSET t377 OF t373 MATCH OFFSET t378.
            IF sy-subrc = 0.
              t379 = t378 - t377.
            ELSE.
              t378 = -1.
              t379 = t376 - t377.
            ENDIF.
            CLEAR t381.
            IF t379 > 0.
              t381 = t373+t377(t379).
            ENDIF.
            APPEND t381 TO t372->items.
            IF t378 < 0.
              EXIT.
            ENDIF.
            t377 = t378 + t380.
          ENDWHILE.
        ENDIF.
        t371 = t372.
        DATA(t382) = VALUE string( ).
        DATA(t383) = VALUE string( ).
        DATA(t384) = t371.
        IF t384->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t384->load( ).
        CLEAR t383.
        READ TABLE t384->items INDEX 1 INTO t383.
        t382 = t383.
        DATA(t385) = VALUE string( ).
        DATA(t386) = VALUE string( ).
        DATA(t387) = t371.
        IF t387->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t387->load( ).
        CLEAR t386.
        READ TABLE t387->items INDEX 2 INTO t386.
        t385 = t386.
        DATA t388 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t388.
        DATA t389 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t389.
        DATA t390 TYPE REF TO zcl_lnt_current_scope.
        DATA t391 TYPE REF TO zcl_lnt_current_scope.
        DATA(t392) = me->input_2fd0.
        t391 = t392->scope.
        t390 = t391.
        DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t393.
        DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t394.
        DATA(t395) = abap_true.
        IF t395 = abap_true.
          DATA(t396) = t382.
          DATA(t397) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t397->has = abap_true.
          t397->value = t396.
          t394 = t397.
        ELSE.
          DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t398.
          t394 = t398.
        ENDIF.
        t393 = t394.
        DATA t399 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t399.
        DATA(t400) = VALUE abap_bool( ).
        DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t402) = t393.
        t401 = t402.
        DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t404.
        t403 = t404.
        DATA(t405) = VALUE abap_bool( ).
        DATA(t406) = t401.
        IF t406 IS INITIAL.
          t405 = abap_true.
        ELSEIF t406->has = abap_false.
          t405 = abap_true.
        ENDIF.
        t400 = t405.
        IF t400 = abap_true.
          DATA t407 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t407.
          t399 = t407.
        ELSE.
          DATA t408 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t408.
          DATA t409 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t410 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t411) = t390.
          t410 = t411->current.
          t409 = t410.
          DATA t412 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t412.
          DATA(t413) = VALUE abap_bool( ).
          DATA(t414) = t409.
          IF t414 IS INITIAL.
            t413 = abap_true.
          ENDIF.
          IF t413 = abap_true.
            DATA t415 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t415.
            t412 = t415.
          ELSE.
            DATA t416 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t417 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t418) = t409.
            t417 = t418.
            DATA t419 TYPE string.
            DATA(t420) = t393.
            t419 = t420->value.
            t416 = t417->find_type( i_name = t419 ).
            t412 = t416.
          ENDIF.
          t408 = t412.
          t399 = t408.
        ENDIF.
        t389 = t399.
        t388 = t389.
        DATA t421 TYPE abap_bool.
        DATA(t422) = t388.
        t421 = xsdbool( t422 IS BOUND ).
        IF t421 = abap_true.
          DATA t423 TYPE REF TO zcl_lnt_abstract_type.
          DATA t424 TYPE REF TO zcl_lnt_abstract_type.
          DATA t425 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t426 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t427) = t388.
          t426 = t427.
          t425 = t426.
          DATA t428 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t429) = t425.
          t428 = t429->type_cba0.
          t424 = t428.
          t423 = t424.
          DATA t430 TYPE abap_bool.
          DATA(t431) = t423.
          t430 = xsdbool( t431 IS BOUND AND t431 IS INSTANCE OF zcl_lnt_structure_type ).
          IF t430 = abap_true.
            DATA t432 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t432.
            DATA t433 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t433.
            DATA t434 TYPE REF TO zcl_lnt_structure_type.
            DATA t435 TYPE REF TO zcl_lnt_structure_type.
            DATA(t436) = t423.
            t435 ?= t436.
            t434 = t435.
            DATA t437 TYPE string.
            DATA(t438) = t385.
            t437 = t438.
            DATA t439 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t439.
            DATA t440 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            DATA(t441) = t434.
            t440 = t441->indexed.
            DATA t442 TYPE string.
            DATA(t443) = t437.
            DATA(t444) = strlen( t443 ).
            t442 = t443.
            IF t442 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t442 TO UPPER CASE.
            ELSE.
              t442 = zlnt_runtime_uppe_91169605024d=>full( t442 ).
            ENDIF.
            t439 = t440->get( p0 = t442 ).
            t433 = t439.
            t432 = t433.
            DATA(t445) = VALUE abap_bool( ).
            DATA(t446) = VALUE abap_bool( ).
            DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t448) = t371.
            DATA(t449) = 2.
            t447 = t448->get( p0 = t449 ).
            IF t447 IS BOUND.
              IF t447->has = abap_true.
                t446 = xsdbool( strlen( t447->value ) > 0 ).
              ENDIF.
            ENDIF.
            t445 = t446.
            IF t446 = abap_true.
              DATA t450 TYPE abap_bool.
              DATA(t451) = t432.
              t450 = xsdbool( t451 IS BOUND AND t451 IS INSTANCE OF zcl_lnt_structure_type ).
              t445 = t450.
            ENDIF.
            IF t445 = abap_true.
              DATA t452 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t452.
              DATA t453 TYPE REF TO zcl_lnt_structure_type.
              DATA t454 TYPE REF TO zcl_lnt_structure_type.
              DATA(t455) = t432.
              t454 ?= t455.
              t453 = t454.
              DATA(t456) = VALUE string( ).
              DATA(t457) = VALUE string( ).
              DATA(t458) = t371.
              IF t458->has( 3 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t458->load( ).
              CLEAR t457.
              READ TABLE t458->items INDEX 3 INTO t457.
              t456 = t457.
              DATA t459 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t459.
              DATA t460 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
              DATA(t461) = t453.
              t460 = t461->indexed.
              DATA t462 TYPE string.
              DATA(t463) = t456.
              DATA(t464) = strlen( t463 ).
              t462 = t463.
              IF t462 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t462 TO UPPER CASE.
              ELSE.
                t462 = zlnt_runtime_uppe_91169605024d=>full( t462 ).
              ENDIF.
              t459 = t460->get( p0 = t462 ).
              t452 = t459.
              t432 = t452.
            ENDIF.
            DATA t465 TYPE abap_bool.
            DATA(t466) = t432.
            t465 = xsdbool( t466 IS BOUND ).
            IF t465 = abap_true.
              DATA t467 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t467.
              DATA(t468) = abap_true.
              IF t468 = abap_true.
                DATA t469 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t470 TYPE REF TO zcl_lnt_abstract_token.
                DATA t471 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t472 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t473) = t388.
                t472 = t473.
                t471 = t472.
                DATA t474 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t475) = t471.
                t474 = t475->token.
                t470 = t474.
                DATA t476 TYPE string.
                DATA t477 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t478 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t479) = t388.
                t478 = t479.
                t477 = t478.
                DATA t480 TYPE string.
                DATA(t481) = t477.
                t480 = t481->filename.
                t476 = t480.
                DATA t482 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t483) = t432.
                t482 = t483.
                DATA t484 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t484.
                DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t485.
                t469 = NEW zcl_lnt_typed_identifier( i_token = t470 i_filename = t476 i_type_9913 = t482 i_meta = t484 i_value = t485 ).
                t467 = t469.
              ELSE.
                DATA t486 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t486.
                t467 = t486.
              ENDIF.
              result = t467.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t487 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t488 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t489 TYPE REF TO zcl_lnt_ddic.
    DATA t490 TYPE REF TO zcl_lnt_current_scope.
    DATA t491 TYPE REF TO zcl_lnt_current_scope.
    DATA(t492) = me->input_2fd0.
    t491 = t492->scope.
    t490 = t491.
    DATA t493 TYPE REF TO zcl_lnt_ddic.
    DATA t494 TYPE REF TO zif_lnt_registry.
    DATA(t495) = t490.
    t494 = t495->reg.
    t493 = NEW zcl_lnt_ddic( i_reg_f149 = t494 ).
    t489 = t493.
    DATA t496 TYPE string.
    DATA(t497) = t1.
    t496 = t497->value.
    t488 = t489->lookup_no_void( i_name = t496 ).
    t487 = t488.
    DATA t498 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t498.
    DATA t499 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t499.
    DATA t500 TYPE REF TO zif_lnt_object.
    CLEAR t500.
    DATA t501 TYPE REF TO zif_lnt_object.
    CLEAR t501.
    DATA t502 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t503) = t487.
    t502 = t503.
    DATA t504 TYPE REF TO zif_lnt_object.
    CLEAR t504.
    DATA(t505) = VALUE abap_bool( ).
    DATA(t506) = t502.
    IF t506 IS INITIAL.
      t505 = abap_true.
    ENDIF.
    IF t505 = abap_true.
      DATA t507 TYPE REF TO zif_lnt_object.
      CLEAR t507.
      t504 = t507.
    ELSE.
      DATA t508 TYPE REF TO zif_lnt_object.
      DATA t509 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t510) = t502.
      t509 = t510.
      t508 = t509->zlnt_view_read_sr_2de0200e6505( ).
      t504 = t508.
    ENDIF.
    t501 = t504.
    t500 = t501.
    DATA t511 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t511.
    DATA(t512) = VALUE abap_bool( ).
    DATA(t513) = t500.
    IF t513 IS INITIAL.
      t512 = abap_true.
    ENDIF.
    IF t512 = abap_true.
      DATA t514 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t514.
      t511 = t514.
    ELSE.
      DATA t515 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t516 TYPE REF TO zif_lnt_object.
      DATA(t517) = t500.
      t516 = t517.
      t515 = t516->get_identifier( ).
      t511 = t515.
    ENDIF.
    t499 = t511.
    t498 = t499.
    DATA t518 TYPE abap_bool.
    DATA t519 TYPE abap_bool.
    DATA(t520) = t498.
    t519 = xsdbool( t520 IS BOUND ).
    t518 = t519.
    IF t519 = abap_true.
      DATA(t521) = VALUE abap_bool( ).
      DATA t522 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t522.
      DATA t523 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t524) = t487.
      t523 = t524.
      DATA t525 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t525.
      DATA(t526) = VALUE abap_bool( ).
      DATA(t527) = t523.
      IF t527 IS INITIAL.
        t526 = abap_true.
      ENDIF.
      IF t526 = abap_true.
        DATA t528 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t528.
        t525 = t528.
      ELSE.
        DATA t529 TYPE REF TO zcl_lnt_abstract_type.
        DATA t530 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t531) = t523.
        t530 = t531.
        t529 = t530->zlnt_view_read_sr_9be58e2d4893( ).
        t525 = t529.
      ENDIF.
      t522 = t525.
      t521 = xsdbool( t522 IS BOUND ).
      t518 = t521.
    ENDIF.
    IF t518 = abap_true.
      DATA t532 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t532.
      DATA(t533) = abap_true.
      IF t533 = abap_true.
        DATA t534 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t535 TYPE REF TO zcl_lnt_abstract_token.
        DATA t536 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t537 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t538) = t498.
        t537 = t538.
        t536 = t537.
        DATA t539 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t540) = t536.
        t539 = t540->token.
        t535 = t539.
        DATA t541 TYPE string.
        DATA t542 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t543 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t544) = t498.
        t543 = t544.
        t542 = t543.
        DATA t545 TYPE string.
        DATA(t546) = t542.
        t545 = t546->filename.
        t541 = t545.
        DATA t547 TYPE REF TO zcl_lnt_abstract_type.
        DATA t548 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t549) = t487.
        t548 = t549.
        t547 = t548->zlnt_view_read_sr_9be58e2d4893( ).
        DATA t550 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t550.
        DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t551.
        t534 = NEW zcl_lnt_typed_identifier( i_token = t535 i_filename = t541 i_type_9913 = t547 i_meta = t550 i_value = t551 ).
        t532 = t534.
      ELSE.
        DATA t552 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t552.
        t532 = t552.
      ENDIF.
      result = t532.
      RETURN.
    ENDIF.
    DATA t553 TYPE REF TO zcl_lnt_abstract_type.
    DATA t554 TYPE REF TO zcl_lnt_abstract_type.
    DATA t555 TYPE REF TO zcl_lnt_ddic.
    DATA t556 TYPE REF TO zcl_lnt_current_scope.
    DATA t557 TYPE REF TO zcl_lnt_current_scope.
    DATA(t558) = me->input_2fd0.
    t557 = t558->scope.
    t556 = t557.
    DATA t559 TYPE REF TO zcl_lnt_ddic.
    DATA t560 TYPE REF TO zif_lnt_registry.
    DATA(t561) = t556.
    t560 = t561->reg.
    t559 = NEW zcl_lnt_ddic( i_reg_f149 = t560 ).
    t555 = t559.
    DATA t562 TYPE string.
    DATA(t563) = t1.
    t562 = t563->value.
    DATA t564 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t564.
    DATA t565 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t565.
    DATA t566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t566.
    t554 = t555->lookup_builtin_type( i_name = t562 i_length = t564 i_decimals_2eed = t565 i_qualified_name = t566 ).
    t553 = t554.
    DATA t567 TYPE abap_bool.
    DATA(t568) = t553.
    t567 = xsdbool( t568 IS BOUND ).
    IF t567 = abap_true.
      DATA t569 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t569.
      DATA(t570) = abap_true.
      IF t570 = abap_true.
        DATA t571 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t572 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t573 TYPE REF TO zcl_lnt_position.
        DATA(t574) = CONV f( 1 ).
        DATA(t575) = CONV f( 1 ).
        DATA(t576) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t576->has = abap_true.
        t576->value = t575.
        t573 = NEW zcl_lnt_position( i_row = t574 i_col = t576 ).
        DATA t577 TYPE string.
        DATA(t578) = t1.
        t577 = t578->value.
        t572 = NEW zcl_lnt_lx_identifier( i_start = t573 i_str = t577 ).
        DATA(t579) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t580 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t581) = t553.
        t580 = t581.
        DATA t582 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t582.
        DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t583.
        t571 = NEW zcl_lnt_typed_identifier( i_token = t572 i_filename = t579 i_type_9913 = t580 i_meta = t582 i_value = t583 ).
        t569 = t571.
      ELSE.
        DATA t584 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t584.
        t569 = t584.
      ENDIF.
      result = t569.
      RETURN.
    ENDIF.
    DATA t585 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t586 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t587 TYPE REF TO zcl_lnt_current_scope.
    DATA(t588) = me->input_2fd0.
    t587 = t588->scope.
    DATA t589 TYPE string.
    DATA(t590) = t1.
    t589 = t590->value.
    t586 = t587->find_type_pool_type( i_name = t589 ).
    t585 = t586.
    DATA t591 TYPE abap_bool.
    DATA(t592) = t585.
    t591 = xsdbool( t592 IS BOUND ).
    IF t591 = abap_true.
      DATA t593 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t593.
      DATA(t594) = abap_true.
      IF t594 = abap_true.
        DATA t595 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t596) = t585.
        t595 = t596.
        t593 = t595.
      ELSE.
        DATA t597 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t597.
        t593 = t597.
      ENDIF.
      result = t593.
      RETURN.
    ENDIF.
    DATA t598 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t598.
    result = t598.

  ENDMETHOD.

  METHOD resolve_like_name.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    DATA(t1) = i_node.
    DATA(t2) = i_header_logic.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t2.
    IF t4 IS INITIAL.
      t3 = abap_true.
    ELSEIF t4->has = abap_false.
      t3 = abap_true.
    ENDIF.
    IF t3 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA(t7) = abap_true.
        DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t8->has = abap_true.
        t8->value = t7.
        t5 = t8.
      ELSE.
        DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t9.
        t5 = t9.
      ENDIF.
      t2 = t5.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zif_lnt_union_bb14dc41.
    CLEAR t11.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_union_bb14dc41.
    CLEAR t20.
    DATA(t21) = t1.
    t20 = t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    t19 = t20->find_first_expression( i_type_9913 = t22 ).
    t18 = t19.
    DATA(t23) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA(t25) = t18.
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
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      DATA t31 TYPE REF TO zif_lnt_union_bb14dc41.
      CLEAR t31.
      DATA(t32) = t1.
      t31 = t32.
      DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
      t30 = t31->find_first_expression( i_type_9913 = t33 ).
      t18 = t30.
    ENDIF.
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t35.
    DATA(t36) = t18.
    t35 = t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    t37 = t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = t35.
    IF t40 IS INITIAL.
      t39 = abap_true.
    ENDIF.
    t34 = t39.
    IF t34 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t41.
      DATA t42 TYPE REF TO zif_lnt_union_bb14dc41.
      CLEAR t42.
      DATA(t43) = t1.
      t42 = t43.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
      t41 = t42->find_first_expression( i_type_9913 = t44 ).
      t18 = t41.
    ENDIF.
    DATA(t45) = VALUE abap_bool( ).
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t46.
    DATA(t47) = t18.
    t46 = t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    t48 = t49.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = t46.
    IF t51 IS INITIAL.
      t50 = abap_true.
    ENDIF.
    t45 = t50.
    IF t45 = abap_true.
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t52.
      DATA t53 TYPE REF TO zif_lnt_union_bb14dc41.
      CLEAR t53.
      DATA(t54) = t1.
      t53 = t54.
      DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
      t52 = t53->find_first_expression( i_type_9913 = t55 ).
      t18 = t52.
    ENDIF.
    DATA(t56) = VALUE abap_bool( ).
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t57.
    DATA(t58) = t18.
    t57 = t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    t59 = t60.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = t57.
    IF t62 IS INITIAL.
      t61 = abap_true.
    ENDIF.
    t56 = t61.
    IF t56 = abap_true.
      DATA t63 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t63.
      DATA t64 TYPE REF TO zif_lnt_union_bb14dc41.
      CLEAR t64.
      DATA(t65) = t1.
      t64 = t65.
      DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
      t63 = t64->find_first_expression( i_type_9913 = t66 ).
      t18 = t63.
    ENDIF.
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t68.
    DATA(t69) = t18.
    t68 = t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    t70 = t71.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = t68.
    IF t73 IS INITIAL.
      t72 = abap_true.
    ENDIF.
    t67 = t72.
    IF t67 = abap_true.
      DATA t74 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t75.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      DATA(t77) = abap_true.
      IF t77 = abap_true.
        DATA(t78) = |resolveLikeName, chain undefined|.
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = t78.
        t76 = t79.
      ELSE.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        t76 = t80.
      ENDIF.
      t75 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t76 ).
      t74 = NEW #( ).
      t74->payload = t75.
      CLEAR t74->source_value.
      IF t75 IS BOUND.
        DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t81.
        DATA t82 TYPE REF TO object.
        CLEAR t82.
        CLEAR t81.
        t82 = t75.
        TRY.
            t74->source_value ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74->source_value IS NOT BOUND.
          TRY.
              t81 ?= t75.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t81 IS BOUND.
            t74->source_value = t81->source( ).
          ENDIF.
          IF t74->source_value IS NOT BOUND.
            CREATE OBJECT t74->source_value.
            t74->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t74->source_value->oval = t75.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t74.
    ENDIF.
    DATA(t83) = VALUE string( ).
    DATA(t84) = VALUE string( ).
    DATA t85 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t85.
    DATA(t86) = t18.
    t85 = t86.
    t84 = t85->concat_tokens( ).
    t83 = t84.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t90.
    CREATE OBJECT t90.
    t89 = t90.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA(t93) = t89.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t95.
    DATA t96 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t96.
    DATA t97 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t97.
    DATA(t98) = t18.
    t97 = t98.
    t96 = t97.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA(t100) = t96.
    t99 = t100->children.
    t95 = t99.
    t94 ?= t95.
    t92 = t93->concat( p0 = t94 ).
    t91 = t92.
    DATA(t101) = t91.
    t88 = t101.
    t87 = t88.
    DATA(t102) = VALUE abap_bool( ).
    DATA(t103) = VALUE i( ).
    DATA(t104) = t87.
    t104->load( ).
    t103 = lines( t104->items ).
    DATA(t105) = 0.
    t102 = xsdbool( t103 = t105 ).
    IF t102 = abap_true.
      DATA t106 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t106.
      DATA(t107) = VALUE string( ).
      DATA(t108) = VALUE string( ).
      DATA(t109) = |Type error, could not resolve "|.
      DATA(t110) = t83.
      DATA(t111) = strlen( t109 ).
      t108 = |{ t109 }{ t110 }|.
      DATA(t112) = |", resolveLikeName1|.
      DATA(t113) = strlen( t108 ).
      t107 = |{ t108 }{ t112 }|.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t114.
      t106 = NEW zcl_lnt_unknown_type( i_error = t107 i_qualified_name = t114 ).
      result = t106.
      RETURN.
    ENDIF.
    DATA t115 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t115.
    DATA t116 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t116.
    t115 = t116.
    DATA(t117) = VALUE abap_bool( ).
    DATA(t118) = VALUE abap_bool( ).
    DATA t119 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t119.
    DATA(t120) = t87.
    DATA t121 TYPE REF TO object.
    CLEAR t121.
    t120->load( ).
    CLEAR t121.
    READ TABLE t120->items INDEX 2 INTO t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    CLEAR t119.
    IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t122 ?= t121.
      DATA t123 TYPE REF TO object.
      CLEAR t123.
      t123 = t122->as_ref( ).
      t119 ?= t123.
    ELSE.
      t119 ?= t121.
    ENDIF.
    t118 = xsdbool( t119 IS BOUND ).
    t117 = t118.
    IF t118 = abap_true.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = VALUE abap_bool( ).
      DATA(t126) = VALUE string( ).
      DATA t127 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t127.
      DATA t128 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t128.
      DATA t129 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t129.
      DATA(t130) = t87.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      t130->load( ).
      CLEAR t131.
      READ TABLE t130->items INDEX 2 INTO t131.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      CLEAR t129.
      IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t132 ?= t131.
        DATA t133 TYPE REF TO object.
        CLEAR t133.
        t133 = t132->as_ref( ).
        t129 ?= t133.
      ELSE.
        t129 ?= t131.
      ENDIF.
      t128 = t129->get_first_token( ).
      t127 = t128.
      DATA(t134) = VALUE string( ).
      DATA(t135) = t127.
      t134 = t135->str.
      t126 = t134.
      DATA(t136) = |=>|.
      t125 = xsdbool( t126 = t136 ).
      t124 = t125.
      IF t125 = abap_false.
        DATA(t137) = VALUE abap_bool( ).
        DATA(t138) = VALUE string( ).
        DATA t139 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t139.
        DATA t140 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t140.
        DATA t141 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t141.
        DATA(t142) = t87.
        DATA t143 TYPE REF TO object.
        CLEAR t143.
        t142->load( ).
        CLEAR t143.
        READ TABLE t142->items INDEX 2 INTO t143.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        CLEAR t141.
        IF t143 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t144 ?= t143.
          DATA t145 TYPE REF TO object.
          CLEAR t145.
          t145 = t144->as_ref( ).
          t141 ?= t145.
        ELSE.
          t141 ?= t143.
        ENDIF.
        t140 = t141->get_first_token( ).
        t139 = t140.
        DATA(t146) = VALUE string( ).
        DATA(t147) = t139.
        t146 = t147->str.
        t138 = t146.
        DATA(t148) = |->|.
        t137 = xsdbool( t138 = t148 ).
        t124 = t137.
      ENDIF.
      t117 = t124.
    ENDIF.
    IF t117 = abap_true.
      DATA t149 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t149.
      DATA t150 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t150.
      DATA(t151) = t18.
      t150 = t151.
      DATA(t152) = me->input_2fd0.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      DATA(t154) = abap_true.
      IF t154 = abap_true.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        DATA(t156) = |Type|.
        CLEAR t155.
        CREATE OBJECT t155.
        t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t155->sval = t156.
        t153 = t155.
      ELSE.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        t153 = t157.
      ENDIF.
      DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t158.
      t149 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t150 i_input_967e = t152 i_ref_type = t153 i_allow_generic_deference = t158 ).
      t115 = t149.
    ELSE.
      DATA(t159) = VALUE string( ).
      DATA(t160) = VALUE string( ).
      DATA t161 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t161.
      DATA t162 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t162.
      DATA t163 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t163.
      DATA t164 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t164.
      DATA(t165) = t87.
      DATA t166 TYPE REF TO object.
      CLEAR t166.
      t166 = t165->shift( ).
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      CLEAR t164.
      IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t167 ?= t166.
        DATA t168 TYPE REF TO object.
        CLEAR t168.
        t168 = t167->as_ref( ).
        t164 ?= t168.
      ELSE.
        t164 ?= t166.
      ENDIF.
      t163 = t164.
      t162 = t163->get_first_token( ).
      t161 = t162.
      DATA(t169) = VALUE string( ).
      DATA(t170) = t161.
      t169 = t170->str.
      t160 = t169.
      t159 = t160.
      DATA t171 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t171.
      DATA t172 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t172.
      DATA t173 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t173.
      DATA t174 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t174.
      DATA(t175) = me->input_2fd0.
      t174 = t175->scope.
      t173 = t174.
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t176.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t177.
      DATA(t178) = abap_true.
      IF t178 = abap_true.
        DATA(t179) = t159.
        DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t180->has = abap_true.
        t180->value = t179.
        t177 = t180.
      ELSE.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        t177 = t181.
      ENDIF.
      t176 = t177.
      DATA t182 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t182.
      DATA(t183) = VALUE abap_bool( ).
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      DATA(t185) = t176.
      t184 = t185.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t187.
      t186 = t187.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = t184.
      IF t189 IS INITIAL.
        t188 = abap_true.
      ELSEIF t189->has = abap_false.
        t188 = abap_true.
      ENDIF.
      t183 = t188.
      IF t183 = abap_true.
        DATA t190 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t190.
        t182 = t190.
      ELSE.
        DATA t191 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t191.
        DATA t192 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t192.
        DATA t193 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t193.
        DATA t194 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t194.
        DATA t195 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t195.
        DATA(t196) = t173.
        t195 = t196->current.
        t194 = t195.
        DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t197.
        DATA(t198) = VALUE abap_bool( ).
        DATA(t199) = t194.
        IF t199 IS INITIAL.
          t198 = abap_true.
        ENDIF.
        IF t198 = abap_true.
          DATA t200 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t200.
          t197 = t200.
        ELSE.
          DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t201.
          DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t202.
          DATA(t203) = t194.
          t202 = t203.
          DATA(t204) = VALUE string( ).
          DATA(t205) = t176.
          t204 = t205->value.
          t201 = t202->find_variable( i_name = t204 ).
          t197 = t201.
        ENDIF.
        t193 = t197.
        t192 = t193.
        DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t206.
        DATA(t207) = VALUE abap_bool( ).
        DATA(t208) = t192.
        t207 = xsdbool( t208 IS BOUND ).
        IF t207 = abap_true.
          DATA t209 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t209.
          DATA(t210) = abap_true.
          IF t210 = abap_true.
            DATA t211 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t211.
            DATA(t212) = t192.
            t211 = t212.
            t209 = t211.
          ELSE.
            DATA t213 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t213.
            t209 = t213.
          ENDIF.
          t206 = t209.
        ELSE.
          DATA t214 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t214.
          DATA(t215) = t173.
          DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t216.
          DATA(t217) = abap_true.
          IF t217 = abap_true.
            DATA(t218) = VALUE string( ).
            DATA(t219) = t176.
            t218 = t219->value.
            DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t220->has = abap_true.
            t220->value = t218.
            t216 = t220.
          ELSE.
            DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t221.
            t216 = t221.
          ENDIF.
          t214 = t215->find_type_pool_constant( i_name = t216 ).
          t206 = t214.
        ENDIF.
        t191 = t206.
        t182 = t191.
      ENDIF.
      t172 = t182.
      t171 = t172.
      DATA t222 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t222.
      DATA t223 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t223.
      DATA t224 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t224.
      DATA t225 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t225.
      DATA(t226) = me->input_2fd0.
      t225 = t226->scope.
      t224 = t225.
      DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t227.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      DATA(t229) = abap_true.
      IF t229 = abap_true.
        DATA(t230) = t83.
        DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t231->has = abap_true.
        t231->value = t230.
        t228 = t231.
      ELSE.
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t232.
        t228 = t232.
      ENDIF.
      t227 = t228.
      DATA t233 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t233.
      DATA(t234) = VALUE abap_bool( ).
      DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t235.
      DATA(t236) = t227.
      t235 = t236.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t237.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      t237 = t238.
      DATA(t239) = VALUE abap_bool( ).
      DATA(t240) = t235.
      IF t240 IS INITIAL.
        t239 = abap_true.
      ELSEIF t240->has = abap_false.
        t239 = abap_true.
      ENDIF.
      t234 = t239.
      IF t234 = abap_true.
        DATA t241 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t241.
        t233 = t241.
      ELSE.
        DATA t242 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t242.
        DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t243.
        DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t244.
        DATA t245 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t245.
        DATA t246 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t246.
        DATA(t247) = t224.
        t246 = t247->current.
        t245 = t246.
        DATA t248 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t248.
        DATA(t249) = VALUE abap_bool( ).
        DATA(t250) = t245.
        IF t250 IS INITIAL.
          t249 = abap_true.
        ENDIF.
        IF t249 = abap_true.
          DATA t251 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t251.
          t248 = t251.
        ELSE.
          DATA t252 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t252.
          DATA t253 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t253.
          DATA(t254) = t245.
          t253 = t254.
          DATA(t255) = VALUE string( ).
          DATA(t256) = t227.
          t255 = t256->value.
          t252 = t253->find_variable( i_name = t255 ).
          t248 = t252.
        ENDIF.
        t244 = t248.
        t243 = t244.
        DATA t257 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t257.
        DATA(t258) = VALUE abap_bool( ).
        DATA(t259) = t243.
        t258 = xsdbool( t259 IS BOUND ).
        IF t258 = abap_true.
          DATA t260 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t260.
          DATA(t261) = abap_true.
          IF t261 = abap_true.
            DATA t262 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t262.
            DATA(t263) = t243.
            t262 = t263.
            t260 = t262.
          ELSE.
            DATA t264 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t264.
            t260 = t264.
          ENDIF.
          t257 = t260.
        ELSE.
          DATA t265 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t265.
          DATA(t266) = t224.
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t267.
          DATA(t268) = abap_true.
          IF t268 = abap_true.
            DATA(t269) = VALUE string( ).
            DATA(t270) = t227.
            t269 = t270->value.
            DATA(t271) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t271->has = abap_true.
            t271->value = t269.
            t267 = t271.
          ELSE.
            DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t272.
            t267 = t272.
          ENDIF.
          t265 = t266->find_type_pool_constant( i_name = t267 ).
          t257 = t265.
        ENDIF.
        t242 = t257.
        t233 = t242.
      ENDIF.
      t223 = t233.
      t222 = t223.
      DATA(t273) = VALUE abap_bool( ).
      DATA(t274) = t222.
      t273 = xsdbool( t274 IS BOUND ).
      IF t273 = abap_true.
        DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t275.
        CREATE OBJECT t275.
        t87 = t275.
        DATA t276 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t276.
        DATA(t277) = abap_true.
        IF t277 = abap_true.
          DATA t278 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t278.
          DATA(t279) = t222.
          t278 = t279.
          t276 = t278.
        ELSE.
          DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t280.
          t276 = t280.
        ENDIF.
        t171 = t276.
      ENDIF.
      DATA t281 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t281.
      DATA t282 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t282.
      DATA(t283) = t171.
      t282 = t283.
      DATA t284 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t284.
      DATA(t285) = VALUE abap_bool( ).
      DATA(t286) = t282.
      IF t286 IS INITIAL.
        t285 = abap_true.
      ENDIF.
      IF t285 = abap_true.
        DATA t287 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t287.
        t284 = t287.
      ELSE.
        DATA t288 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t288.
        DATA t289 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t289.
        DATA t290 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t290.
        DATA(t291) = t282.
        t290 = t291.
        t289 = t290.
        DATA t292 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t292.
        DATA(t293) = t289.
        t292 = t293->type_cba0.
        t288 = t292.
        t284 = t288.
      ENDIF.
      t281 = t284.
      t115 = t281.
      DATA(t294) = VALUE abap_bool( ).
      DATA t295 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t295.
      DATA(t296) = t171.
      t295 = t296.
      DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t297.
      DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t298.
      t297 = t298.
      DATA(t299) = VALUE abap_bool( ).
      DATA(t300) = t295.
      IF t300 IS INITIAL.
        t299 = abap_true.
      ENDIF.
      t294 = t299.
      IF t294 = abap_true.
        DATA t301 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t301.
        DATA t302 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t302.
        DATA t303 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t303.
        DATA(t304) = me->input_2fd0.
        t303 = t304->scope.
        t302 = t303.
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t305.
        DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t306.
        DATA(t307) = abap_true.
        IF t307 = abap_true.
          DATA(t308) = t159.
          DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t309->has = abap_true.
          t309->value = t308.
          t306 = t309.
        ELSE.
          DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t310.
          t306 = t310.
        ENDIF.
        t305 = t306.
        DATA t311 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t311.
        DATA(t312) = VALUE abap_bool( ).
        DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t313.
        DATA(t314) = t305.
        t313 = t314.
        DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t315.
        DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t316.
        t315 = t316.
        DATA(t317) = VALUE abap_bool( ).
        DATA(t318) = t313.
        IF t318 IS INITIAL.
          t317 = abap_true.
        ELSEIF t318->has = abap_false.
          t317 = abap_true.
        ENDIF.
        t312 = t317.
        IF t312 = abap_true.
          DATA t319 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t319.
          t311 = t319.
        ELSE.
          DATA t320 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t320.
          DATA t321 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t321.
          DATA t322 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t322.
          DATA(t323) = t302.
          t322 = t323->current.
          t321 = t322.
          DATA t324 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t324.
          DATA(t325) = VALUE abap_bool( ).
          DATA(t326) = t321.
          IF t326 IS INITIAL.
            t325 = abap_true.
          ENDIF.
          IF t325 = abap_true.
            DATA t327 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t327.
            t324 = t327.
          ELSE.
            DATA t328 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t328.
            DATA t329 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t329.
            DATA(t330) = t321.
            t329 = t330.
            DATA(t331) = VALUE string( ).
            DATA(t332) = t305.
            t331 = t332->value.
            t328 = t329->find_extra_like_type( i_name = t331 ).
            t324 = t328.
          ENDIF.
          t320 = t324.
          t311 = t320.
        ENDIF.
        t301 = t311.
        t171 = t301.
        DATA t333 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t333.
        DATA t334 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t334.
        DATA(t335) = t171.
        t334 = t335.
        DATA t336 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t336.
        DATA(t337) = VALUE abap_bool( ).
        DATA(t338) = t334.
        IF t338 IS INITIAL.
          t337 = abap_true.
        ENDIF.
        IF t337 = abap_true.
          DATA t339 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t339.
          t336 = t339.
        ELSE.
          DATA t340 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t340.
          DATA t341 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t341.
          DATA t342 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t342.
          DATA(t343) = t334.
          t342 = t343.
          t341 = t342.
          DATA t344 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t344.
          DATA(t345) = t341.
          t344 = t345->type_cba0.
          t340 = t344.
          t336 = t340.
        ENDIF.
        t333 = t336.
        t115 = t333.
      ENDIF.
      DATA(t346) = VALUE abap_bool( ).
      DATA(t347) = t171.
      t346 = xsdbool( t347 IS BOUND ).
      IF t346 = abap_true.
        DATA t348 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t348.
        DATA(t349) = me->input_2fd0.
        t348 = t349->scope.
        DATA t350 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t350.
        DATA t351 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t351.
        DATA t352 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t352.
        DATA(t353) = t18.
        t352 = t353.
        t351 = t352.
        DATA t354 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t354.
        DATA(t355) = VALUE abap_bool( ).
        DATA(t356) = t351.
        IF t356 IS INITIAL.
          t355 = abap_true.
        ENDIF.
        IF t355 = abap_true.
          DATA t357 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t357.
          t354 = t357.
        ELSE.
          DATA t358 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t358.
          DATA(t359) = t351.
          t358 = t359->get_first_token( ).
          t354 = t358.
        ENDIF.
        t350 = t354.
        DATA t360 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t360.
        DATA(t361) = t171.
        t360 = t361.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        DATA(t363) = |Type|.
        CLEAR t362.
        CREATE OBJECT t362.
        t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t362->sval = t363.
        DATA(t364) = VALUE string( ).
        DATA(t365) = me->input_2fd0.
        t364 = t365->filename.
        DATA t366 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t366.
        t348->add_reference( i_usage = t350 i_referencing = t360 i_type_9913 = t362 i_filename = t364 i_extra = t366 ).
      ENDIF.
      DATA(t367) = VALUE abap_bool( ).
      DATA t368 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t368.
      DATA(t369) = t115.
      t368 = t369.
      DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t370.
      DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t371.
      t370 = t371.
      DATA(t372) = VALUE abap_bool( ).
      DATA(t373) = t368.
      IF t373 IS INITIAL.
        t372 = abap_true.
      ENDIF.
      t367 = t372.
      IF t367 = abap_true.
        DATA t374 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t374.
        DATA t375 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t375.
        DATA t376 TYPE REF TO zcl_lnt_ddic.
        CLEAR t376.
        DATA t377 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t377.
        DATA t378 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t378.
        DATA(t379) = me->input_2fd0.
        t378 = t379->scope.
        t377 = t378.
        DATA t380 TYPE REF TO zcl_lnt_ddic.
        CLEAR t380.
        DATA t381 TYPE REF TO zif_lnt_registry.
        CLEAR t381.
        DATA(t382) = t377.
        t381 = t382->reg.
        t380 = NEW zcl_lnt_ddic( i_reg_f149 = t381 ).
        t376 = t380.
        DATA(t383) = t159.
        t375 = t376->lookup_no_void( i_name = t383 ).
        t374 = t375.
        DATA(t384) = VALUE abap_bool( ).
        DATA t385 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t385.
        DATA(t386) = t374.
        t385 = t386.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t387.
        DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t388.
        t387 = t388.
        DATA(t389) = VALUE abap_bool( ).
        DATA(t390) = VALUE abap_bool( ).
        DATA(t391) = t385.
        IF t391 IS INITIAL.
          t390 = abap_true.
        ENDIF.
        t389 = xsdbool( t390 = abap_false ).
        t384 = t389.
        IF t384 = abap_true.
          DATA t392 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t392.
          DATA t393 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t393.
          DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t394.
          DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t395.
          DATA(t396) = abap_true.
          IF t396 = abap_true.
            DATA(t397) = VALUE string( ).
            DATA(t398) = me->input_2fd0.
            t397 = t398->filename.
            DATA(t399) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t399->has = abap_true.
            t399->value = t397.
            t395 = t399.
          ELSE.
            DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t400.
            t395 = t400.
          ENDIF.
          t394 = t395.
          DATA t401 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t401.
          DATA t402 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t402.
          DATA(t403) = abap_true.
          IF t403 = abap_true.
            DATA t404 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t404.
            DATA t405 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t405.
            DATA(t406) = t18.
            t405 = t406.
            t404 = t405->get_first_token( ).
            t402 = t404.
          ELSE.
            DATA t407 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t407.
            t402 = t407.
          ENDIF.
          t401 = t402.
          DATA t408 TYPE REF TO zif_lnt_object.
          CLEAR t408.
          DATA t409 TYPE REF TO zif_lnt_object.
          CLEAR t409.
          DATA t410 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t410.
          DATA(t411) = t374.
          t410 = t411.
          t409 = t410->zlnt_view_read_sr_2de0200e6505( ).
          t408 = t409.
          t393 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t408 i_token = t401 i_filename = t394 ).
          CREATE OBJECT t393->zlnt_view_ownkeys_b0e8086400eb.
          t393->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t412.
          IF t393->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t393->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t412 ).
          ENDIF.
          DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t413.
          IF t393->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t393->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t413 ).
          ENDIF.
          DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t414.
          IF t393->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t393->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t414 ).
          ENDIF.
          CREATE OBJECT t393->zlnt_json_ownkeys_70e5fd461788.
          t393->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t415) = |filename|.
          DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t416.
          IF t393->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t393->zlnt_json_ownkeys_70e5fd461788->put( p0 = t415 p1 = t416 ).
          ENDIF.
          DATA(t417) = |token|.
          DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t418.
          IF t393->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t393->zlnt_json_ownkeys_70e5fd461788->put( p0 = t417 p1 = t418 ).
          ENDIF.
          DATA(t419) = |object|.
          DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t420.
          IF t393->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t393->zlnt_json_ownkeys_70e5fd461788->put( p0 = t419 p1 = t420 ).
          ENDIF.
          t392 = t393.
          DATA t421 TYPE REF TO zif_lnt_ddic_references.
          CLEAR t421.
          DATA t422 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t422.
          DATA t423 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t423.
          DATA(t424) = me->input_2fd0.
          t423 = t424->scope.
          t422 = t423.
          DATA t425 TYPE REF TO zif_lnt_ddic_references.
          CLEAR t425.
          DATA t426 TYPE REF TO zif_lnt_registry.
          CLEAR t426.
          DATA(t427) = t422.
          t426 = t427->reg.
          t425 = t426->get_ddic_references( ).
          t421 = t425.
          DATA t428 TYPE REF TO zif_lnt_object.
          CLEAR t428.
          DATA t429 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t429.
          DATA t430 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t430.
          DATA(t431) = me->input_2fd0.
          t430 = t431->scope.
          t429 = t430.
          DATA t432 TYPE REF TO zif_lnt_object.
          CLEAR t432.
          DATA(t433) = t429.
          t432 = t433->parent_obj.
          t428 = t432.
          DATA t434 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t434.
          DATA(t435) = abap_true.
          IF t435 = abap_true.
            DATA(t436) = t392.
            t434 = t436.
          ELSE.
            DATA t437 TYPE REF TO zcl_lnt_iobject_and_token.
            CLEAR t437.
            t434 = t437.
          ENDIF.
          t421->add_using( i_obj_1ed0 = t428 i_using = t434 ).
        ENDIF.
        DATA t438 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t438.
        DATA t439 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t439.
        DATA(t440) = t374.
        t439 = t440.
        DATA t441 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t441.
        DATA(t442) = VALUE abap_bool( ).
        DATA(t443) = t439.
        IF t443 IS INITIAL.
          t442 = abap_true.
        ENDIF.
        IF t442 = abap_true.
          DATA t444 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t444.
          t441 = t444.
        ELSE.
          DATA t445 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t445.
          DATA t446 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t446.
          DATA(t447) = t439.
          t446 = t447.
          t445 = t446->zlnt_view_read_sr_9be58e2d4893( ).
          t441 = t445.
        ENDIF.
        t438 = t441.
        t115 = t438.
      ENDIF.
      DATA(t448) = VALUE abap_bool( ).
      DATA(t449) = VALUE abap_bool( ).
      DATA(t450) = VALUE abap_bool( ).
      DATA t451 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t451.
      DATA(t452) = t115.
      t451 = t452.
      DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t453.
      DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t454.
      t453 = t454.
      DATA(t455) = VALUE abap_bool( ).
      DATA(t456) = t451.
      IF t456 IS INITIAL.
        t455 = abap_true.
      ENDIF.
      t450 = t455.
      t449 = t450.
      IF t450 = abap_true.
        DATA(t457) = VALUE abap_bool( ).
        DATA(t458) = VALUE abap_bool( ).
        DATA t459 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t459.
        DATA(t460) = me->input_2fd0.
        t459 = t460->scope.
        t458 = t459->is_any_oo( ).
        DATA(t461) = abap_false.
        t457 = xsdbool( t458 = t461 ).
        t449 = t457.
      ENDIF.
      t448 = t449.
      IF t449 = abap_true.
        DATA(t462) = VALUE abap_bool( ).
        DATA(t463) = VALUE abap_bool( ).
        DATA t464 TYPE REF TO zcl_lnt_ddic.
        CLEAR t464.
        DATA t465 TYPE REF TO zcl_lnt_ddic.
        CLEAR t465.
        DATA t466 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t466.
        DATA t467 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t467.
        DATA(t468) = me->input_2fd0.
        t467 = t468->scope.
        t466 = t467.
        DATA t469 TYPE REF TO zcl_lnt_ddic.
        CLEAR t469.
        DATA t470 TYPE REF TO zif_lnt_registry.
        CLEAR t470.
        DATA(t471) = t466.
        t470 = t471->reg.
        t469 = NEW zcl_lnt_ddic( i_reg_f149 = t470 ).
        t465 = t469.
        t464 = t465.
        DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t472.
        DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t473.
        DATA(t474) = abap_true.
        IF t474 = abap_true.
          DATA(t475) = t159.
          DATA(t476) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t476->has = abap_true.
          t476->value = t475.
          t473 = t476.
        ELSE.
          DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t477.
          t473 = t477.
        ENDIF.
        t472 = t473.
        DATA(t478) = VALUE abap_bool( ).
        DATA(t479) = VALUE abap_bool( ).
        DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t480.
        DATA(t481) = t472.
        t480 = t481.
        DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t482.
        DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t483.
        t482 = t483.
        DATA(t484) = VALUE abap_bool( ).
        DATA(t485) = t480.
        IF t485 IS INITIAL.
          t484 = abap_true.
        ELSEIF t485->has = abap_false.
          t484 = abap_true.
        ENDIF.
        t479 = t484.
        IF t479 = abap_true.
          DATA(t486) = abap_true.
          t478 = t486.
        ELSE.
          DATA(t487) = VALUE abap_bool( ).
          DATA t488 TYPE REF TO zif_lnt_registry.
          CLEAR t488.
          DATA(t489) = t464.
          t488 = t489->reg.
          DATA(t490) = VALUE string( ).
          DATA(t491) = t472.
          t490 = t491->value.
          t487 = t488->in_error_namespace( i_name = t490 ).
          t478 = t487.
        ENDIF.
        t463 = t478.
        DATA(t492) = abap_false.
        t462 = xsdbool( t463 = t492 ).
        t448 = t462.
      ENDIF.
      IF t448 = abap_true.
        DATA t493 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t493.
        DATA(t494) = me->input_2fd0.
        t493 = t494->scope.
        DATA t495 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t495.
        DATA(t496) = abap_true.
        IF t496 = abap_true.
          DATA t497 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t497.
          DATA t498 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t498.
          DATA t499 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t499.
          DATA t500 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t500.
          DATA t501 TYPE REF TO zcl_lnt_abstract_node.
          CLEAR t501.
          DATA t502 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t502.
          DATA(t503) = t18.
          t502 = t503.
          t501 = t502.
          DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t504.
          DATA(t505) = t501.
          t504 = t505->children.
          t500 = t504.
          t499 ?= t500.
          DATA t506 TYPE REF TO object.
          CLEAR t506.
          t499->load( ).
          CLEAR t506.
          READ TABLE t499->items INDEX 1 INTO t506.
          DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t507.
          CLEAR t498.
          IF t506 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t507 ?= t506.
            DATA t508 TYPE REF TO object.
            CLEAR t508.
            t508 = t507->as_ref( ).
            t498 ?= t508.
          ELSE.
            t498 ?= t506.
          ENDIF.
          t497 = t498->get_first_token( ).
          t495 = t497.
        ELSE.
          DATA t509 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t509.
          t495 = t509.
        ENDIF.
        DATA t510 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t510.
        DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t511.
        DATA(t512) = |Type (Void)|.
        CLEAR t511.
        CREATE OBJECT t511.
        t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t511->sval = t512.
        DATA(t513) = VALUE string( ).
        DATA(t514) = me->input_2fd0.
        t513 = t514->filename.
        DATA t515 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t515.
        t493->add_reference( i_usage = t495 i_referencing = t510 i_type_9913 = t511 i_filename = t513 i_extra = t515 ).
        DATA t516 TYPE REF TO zcl_lnt_void_type.
        CLEAR t516.
        DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t517.
        DATA(t518) = abap_true.
        IF t518 = abap_true.
          DATA(t519) = t159.
          DATA(t520) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t520->has = abap_true.
          t520->value = t519.
          t517 = t520.
        ELSE.
          DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t521.
          t517 = t521.
        ENDIF.
        DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t522.
        t516 = zcl_lnt_void_type=>get_db65( i_voided = t517 i_qualified_name = t522 ).
        result = t516.
        RETURN.
      ENDIF.
      DO.
        DATA(t523) = VALUE abap_bool( ).
        DATA(t524) = VALUE i( ).
        DATA(t525) = t87.
        t525->load( ).
        t524 = lines( t525->items ).
        DATA(t526) = 0.
        t523 = xsdbool( t524 > t526 ).
        IF t523 = abap_false.
          EXIT.
        ENDIF.
        DATA t527 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t527.
        DATA t528 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t528.
        DATA t529 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t529.
        DATA(t530) = t87.
        DATA t531 TYPE REF TO object.
        CLEAR t531.
        t531 = t530->shift( ).
        DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t532.
        CLEAR t529.
        IF t531 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t532 ?= t531.
          DATA t533 TYPE REF TO object.
          CLEAR t533.
          t533 = t532->as_ref( ).
          t529 ?= t533.
        ELSE.
          t529 ?= t531.
        ENDIF.
        t528 = t529.
        t527 = t528.
        DATA(t534) = VALUE abap_bool( ).
        DATA(t535) = VALUE string( ).
        DATA t536 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t536.
        DATA t537 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t537.
        DATA(t538) = t527.
        t537 = t538->get_first_token( ).
        t536 = t537.
        DATA(t539) = VALUE string( ).
        DATA(t540) = t536.
        t539 = t540->str.
        t535 = t539.
        DATA(t541) = |-|.
        t534 = xsdbool( t535 = t541 ).
        IF t534 = abap_true.
          DATA(t542) = VALUE abap_bool( ).
          DATA(t543) = t115.
          t542 = xsdbool( t543 IS BOUND AND t543 IS INSTANCE OF zcl_lnt_void_type ).
          IF t542 = abap_true.
            DATA t544 TYPE REF TO zcl_lnt_void_type.
            CLEAR t544.
            DATA(t545) = t115.
            t544 ?= t545.
            result = t544.
            RETURN.
          ENDIF.
        ELSE.
          DATA(t546) = VALUE abap_bool( ).
          DATA(t547) = VALUE string( ).
          DATA(t548) = t527.
          t547 = t548->concat_tokens( ).
          DATA(t549) = |[]|.
          t546 = xsdbool( t547 = t549 ).
          IF t546 = abap_true.
            DATA(t550) = VALUE abap_bool( ).
            DATA(t551) = t115.
            t550 = xsdbool( t551 IS BOUND AND t551 IS INSTANCE OF zcl_lnt_ty_table_type ).
            IF t550 = abap_true.
              DATA t552 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t552.
              DATA t553 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t553.
              DATA t554 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t554.
              DATA t555 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t555.
              DATA(t556) = t115.
              t555 ?= t556.
              t554 = t555.
              DATA t557 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t557.
              DATA(t558) = t554.
              t557 = t558->row_type.
              t553 = t557.
              DATA t559 TYPE REF TO zcl_lnt_itable_options.
              CLEAR t559.
              DATA(t560) = VALUE abap_bool( ).
              DATA(t561) = abap_false.
              t560 = t561.
              DATA(t562) = VALUE string( ).
              DATA(t563) = |DEFAULT|.
              t562 = t563.
              DATA t564 TYPE REF TO zcl_lnt_itable_key.
              CLEAR t564.
              DATA t565 TYPE REF TO zcl_lnt_itable_key.
              CLEAR t565.
              t564 = t565.
              DATA t566 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t566.
              DATA t567 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t567.
              t566 = t567.
              t559 = NEW zcl_lnt_itable_options( i_with_header = t560 i_key_type = t562 i_primary_key = t564 i_secondary = t566 ).
              CREATE OBJECT t559->zlnt_view_ownkeys_b0e8086400eb.
              t559->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t568.
              IF t559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t568 ).
              ENDIF.
              DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t569.
              IF t559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t569 ).
              ENDIF.
              CREATE OBJECT t559->zlnt_json_ownkeys_70e5fd461788.
              t559->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t570) = |withHeader|.
              DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t571.
              IF t559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t570 p1 = t571 ).
              ENDIF.
              DATA(t572) = |keyType|.
              DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t573.
              IF t559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t572 p1 = t573 ).
              ENDIF.
              DATA t574 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t574.
              DATA t575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t575.
              t552 = NEW zcl_lnt_ty_table_type( i_row_type = t553 i_options = t559 i_qualified_name = t574 i_description = t575 ).
              t115 = t552.
            ENDIF.
          ELSE.
            DATA(t576) = VALUE abap_bool( ).
            DATA(t577) = VALUE abap_bool( ).
            DATA(t578) = t527.
            t577 = xsdbool( t578 IS BOUND AND t578 IS INSTANCE OF zcl_lnt_expression_node ).
            t576 = t577.
            IF t577 = abap_true.
              DATA(t579) = VALUE abap_bool( ).
              DATA t580 TYPE REF TO zif_lnt_statement_runnable.
              CLEAR t580.
              DATA t581 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t581.
              DATA(t582) = t527.
              DATA t583 TYPE REF TO object.
              CLEAR t583.
              t583 = t582.
              t581 ?= t583.
              t580 = t581->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t579 = xsdbool( t580 IS BOUND AND t580 IS INSTANCE OF zcl_lnt_st_field_length ).
              t576 = t579.
            ENDIF.
            IF t576 = abap_true.
              DATA(t584) = VALUE f( ).
              DATA(t585) = VALUE f( ).
              DATA(t586) = VALUE string( ).
              DATA(t587) = VALUE string( ).
              DATA(t588) = VALUE string( ).
              DATA t589 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t589.
              DATA(t590) = t527.
              DATA t591 TYPE REF TO object.
              CLEAR t591.
              t591 = t590.
              t589 ?= t591.
              t588 = t589->concat_tokens( ).
              DATA(t592) = |(|.
              DATA(t593) = ||.
              DATA(t594) = strlen( t588 ).
              t587 = t588.
              REPLACE ALL OCCURRENCES OF t592 IN t587 WITH t593.
              DATA(t595) = |)|.
              DATA(t596) = ||.
              DATA(t597) = strlen( t587 ).
              t586 = t587.
              REPLACE ALL OCCURRENCES OF t595 IN t586 WITH t596.
              DATA(t598) = VALUE i( ).
              DATA(t599) = VALUE i( ).
              DATA(t600) = VALUE string( ).
              DATA(t601) = VALUE abap_bool( ).
              DATA(t602) = VALUE abap_bool( ).
              DATA(t603) = VALUE int8( ).
              DATA(t604) = VALUE i( ).
              t598 = 0.
              t603 = 0.
              t601 = abap_false.
              t602 = abap_false.
              t599 = strlen( t586 ).
              DATA(t605) = VALUE i( ).
              DATA(t606) = VALUE i( ).
              DATA(t607) = VALUE string( ).
              WHILE t598 < t599.
                t606 = t598.
                t607 = t586+t606(1).
                DATA t608 TYPE c LENGTH 1.
                CLEAR t608.
                DATA(t609) = VALUE xstring( ).
                DATA t610 TYPE x LENGTH 1.
                CLEAR t610.
                DATA t611 TYPE x LENGTH 1.
                CLEAR t611.
                DATA(t612) = VALUE i( ).
                t608 = t607.
                t605 = cl_abap_conv_out_ce=>uccpi( t608 ).
                IF t605 >= 255.
                  IF zlnt_builtin_code_bb79b741c1de IS NOT BOUND.
                    zlnt_builtin_code_bb79b741c1de = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                  ENDIF.
                  zlnt_builtin_code_bb79b741c1de->convert( EXPORTING data = t607 IMPORTING buffer = t609 ).
                  t610 = t609(1).
                  t611 = t609+1(1).
                  t605 = t610.
                  t612 = t611.
                  t605 = t605 + t612 * 256.
                ENDIF.
                IF t605 = 9 OR t605 = 10 OR t605 = 11 OR t605 = 12 OR t605 = 13 OR t605 = 32 OR t605 = 160 OR t605 = 5760 OR t605 = 8232 OR t605 = 8233 OR t605 = 8239 OR t605 = 8287 OR t605 = 12288 OR t605 = 65279 OR t605 >= 8192 AND t605 <= 8202.
                  t598 = t598 + 1.
                ELSE.
                  EXIT.
                ENDIF.
              ENDWHILE.
              IF t598 < t599.
                t600 = t586+t598(1).
                IF t600 = '-' OR t600 = '+'.
                  t601 = xsdbool( t600 = '-' ).
                  t598 = t598 + 1.
                ENDIF.
              ENDIF.
              WHILE t598 < t599.
                t600 = t586+t598(1).
                IF t600 CN '0123456789' OR t600 = ` `.
                  EXIT.
                ENDIF.
                t604 = t600.
                IF t603 > range_parse_safe_prefix OR ( t603 = range_parse_safe_prefix AND t604 > 1 ).
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                t603 = t603 * 10 + t604.
                t602 = abap_true.
                t598 = t598 + 1.
              ENDWHILE.
              IF t602 = abap_false OR ( t601 = abap_true AND t603 = 0 ).
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              IF t601 = abap_true.
                t603 = 0 - t603.
              ENDIF.
              t585 = t603.
              t584 = t585.
              DATA(t613) = VALUE abap_bool( ).
              DATA(t614) = t584.
              t613 = abap_false.
              IF t613 = abap_true.
                DATA t615 TYPE REF TO zcl_lnt_unknown_type.
                CLEAR t615.
                DATA(t616) = |Type error, invalid field length|.
                DATA t617 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t617.
                t615 = NEW zcl_lnt_unknown_type( i_error = t616 i_qualified_name = t617 ).
                t115 = t615.
              ELSE.
                DATA(t618) = VALUE abap_bool( ).
                DATA(t619) = t115.
                t618 = xsdbool( t619 IS BOUND AND t619 IS INSTANCE OF zcl_lnt_date_type ).
                IF t618 = abap_true.
                  DATA(t620) = VALUE abap_bool( ).
                  DATA(t621) = t584.
                  DATA(t622) = CONV f( 8 ).
                  t620 = xsdbool( t621 > t622 ).
                  IF t620 = abap_true.
                    DATA t623 TYPE REF TO zcl_lnt_unknown_type.
                    CLEAR t623.
                    DATA(t624) = |Type error, offset too long|.
                    DATA t625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t625.
                    t623 = NEW zcl_lnt_unknown_type( i_error = t624 i_qualified_name = t625 ).
                    t115 = t623.
                  ELSE.
                    DATA t626 TYPE REF TO zcl_lnt_character_type.
                    CLEAR t626.
                    DATA(t627) = t584.
                    DATA t628 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t628.
                    t626 = NEW zcl_lnt_character_type( i_length = t627 i_extra = t628 ).
                    t115 = t626.
                  ENDIF.
                ELSE.
                  DATA(t629) = VALUE abap_bool( ).
                  DATA(t630) = t115.
                  t629 = xsdbool( t630 IS BOUND AND t630 IS INSTANCE OF zcl_lnt_character_type ).
                  IF t629 = abap_true.
                    DATA(t631) = VALUE abap_bool( ).
                    DATA(t632) = t584.
                    DATA(t633) = VALUE f( ).
                    DATA t634 TYPE REF TO zcl_lnt_character_type.
                    CLEAR t634.
                    DATA t635 TYPE REF TO zcl_lnt_character_type.
                    CLEAR t635.
                    DATA(t636) = t115.
                    t635 ?= t636.
                    t634 = t635.
                    DATA(t637) = VALUE f( ).
                    DATA(t638) = t634.
                    t637 = t638->length.
                    t633 = t637.
                    t631 = xsdbool( t632 <= t633 ).
                    IF t631 = abap_true.
                      DATA t639 TYPE REF TO zcl_lnt_character_type.
                      CLEAR t639.
                      DATA(t640) = t584.
                      DATA t641 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t641.
                      t639 = NEW zcl_lnt_character_type( i_length = t640 i_extra = t641 ).
                      t115 = t639.
                    ELSE.
                      DATA t642 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t642.
                      DATA(t643) = |Type error, offset too long|.
                      DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t644.
                      t642 = NEW zcl_lnt_unknown_type( i_error = t643 i_qualified_name = t644 ).
                      t115 = t642.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ELSE.
              DATA(t645) = VALUE abap_bool( ).
              DATA(t646) = t115.
              t645 = xsdbool( t646 IS BOUND AND t646 IS INSTANCE OF zcl_lnt_ty_table_type ).
              IF t645 = abap_true.
                DATA t647 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t647.
                DATA(t648) = abap_true.
                IF t648 = abap_true.
                  DATA t649 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t649.
                  DATA t650 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t650.
                  DATA t651 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t651.
                  DATA(t652) = t115.
                  t651 ?= t652.
                  t650 = t651.
                  DATA t653 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t653.
                  DATA(t654) = t650.
                  t653 = t654->row_type.
                  t649 = t653.
                  t647 = t649.
                ELSE.
                  DATA t655 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t655.
                  t647 = t655.
                ENDIF.
                t115 = t647.
              ENDIF.
              DATA(t656) = VALUE abap_bool( ).
              DATA(t657) = t115.
              t656 = xsdbool( t657 IS BOUND AND t657 IS INSTANCE OF zcl_lnt_structure_type ).
              IF t656 = abap_true.
                DATA t658 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t658.
                DATA t659 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t659.
                DATA t660 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t660.
                DATA(t661) = t115.
                t660 ?= t661.
                t659 = t660.
                DATA(t662) = VALUE string( ).
                DATA(t663) = VALUE string( ).
                DATA t664 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t664.
                DATA t665 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t665.
                DATA(t666) = t527.
                t665 = t666->get_first_token( ).
                t664 = t665.
                DATA(t667) = VALUE string( ).
                DATA(t668) = t664.
                t667 = t668->str.
                t663 = t667.
                t662 = t663.
                DATA t669 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t669.
                DATA t670 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
                CLEAR t670.
                DATA(t671) = t659.
                t670 = t671->indexed.
                DATA(t672) = VALUE string( ).
                DATA(t673) = t662.
                DATA(t674) = strlen( t673 ).
                t672 = t673.
                IF t672 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t672 TO UPPER CASE.
                ELSE.
                  t672 = zlnt_runtime_uppe_91169605024d=>full( t672 ).
                ENDIF.
                t669 = t670->get( p0 = t672 ).
                t658 = t669.
                t115 = t658.
                DATA(t675) = VALUE abap_bool( ).
                DATA t676 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t676.
                DATA(t677) = t115.
                t676 = t677.
                DATA t678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t678.
                DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t679.
                t678 = t679.
                DATA(t680) = VALUE abap_bool( ).
                DATA(t681) = t676.
                IF t681 IS INITIAL.
                  t680 = abap_true.
                ENDIF.
                t675 = t680.
                IF t675 = abap_true.
                  DATA t682 TYPE REF TO zcl_lnt_unknown_type.
                  CLEAR t682.
                  DATA(t683) = VALUE string( ).
                  DATA(t684) = |Type error, field not part of structure |.
                  DATA(t685) = t83.
                  DATA(t686) = strlen( t684 ).
                  t683 = |{ t684 }{ t685 }|.
                  DATA t687 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t687.
                  t682 = NEW zcl_lnt_unknown_type( i_error = t683 i_qualified_name = t687 ).
                  result = t682.
                  RETURN.
                ENDIF.
              ELSE.
                DATA(t688) = VALUE abap_bool( ).
                DATA(t689) = VALUE abap_bool( ).
                DATA(t690) = t115.
                t689 = xsdbool( t690 IS BOUND AND t690 IS INSTANCE OF zcl_lnt_void_type ).
                t688 = xsdbool( t689 = abap_false ).
                IF t688 = abap_true.
                  DATA t691 TYPE REF TO zcl_lnt_unknown_type.
                  CLEAR t691.
                  DATA(t692) = VALUE string( ).
                  DATA(t693) = |Type error, field not part of structure |.
                  DATA(t694) = t83.
                  DATA(t695) = strlen( t693 ).
                  t692 = |{ t693 }{ t694 }|.
                  DATA t696 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t696.
                  t691 = NEW zcl_lnt_unknown_type( i_error = t692 i_qualified_name = t696 ).
                  result = t691.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
      DATA(t697) = VALUE abap_bool( ).
      DATA(t698) = t115.
      t697 = xsdbool( t698 IS BOUND AND t698 IS INSTANCE OF zcl_lnt_void_type ).
      IF t697 = abap_true.
        DATA t699 TYPE REF TO zcl_lnt_void_type.
        CLEAR t699.
        DATA(t700) = t115.
        t699 ?= t700.
        result = t699.
        RETURN.
      ELSE.
        DATA(t701) = VALUE abap_bool( ).
        DATA(t702) = VALUE abap_bool( ).
        DATA(t703) = VALUE abap_bool( ).
        DATA(t704) = t115.
        t703 = xsdbool( t704 IS BOUND AND t704 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t702 = t703.
        IF t703 = abap_true.
          DATA(t705) = VALUE abap_bool( ).
          DATA t706 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t706.
          DATA t707 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t707.
          DATA(t708) = t115.
          t707 ?= t708.
          t706 = t707.
          DATA(t709) = VALUE abap_bool( ).
          DATA t710 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t710.
          DATA(t711) = t706.
          t710 = t711->options.
          t709 = t710->zlnt_view_read_sr_ec4602663c93( ).
          t705 = t709.
          t702 = t705.
        ENDIF.
        t701 = t702.
        IF t702 = abap_true.
          DATA(t712) = VALUE abap_bool( ).
          DATA(t713) = VALUE abap_bool( ).
          DATA(t714) = t2.
          t713 = t714->value.
          DATA(t715) = abap_true.
          t712 = xsdbool( t713 = t715 ).
          t701 = t712.
        ENDIF.
        IF t701 = abap_true.
          DATA t716 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t716.
          DATA(t717) = abap_true.
          IF t717 = abap_true.
            DATA t718 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t718.
            DATA t719 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t719.
            DATA t720 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t720.
            DATA(t721) = t115.
            t720 ?= t721.
            t719 = t720.
            DATA t722 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t722.
            DATA(t723) = t719.
            t722 = t723->row_type.
            t718 = t722.
            t716 = t718.
          ELSE.
            DATA t724 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t724.
            t716 = t724.
          ENDIF.
          t115 = t716.
        ELSE.
          DATA(t725) = VALUE abap_bool( ).
          DATA(t726) = VALUE abap_bool( ).
          DATA(t727) = VALUE abap_bool( ).
          DATA(t728) = t115.
          t727 = xsdbool( t728 IS BOUND AND t728 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t726 = t727.
          IF t727 = abap_true.
            DATA(t729) = VALUE abap_bool( ).
            DATA(t730) = VALUE abap_bool( ).
            DATA t731 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t731.
            DATA t732 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t732.
            DATA(t733) = t115.
            t732 ?= t733.
            t731 = t732.
            DATA(t734) = VALUE abap_bool( ).
            DATA t735 TYPE REF TO zcl_lnt_itable_options.
            CLEAR t735.
            DATA(t736) = t731.
            t735 = t736->options.
            t734 = t735->zlnt_view_read_sr_ec4602663c93( ).
            t730 = t734.
            DATA(t737) = abap_true.
            t729 = xsdbool( t730 = t737 ).
            t726 = t729.
          ENDIF.
          t725 = t726.
          IF t726 = abap_true.
            DATA(t738) = VALUE abap_bool( ).
            DATA t739 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t739.
            DATA t740 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t740.
            DATA t741 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t741.
            DATA(t742) = t115.
            t741 ?= t742.
            t740 = t741.
            DATA t743 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t743.
            DATA(t744) = t740.
            t743 = t744->row_type.
            t739 = t743.
            t738 = xsdbool( t739 IS BOUND AND t739 IS INSTANCE OF zcl_lnt_void_type ).
            t725 = t738.
          ENDIF.
          IF t725 = abap_true.
            DATA t745 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t745.
            DATA(t746) = abap_true.
            IF t746 = abap_true.
              DATA t747 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t747.
              DATA t748 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t748.
              DATA t749 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t749.
              DATA(t750) = t115.
              t749 ?= t750.
              t748 = t749.
              DATA t751 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t751.
              DATA(t752) = t748.
              t751 = t752->row_type.
              t747 = t751.
              t745 = t747.
            ELSE.
              DATA t753 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t753.
              t745 = t753.
            ENDIF.
            result = t745.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t754) = VALUE abap_bool( ).
    DATA(t755) = VALUE abap_bool( ).
    DATA(t756) = t115.
    t755 = xsdbool( t756 IS BOUND ).
    t754 = xsdbool( t755 = abap_false ).
    IF t754 = abap_true.
      DATA t757 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t757.
      DATA(t758) = VALUE string( ).
      DATA(t759) = VALUE string( ).
      DATA(t760) = |Type error, could not resolve "|.
      DATA(t761) = t83.
      DATA(t762) = strlen( t760 ).
      t759 = |{ t760 }{ t761 }|.
      DATA(t763) = |", resolveLikeName2|.
      DATA(t764) = strlen( t759 ).
      t758 = |{ t759 }{ t763 }|.
      DATA t765 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t765.
      t757 = NEW zcl_lnt_unknown_type( i_error = t758 i_qualified_name = t765 ).
      result = t757.
      RETURN.
    ENDIF.
    DATA t766 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t766.
    DATA(t767) = abap_true.
    IF t767 = abap_true.
      DATA t768 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t768.
      DATA(t769) = t115.
      t768 = t769.
      t766 = t768.
    ELSE.
      DATA t770 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t770.
      t766 = t770.
    ENDIF.
    result = t766.

  ENDMETHOD.

  METHOD clone_type.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_qualified_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_character_type ).
    t4 = t5.
    IF t5 = abap_true.
      DATA(t7) = VALUE abap_bool( ).
      DATA(t8) = t2.
      IF t8 IS BOUND.
        IF t8->has = abap_true.
          t7 = xsdbool( strlen( t8->value ) > 0 ).
        ENDIF.
      ENDIF.
      t4 = t7.
    ENDIF.
    t3 = t4.
    IF t4 = abap_true.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE i( ).
      DATA t12 TYPE string.
      DATA(t13) = t2.
      t12 = t13->value.
      DATA(t14) = |-|.
      DATA(t15) = strlen( t12 ).
      IF t14 IS INITIAL.
        t11 = 0.
      ELSE.
        FIND t14 IN t12 MATCH OFFSET t11.
        IF sy-subrc <> 0.
          t11 = -1.
        ENDIF.
      ENDIF.
      DATA(t16) = 0.
      t10 = xsdbool( t11 >= t16 ).
      DATA(t17) = abap_false.
      t9 = xsdbool( t10 = t17 ).
      t3 = t9.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_character_type.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_character_type.
      DATA(t20) = t1.
      t19 ?= t20.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA(t24) = abap_true.
      IF t24 = abap_true.
        DATA t25 TYPE string.
        DATA(t26) = t2.
        t25 = t26->value.
        DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t27->has = abap_true.
        t27->value = t25.
        t23 = t27.
      ELSE.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t28.
        t23 = t28.
      ENDIF.
      t22 = t23.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t32 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t32.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      t33 = t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      t35 = t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      t37 = t38.
      t21 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t22 i_conversion_exit = t29 i_derived_from_constant = t31 i_ddic_name = t33 i_rtti_name = t35 i_description = t37 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t39 ).
      ENDIF.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t40) = |qualifiedName|.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
      ENDIF.
      t18 = t19->clone_type( i_input_967e = t21 ).
      t1 = t18.
    ENDIF.
    DATA(t42) = t1.
    result = t42.

  ENDMETHOD.

  METHOD resolve_type_name.
    DATA(t1) = i_type_name.
    DATA(t2) = i_length.
    DATA(t3) = i_decimals_2eed.
    DATA(t4) = i_qualified_name.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t6.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    IF t5 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t12.
      result = t12.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_abstract_type.
    DATA t14 TYPE REF TO zcl_lnt_abstract_type.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = t1.
    t15 = t16.
    t14 = me->resolve_type_chain( i_expr = t15 ).
    t13 = t14.
    DATA t17 TYPE abap_bool.
    DATA(t18) = t13.
    t17 = xsdbool( t18 IS BOUND ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t21.
        DATA t22 TYPE REF TO zcl_lnt_abstract_type.
        DATA t23 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t24) = t13.
        t23 = t24.
        t22 = t23.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t26) = t4.
        t25 = t26.
        DATA t27 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t27.
        DATA(t28) = VALUE abap_bool( ).
        DATA t29 TYPE abap_bool.
        DATA t30 TYPE abap_bool.
        DATA(t31) = t22.
        t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_character_type ).
        t29 = t30.
        IF t30 = abap_true.
          DATA(t32) = VALUE abap_bool( ).
          DATA(t33) = t25.
          IF t33 IS BOUND.
            IF t33->has = abap_true.
              t32 = xsdbool( strlen( t33->value ) > 0 ).
            ENDIF.
          ENDIF.
          t29 = t32.
        ENDIF.
        t28 = t29.
        IF t29 = abap_true.
          DATA(t34) = VALUE abap_bool( ).
          DATA(t35) = VALUE abap_bool( ).
          DATA(t36) = VALUE i( ).
          DATA t37 TYPE string.
          DATA(t38) = t25.
          t37 = t38->value.
          DATA(t39) = |-|.
          DATA(t40) = strlen( t37 ).
          IF t39 IS INITIAL.
            t36 = 0.
          ELSE.
            FIND t39 IN t37 MATCH OFFSET t36.
            IF sy-subrc <> 0.
              t36 = -1.
            ENDIF.
          ENDIF.
          DATA(t41) = 0.
          t35 = xsdbool( t36 >= t41 ).
          DATA(t42) = abap_false.
          t34 = xsdbool( t35 = t42 ).
          t28 = t34.
        ENDIF.
        IF t28 = abap_true.
          DATA t43 TYPE REF TO zcl_lnt_character_type.
          CLEAR t43.
          DATA t44 TYPE REF TO zcl_lnt_character_type.
          DATA(t45) = t22.
          t44 ?= t45.
          DATA t46 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t46.
          DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t47.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          DATA(t49) = abap_true.
          IF t49 = abap_true.
            DATA t50 TYPE string.
            DATA(t51) = t25.
            t50 = t51->value.
            DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t52->has = abap_true.
            t52->value = t50.
            t48 = t52.
          ELSE.
            DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t53.
            t48 = t53.
          ENDIF.
          t47 = t48.
          DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t55.
          t54 = t55.
          DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t57.
          t56 = t57.
          DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          t58 = t59.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t61.
          t60 = t61.
          DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          t62 = t63.
          t46 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t47 i_conversion_exit = t54 i_derived_from_constant = t56 i_ddic_name = t58 i_rtti_name = t60 i_description = t62 ).
          CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
          t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t64.
          IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t64 ).
          ENDIF.
          CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
          t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t65) = |qualifiedName|.
          DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t66.
          IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
          ENDIF.
          t43 = t44->clone_type( i_input_967e = t46 ).
          t22 = t43.
        ENDIF.
        DATA(t67) = t22.
        t27 = t67.
        t21 = t27.
        t19 = t21.
      ELSE.
        DATA t68 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t68.
        t19 = t68.
      ENDIF.
      result = t19.
      RETURN.
    ENDIF.
    DATA(t69) = VALUE string( ).
    DATA t70 TYPE string.
    DATA t71 TYPE string.
    DATA t72 TYPE REF TO zcl_lnt_expression_node.
    DATA(t73) = t1.
    t72 = t73.
    t71 = t72->concat_tokens( ).
    DATA(t74) = strlen( t71 ).
    t70 = t71.
    IF t70 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t70 TO UPPER CASE.
    ELSE.
      t70 = zlnt_runtime_uppe_91169605024d=>full( t70 ).
    ENDIF.
    t69 = t70.
    DATA t75 TYPE REF TO zcl_lnt_abstract_type.
    DATA t76 TYPE REF TO zcl_lnt_abstract_type.
    DATA t77 TYPE REF TO zcl_lnt_ddic.
    DATA t78 TYPE REF TO zcl_lnt_current_scope.
    DATA t79 TYPE REF TO zcl_lnt_current_scope.
    DATA(t80) = me->input_2fd0.
    t79 = t80->scope.
    t78 = t79.
    DATA t81 TYPE REF TO zcl_lnt_ddic.
    DATA t82 TYPE REF TO zif_lnt_registry.
    DATA(t83) = t78.
    t82 = t83->reg.
    t81 = NEW zcl_lnt_ddic( i_reg_f149 = t82 ).
    t77 = t81.
    DATA(t84) = t69.
    DATA(t85) = t2.
    DATA(t86) = t3.
    DATA(t87) = t4.
    t76 = t77->lookup_builtin_type( i_name = t84 i_length = t85 i_decimals_2eed = t86 i_qualified_name = t87 ).
    t75 = t76.
    DATA(t88) = VALUE abap_bool( ).
    DATA t89 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t90) = t75.
    t89 = t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    t91 = t92.
    DATA(t93) = VALUE abap_bool( ).
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = t89.
    IF t95 IS INITIAL.
      t94 = abap_true.
    ENDIF.
    t93 = xsdbool( t94 = abap_false ).
    t88 = t93.
    IF t88 = abap_true.
      DATA t96 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t96.
      DATA(t97) = abap_true.
      IF t97 = abap_true.
        DATA t98 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t99) = t75.
        t98 = t99.
        t96 = t98.
      ELSE.
        DATA t100 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t100.
        t96 = t100.
      ENDIF.
      result = t96.
      RETURN.
    ENDIF.
    DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t101.
    DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t102.
    DATA t103 TYPE REF TO zcl_lnt_current_scope.
    DATA t104 TYPE REF TO zcl_lnt_current_scope.
    DATA(t105) = me->input_2fd0.
    t104 = t105->scope.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t107.
    DATA(t108) = abap_true.
    IF t108 = abap_true.
      DATA(t109) = t69.
      DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t110->has = abap_true.
      t110->value = t109.
      t107 = t110.
    ELSE.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      t107 = t111.
    ENDIF.
    t106 = t107.
    DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t112.
    DATA(t113) = VALUE abap_bool( ).
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t115) = t106.
    t114 = t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    t116 = t117.
    DATA(t118) = VALUE abap_bool( ).
    DATA(t119) = t114.
    IF t119 IS INITIAL.
      t118 = abap_true.
    ELSEIF t119->has = abap_false.
      t118 = abap_true.
    ENDIF.
    t113 = t118.
    IF t113 = abap_true.
      DATA t120 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t120.
      t112 = t120.
    ELSE.
      DATA t121 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t121.
      DATA t122 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t123 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t124) = t103.
      t123 = t124->current.
      t122 = t123.
      DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t125.
      DATA(t126) = VALUE abap_bool( ).
      DATA(t127) = t122.
      IF t127 IS INITIAL.
        t126 = abap_true.
      ENDIF.
      IF t126 = abap_true.
        DATA t128 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t128.
        t125 = t128.
      ELSE.
        DATA t129 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t130 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t131) = t122.
        t130 = t131.
        DATA t132 TYPE string.
        DATA(t133) = t106.
        t132 = t133->value.
        t129 = t130->find_type( i_name = t132 ).
        t125 = t129.
      ENDIF.
      t121 = t125.
      t112 = t121.
    ENDIF.
    t102 = t112.
    t101 = t102.
    DATA t134 TYPE abap_bool.
    DATA(t135) = t101.
    t134 = xsdbool( t135 IS BOUND ).
    IF t134 = abap_true.
      DATA t136 TYPE REF TO zcl_lnt_abstract_token.
      DATA t137 TYPE REF TO zcl_lnt_abstract_token.
      DATA t138 TYPE REF TO zcl_lnt_expression_node.
      DATA(t139) = t1.
      t138 = t139.
      t137 = t138->get_first_token( ).
      t136 = t137.
      DATA(t140) = VALUE abap_bool( ).
      DATA(t141) = VALUE i( ).
      DATA(t142) = t69.
      DATA(t143) = |~|.
      DATA(t144) = strlen( t142 ).
      IF t143 IS INITIAL.
        t141 = 0.
      ELSE.
        FIND t143 IN t142 MATCH OFFSET t141.
        IF sy-subrc <> 0.
          t141 = -1.
        ENDIF.
      ENDIF.
      DATA(t145) = 0.
      t140 = xsdbool( t141 >= t145 ).
      IF t140 = abap_true.
        DATA(t146) = VALUE string( ).
        DATA(t147) = VALUE string( ).
        DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t149) = t69.
        DATA(t150) = |~|.
        DATA(t151) = strlen( t149 ).
        DATA t152 TYPE i.
        DATA(t153) = VALUE i( ).
        DATA(t154) = VALUE i( ).
        DATA t155 TYPE i.
        DATA(t156) = VALUE string( ).
        CREATE OBJECT t148.
        t155 = strlen( t150 ).
        t152 = 0.
        IF t155 = 0.
          WHILE t152 < t151.
            t156 = t149+t152(1).
            APPEND t156 TO t148->items.
            t152 = t152 + 1.
          ENDWHILE.
        ELSE.
          WHILE t152 <= t151.
            FIND FIRST OCCURRENCE OF t150 IN SECTION OFFSET t152 OF t149 MATCH OFFSET t153.
            IF sy-subrc = 0.
              t154 = t153 - t152.
            ELSE.
              t153 = -1.
              t154 = t151 - t152.
            ENDIF.
            CLEAR t156.
            IF t154 > 0.
              t156 = t149+t152(t154).
            ENDIF.
            APPEND t156 TO t148->items.
            IF t153 < 0.
              EXIT.
            ENDIF.
            t152 = t153 + t155.
          ENDWHILE.
        ENDIF.
        IF t148->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t148->load( ).
        CLEAR t147.
        READ TABLE t148->items INDEX 1 INTO t147.
        t146 = t147.
        DATA t157 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t157.
        DATA t158 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t158.
        DATA t159 TYPE REF TO zcl_lnt_current_scope.
        DATA t160 TYPE REF TO zcl_lnt_current_scope.
        DATA(t161) = me->input_2fd0.
        t160 = t161->scope.
        t159 = t160.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t163.
        DATA(t164) = abap_true.
        IF t164 = abap_true.
          DATA(t165) = t146.
          DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t166->has = abap_true.
          t166->value = t165.
          t163 = t166.
        ELSE.
          DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t167.
          t163 = t167.
        ENDIF.
        t162 = t163.
        DATA t168 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t168.
        DATA(t169) = VALUE abap_bool( ).
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t171) = t162.
        t170 = t171.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        t172 = t173.
        DATA(t174) = VALUE abap_bool( ).
        DATA(t175) = t170.
        IF t175 IS INITIAL.
          t174 = abap_true.
        ELSEIF t175->has = abap_false.
          t174 = abap_true.
        ENDIF.
        t169 = t174.
        IF t169 = abap_true.
          DATA t176 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t176.
          t168 = t176.
        ELSE.
          DATA t177 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t177.
          DATA t178 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t178.
          DATA t179 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t179.
          DATA t180 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t181 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t182) = t159.
          t181 = t182->current.
          t180 = t181.
          DATA t183 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t183.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = t180.
          IF t185 IS INITIAL.
            t184 = abap_true.
          ENDIF.
          IF t184 = abap_true.
            DATA t186 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t186.
            t183 = t186.
          ELSE.
            DATA t187 TYPE REF TO zif_lnt_interface_definition.
            DATA t188 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t189) = t180.
            t188 = t189.
            DATA t190 TYPE string.
            DATA(t191) = t162.
            t190 = t191->value.
            t187 = t188->find_interface_definition( i_name = t190 ).
            t183 = t187.
          ENDIF.
          t179 = t183.
          t178 = t179.
          DATA t192 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t192.
          DATA t193 TYPE abap_bool.
          DATA(t194) = t178.
          t193 = xsdbool( t194 IS BOUND ).
          IF t193 = abap_true.
            DATA t195 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t195.
            DATA(t196) = abap_true.
            IF t196 = abap_true.
              DATA t197 TYPE REF TO zif_lnt_interface_definition.
              DATA(t198) = t178.
              t197 = t198.
              t195 = t197.
            ELSE.
              DATA t199 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t199.
              t195 = t199.
            ENDIF.
            t192 = t195.
          ELSE.
            DATA t200 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t200.
            DATA t201 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t201.
            DATA t202 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t202.
            DATA t203 TYPE REF TO zif_lnt_object.
            CLEAR t203.
            DATA t204 TYPE REF TO zif_lnt_registry.
            DATA(t205) = t159.
            t204 = t205->reg.
            DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t206.
            DATA(t207) = abap_true.
            IF t207 = abap_true.
              DATA(t208) = |INTF|.
              DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t209->has = abap_true.
              t209->value = t208.
              t206 = t209.
            ELSE.
              DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t210.
              t206 = t210.
            ENDIF.
            DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t211.
            DATA(t212) = abap_true.
            IF t212 = abap_true.
              DATA t213 TYPE string.
              DATA(t214) = t162.
              t213 = t214->value.
              DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t215->has = abap_true.
              t215->value = t213.
              t211 = t215.
            ELSE.
              DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t216.
              t211 = t216.
            ENDIF.
            t203 = t204->get_object( i_type_9913 = t206 i_name = t211 ).
            DATA t217 TYPE REF TO object.
            t217 = t203.
            t202 ?= t217.
            t201 = t202.
            DATA t218 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t218.
            DATA t219 TYPE abap_bool.
            DATA(t220) = t201.
            t219 = xsdbool( t220 IS BOUND ).
            IF t219 = abap_true.
              DATA t221 TYPE REF TO zif_lnt_interface_definition.
              DATA t222 TYPE REF TO zcl_lnt_ob_interface.
              DATA t223 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t224) = t201.
              t223 = t224.
              t222 = t223.
              DATA t225 TYPE REF TO zif_lnt_interface_definition.
              DATA(t226) = t222.
              t225 = t226->def.
              t221 = t225.
              t218 = t221.
            ELSE.
              DATA t227 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t227.
              t218 = t227.
            ENDIF.
            t200 = t218.
            t192 = t200.
          ENDIF.
          t177 = t192.
          t168 = t177.
        ENDIF.
        t158 = t168.
        t157 = t158.
        DATA t228 TYPE abap_bool.
        DATA(t229) = t157.
        t228 = xsdbool( t229 IS BOUND ).
        IF t228 = abap_true.
          DATA t230 TYPE REF TO zcl_lnt_current_scope.
          DATA(t231) = me->input_2fd0.
          t230 = t231->scope.
          DATA t232 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t232.
          DATA(t233) = abap_true.
          IF t233 = abap_true.
            DATA(t234) = t136.
            t232 = t234.
          ELSE.
            DATA t235 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t235.
            t232 = t235.
          ENDIF.
          DATA t236 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t236.
          DATA(t237) = abap_true.
          IF t237 = abap_true.
            DATA t238 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t239 TYPE REF TO zif_lnt_interface_definition.
            DATA(t240) = t157.
            t239 = t240.
            t238 ?= t239.
            t236 = t238.
          ELSE.
            DATA t241 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t241.
            t236 = t241.
          ENDIF.
          DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t242.
          DATA(t243) = |Object|.
          CLEAR t242.
          CREATE OBJECT t242.
          t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t242->sval = t243.
          DATA t244 TYPE string.
          DATA(t245) = me->input_2fd0.
          t244 = t245->filename.
          DATA t246 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t246.
          DATA(t247) = abap_true.
          IF t247 = abap_true.
            DATA t248 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t248.
            DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t249.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t250.
            DATA(t251) = abap_true.
            IF t251 = abap_true.
              DATA(t252) = |INTF|.
              DATA(t253) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t253->has = abap_true.
              t253->value = t252.
              t250 = t253.
            ELSE.
              DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t254.
              t250 = t254.
            ENDIF.
            t249 = t250.
            DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t255.
            DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t256.
            DATA(t257) = abap_true.
            IF t257 = abap_true.
              DATA(t258) = t146.
              DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t259->has = abap_true.
              t259->value = t258.
              t256 = t259.
            ELSE.
              DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t260.
              t256 = t260.
            ENDIF.
            t255 = t256.
            DATA t261 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t262 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t262.
            t261 = t262.
            t248 = NEW zcl_lnt_ireference_extras( i_oo_name = t255 i_oo_type = t249 i_found_qualified = t261 ).
            CREATE OBJECT t248->zlnt_view_ownkeys_b0e8086400eb.
            t248->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t263.
            IF t248->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t263 ).
            ENDIF.
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t264.
            IF t248->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t264 ).
            ENDIF.
            CREATE OBJECT t248->zlnt_json_ownkeys_70e5fd461788.
            t248->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t265) = |ooType|.
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t266.
            IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = t265 p1 = t266 ).
            ENDIF.
            DATA(t267) = |ooName|.
            DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t268.
            IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = t267 p1 = t268 ).
            ENDIF.
            t246 = t248.
          ELSE.
            DATA t269 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t269.
            t246 = t269.
          ENDIF.
          t230->add_reference( i_usage = t232 i_referencing = t236 i_type_9913 = t242 i_filename = t244 i_extra = t246 ).
        ENDIF.
      ENDIF.
      DATA t270 TYPE REF TO zcl_lnt_current_scope.
      DATA(t271) = me->input_2fd0.
      t270 = t271->scope.
      DATA t272 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t272.
      DATA(t273) = abap_true.
      IF t273 = abap_true.
        DATA(t274) = t136.
        t272 = t274.
      ELSE.
        DATA t275 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t275.
        t272 = t275.
      ENDIF.
      DATA t276 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t277) = t101.
      t276 = t277.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t278.
      DATA(t279) = |Type|.
      CLEAR t278.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t278->sval = t279.
      DATA t280 TYPE string.
      DATA(t281) = me->input_2fd0.
      t280 = t281->filename.
      DATA t282 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t282.
      t270->add_reference( i_usage = t272 i_referencing = t276 i_type_9913 = t278 i_filename = t280 i_extra = t282 ).
      DATA t283 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t283.
      DATA(t284) = abap_true.
      IF t284 = abap_true.
        DATA t285 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t285.
        DATA t286 TYPE REF TO zcl_lnt_abstract_type.
        DATA t287 TYPE REF TO zcl_lnt_abstract_type.
        DATA t288 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t289 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t290) = t101.
        t289 = t290.
        t288 = t289.
        DATA t291 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t292) = t288.
        t291 = t292->type_cba0.
        t287 = t291.
        t286 = t287.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t294) = t4.
        t293 = t294.
        DATA t295 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t295.
        DATA(t296) = VALUE abap_bool( ).
        DATA t297 TYPE abap_bool.
        DATA t298 TYPE abap_bool.
        DATA(t299) = t286.
        t298 = xsdbool( t299 IS BOUND AND t299 IS INSTANCE OF zcl_lnt_character_type ).
        t297 = t298.
        IF t298 = abap_true.
          DATA(t300) = VALUE abap_bool( ).
          DATA(t301) = t293.
          IF t301 IS BOUND.
            IF t301->has = abap_true.
              t300 = xsdbool( strlen( t301->value ) > 0 ).
            ENDIF.
          ENDIF.
          t297 = t300.
        ENDIF.
        t296 = t297.
        IF t297 = abap_true.
          DATA(t302) = VALUE abap_bool( ).
          DATA(t303) = VALUE abap_bool( ).
          DATA(t304) = VALUE i( ).
          DATA t305 TYPE string.
          DATA(t306) = t293.
          t305 = t306->value.
          DATA(t307) = |-|.
          DATA(t308) = strlen( t305 ).
          IF t307 IS INITIAL.
            t304 = 0.
          ELSE.
            FIND t307 IN t305 MATCH OFFSET t304.
            IF sy-subrc <> 0.
              t304 = -1.
            ENDIF.
          ENDIF.
          DATA(t309) = 0.
          t303 = xsdbool( t304 >= t309 ).
          DATA(t310) = abap_false.
          t302 = xsdbool( t303 = t310 ).
          t296 = t302.
        ENDIF.
        IF t296 = abap_true.
          DATA t311 TYPE REF TO zcl_lnt_character_type.
          CLEAR t311.
          DATA t312 TYPE REF TO zcl_lnt_character_type.
          DATA(t313) = t286.
          t312 ?= t313.
          DATA t314 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t314.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t315.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          DATA(t317) = abap_true.
          IF t317 = abap_true.
            DATA t318 TYPE string.
            DATA(t319) = t293.
            t318 = t319->value.
            DATA(t320) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t320->has = abap_true.
            t320->value = t318.
            t316 = t320.
          ELSE.
            DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t321.
            t316 = t321.
          ENDIF.
          t315 = t316.
          DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t323.
          t322 = t323.
          DATA t324 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t325 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t325.
          t324 = t325.
          DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t327.
          t326 = t327.
          DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t329.
          t328 = t329.
          DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t331.
          t330 = t331.
          t314 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t315 i_conversion_exit = t322 i_derived_from_constant = t324 i_ddic_name = t326 i_rtti_name = t328 i_description = t330 ).
          CREATE OBJECT t314->zlnt_view_ownkeys_b0e8086400eb.
          t314->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t332.
          IF t314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t332 ).
          ENDIF.
          CREATE OBJECT t314->zlnt_json_ownkeys_70e5fd461788.
          t314->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t333) = |qualifiedName|.
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t334.
          IF t314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t333 p1 = t334 ).
          ENDIF.
          t311 = t312->clone_type( i_input_967e = t314 ).
          t286 = t311.
        ENDIF.
        DATA(t335) = t286.
        t295 = t335.
        t285 = t295.
        t283 = t285.
      ELSE.
        DATA t336 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t336.
        t283 = t336.
      ENDIF.
      result = t283.
      RETURN.
    ENDIF.
    DATA t337 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t337.
    DATA t338 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t338.
    DATA t339 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t340 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t341 TYPE REF TO zcl_lnt_current_scope.
    DATA(t342) = me->input_2fd0.
    t341 = t342->scope.
    DATA(t343) = t69.
    t340 = t341->find_type_pool_type( i_name = t343 ).
    t339 = t340.
    DATA t344 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t344.
    DATA(t345) = VALUE abap_bool( ).
    DATA(t346) = t339.
    IF t346 IS INITIAL.
      t345 = abap_true.
    ENDIF.
    IF t345 = abap_true.
      DATA t347 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t347.
      t344 = t347.
    ELSE.
      DATA t348 TYPE REF TO zcl_lnt_abstract_type.
      DATA t349 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t350 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t351) = t339.
      t350 = t351.
      t349 = t350.
      DATA t352 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t353) = t349.
      t352 = t353->type_cba0.
      t348 = t352.
      t344 = t348.
    ENDIF.
    t338 = t344.
    t337 = t338.
    DATA t354 TYPE abap_bool.
    DATA(t355) = t337.
    t354 = xsdbool( t355 IS BOUND ).
    IF t354 = abap_true.
      DATA t356 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t356.
      DATA(t357) = abap_true.
      IF t357 = abap_true.
        DATA t358 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t359) = t337.
        t358 = t359.
        t356 = t358.
      ELSE.
        DATA t360 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t360.
        t356 = t360.
      ENDIF.
      result = t356.
      RETURN.
    ENDIF.
    DATA t361 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t361.
    DATA t362 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t362.
    DATA t363 TYPE REF TO zcl_lnt_ddic.
    DATA t364 TYPE REF TO zcl_lnt_ddic.
    DATA t365 TYPE REF TO zcl_lnt_current_scope.
    DATA t366 TYPE REF TO zcl_lnt_current_scope.
    DATA(t367) = me->input_2fd0.
    t366 = t367->scope.
    t365 = t366.
    DATA t368 TYPE REF TO zcl_lnt_ddic.
    DATA t369 TYPE REF TO zif_lnt_registry.
    DATA(t370) = t365.
    t369 = t370->reg.
    t368 = NEW zcl_lnt_ddic( i_reg_f149 = t369 ).
    t364 = t368.
    t363 = t364.
    DATA t371 TYPE string.
    DATA(t372) = t69.
    t371 = t372.
    DATA t373 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t373.
    DATA t374 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t375 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t376) = t363.
    DATA(t377) = t371.
    t375 = t376->lookup_no_void( i_name = t377 ).
    t374 = t375.
    DATA t378 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t378.
    DATA t379 TYPE abap_bool.
    DATA(t380) = t374.
    t379 = xsdbool( t380 IS BOUND ).
    IF t379 = abap_true.
      DATA t381 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t382) = t374.
      t381 = t382.
      t378 = t381.
    ELSE.
      DATA t383 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t383.
      DATA t384 TYPE abap_bool.
      DATA t385 TYPE REF TO zif_lnt_registry.
      DATA(t386) = t363.
      t385 = t386->reg.
      DATA(t387) = t371.
      t384 = t385->in_error_namespace( i_name = t387 ).
      IF t384 = abap_true.
        DATA t388 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t389 TYPE REF TO zcl_lnt_abstract_type.
        DATA t390 TYPE REF TO zcl_lnt_unknown_type.
        DATA t391 TYPE string.
        DATA(t392) = t371.
        DATA(t393) = | not found, lookup|.
        DATA(t394) = strlen( t392 ).
        t391 = |{ t392 }{ t393 }|.
        DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t395.
        t390 = NEW zcl_lnt_unknown_type( i_error = t391 i_qualified_name = t395 ).
        t389 = t390.
        DATA t396 TYPE REF TO zif_lnt_object.
        DATA t397 TYPE REF TO zif_lnt_object.
        CLEAR t397.
        t396 = t397.
        t388 = NEW zcl_lnt_ilookup_result( i_type_9913 = t389 i_object_19cd = t396 ).
        CREATE OBJECT t388->zlnt_view_ownkeys_b0e8086400eb.
        t388->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t398.
        IF t388->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t388->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t398 ).
        ENDIF.
        CREATE OBJECT t388->zlnt_json_ownkeys_70e5fd461788.
        t388->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t399) = |type|.
        DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t400.
        IF t388->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t388->zlnt_json_ownkeys_70e5fd461788->put( p0 = t399 p1 = t400 ).
        ENDIF.
        t383 = t388.
      ELSE.
        DATA t401 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t401.
        DATA t402 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t402.
        DATA t403 TYPE REF TO zcl_lnt_void_type.
        CLEAR t403.
        DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t404.
        DATA(t405) = abap_true.
        IF t405 = abap_true.
          DATA(t406) = t371.
          DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t407->has = abap_true.
          t407->value = t406.
          t404 = t407.
        ELSE.
          DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t408.
          t404 = t408.
        ENDIF.
        DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t409.
        t403 = zcl_lnt_void_type=>get_db65( i_voided = t404 i_qualified_name = t409 ).
        t402 = t403.
        DATA t410 TYPE REF TO zif_lnt_object.
        DATA t411 TYPE REF TO zif_lnt_object.
        CLEAR t411.
        t410 = t411.
        t401 = NEW zcl_lnt_ilookup_result( i_type_9913 = t402 i_object_19cd = t410 ).
        CREATE OBJECT t401->zlnt_view_ownkeys_b0e8086400eb.
        t401->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t412.
        IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t412 ).
        ENDIF.
        CREATE OBJECT t401->zlnt_json_ownkeys_70e5fd461788.
        t401->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t413) = |type|.
        DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t414.
        IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t413 p1 = t414 ).
        ENDIF.
        t383 = t401.
      ENDIF.
      t378 = t383.
    ENDIF.
    t373 = t378.
    t362 = t373.
    t361 = t362.
    DATA t415 TYPE abap_bool.
    DATA(t416) = t361.
    t415 = xsdbool( t416 IS BOUND ).
    IF t415 = abap_true.
      DATA t417 TYPE REF TO zif_lnt_ddic_references.
      DATA t418 TYPE REF TO zcl_lnt_current_scope.
      DATA t419 TYPE REF TO zcl_lnt_current_scope.
      DATA(t420) = me->input_2fd0.
      t419 = t420->scope.
      t418 = t419.
      DATA t421 TYPE REF TO zif_lnt_ddic_references.
      DATA t422 TYPE REF TO zif_lnt_registry.
      DATA(t423) = t418.
      t422 = t423->reg.
      t421 = t422->get_ddic_references( ).
      t417 = t421.
      DATA t424 TYPE REF TO zif_lnt_object.
      DATA t425 TYPE REF TO zcl_lnt_current_scope.
      DATA t426 TYPE REF TO zcl_lnt_current_scope.
      DATA(t427) = me->input_2fd0.
      t426 = t427->scope.
      t425 = t426.
      DATA t428 TYPE REF TO zif_lnt_object.
      DATA(t429) = t425.
      t428 = t429->parent_obj.
      t424 = t428.
      DATA t430 TYPE REF TO zcl_lnt_iobject_and_token.
      CLEAR t430.
      DATA(t431) = abap_true.
      IF t431 = abap_true.
        DATA t432 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t432.
        DATA t433 TYPE REF TO zif_lnt_object.
        DATA t434 TYPE REF TO zif_lnt_object.
        DATA(t435) = t361.
        t434 = t435->zlnt_view_read_sr_2de0200e6505( ).
        t433 = t434.
        DATA t436 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t436.
        DATA t437 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t437.
        DATA(t438) = abap_true.
        IF t438 = abap_true.
          DATA t439 TYPE REF TO zcl_lnt_abstract_token.
          DATA t440 TYPE REF TO zcl_lnt_expression_node.
          DATA(t441) = t1.
          t440 = t441.
          t439 = t440->get_first_token( ).
          t437 = t439.
        ELSE.
          DATA t442 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t442.
          t437 = t442.
        ENDIF.
        t436 = t437.
        DATA t443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t443.
        DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t444.
        DATA(t445) = abap_true.
        IF t445 = abap_true.
          DATA t446 TYPE string.
          DATA(t447) = me->input_2fd0.
          t446 = t447->filename.
          DATA(t448) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t448->has = abap_true.
          t448->value = t446.
          t444 = t448.
        ELSE.
          DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t449.
          t444 = t449.
        ENDIF.
        t443 = t444.
        t432 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t433 i_token = t436 i_filename = t443 ).
        CREATE OBJECT t432->zlnt_view_ownkeys_b0e8086400eb.
        t432->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t450.
        IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t450 ).
        ENDIF.
        DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t451.
        IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t451 ).
        ENDIF.
        DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t452.
        IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t452 ).
        ENDIF.
        CREATE OBJECT t432->zlnt_json_ownkeys_70e5fd461788.
        t432->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t453) = |object|.
        DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t454.
        IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t453 p1 = t454 ).
        ENDIF.
        DATA(t455) = |token|.
        DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t456.
        IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t455 p1 = t456 ).
        ENDIF.
        DATA(t457) = |filename|.
        DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t458.
        IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t457 p1 = t458 ).
        ENDIF.
        t430 = t432.
      ELSE.
        DATA t459 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t459.
        t430 = t459.
      ENDIF.
      t417->add_using( i_obj_1ed0 = t424 i_using = t430 ).
      DATA t460 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t461) = t361.
      t460 = t461->zlnt_view_read_sr_9be58e2d4893( ).
      DATA t462 TYPE abap_bool.
      DATA t463 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t464) = t361.
      t463 = t464->zlnt_view_read_sr_9be58e2d4893( ).
      t462 = xsdbool( t463 IS BOUND AND t463 IS INSTANCE OF zcl_lnt_void_type ).
      IF t462 = abap_true.
        DATA t465 TYPE REF TO zcl_lnt_current_scope.
        DATA(t466) = me->input_2fd0.
        t465 = t466->scope.
        DATA t467 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t467.
        DATA(t468) = abap_true.
        IF t468 = abap_true.
          DATA t469 TYPE REF TO zcl_lnt_abstract_token.
          DATA t470 TYPE REF TO zcl_lnt_expression_node.
          DATA(t471) = t1.
          t470 = t471.
          t469 = t470->get_first_token( ).
          t467 = t469.
        ELSE.
          DATA t472 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t472.
          t467 = t472.
        ENDIF.
        DATA t473 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t473.
        DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t474.
        DATA(t475) = |Type (Void)|.
        CLEAR t474.
        CREATE OBJECT t474.
        t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t474->sval = t475.
        DATA t476 TYPE string.
        DATA(t477) = me->input_2fd0.
        t476 = t477->filename.
        DATA t478 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t478.
        t465->add_reference( i_usage = t467 i_referencing = t473 i_type_9913 = t474 i_filename = t476 i_extra = t478 ).
      ENDIF.
      DATA t479 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t479.
      DATA(t480) = abap_true.
      IF t480 = abap_true.
        DATA t481 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t481.
        DATA t482 TYPE REF TO zcl_lnt_abstract_type.
        DATA t483 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t484) = t361.
        t483 = t484->zlnt_view_read_sr_9be58e2d4893( ).
        t482 = t483.
        DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t486) = t4.
        t485 = t486.
        DATA t487 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t487.
        DATA(t488) = VALUE abap_bool( ).
        DATA t489 TYPE abap_bool.
        DATA t490 TYPE abap_bool.
        DATA(t491) = t482.
        t490 = xsdbool( t491 IS BOUND AND t491 IS INSTANCE OF zcl_lnt_character_type ).
        t489 = t490.
        IF t490 = abap_true.
          DATA(t492) = VALUE abap_bool( ).
          DATA(t493) = t485.
          IF t493 IS BOUND.
            IF t493->has = abap_true.
              t492 = xsdbool( strlen( t493->value ) > 0 ).
            ENDIF.
          ENDIF.
          t489 = t492.
        ENDIF.
        t488 = t489.
        IF t489 = abap_true.
          DATA(t494) = VALUE abap_bool( ).
          DATA(t495) = VALUE abap_bool( ).
          DATA(t496) = VALUE i( ).
          DATA t497 TYPE string.
          DATA(t498) = t485.
          t497 = t498->value.
          DATA(t499) = |-|.
          DATA(t500) = strlen( t497 ).
          IF t499 IS INITIAL.
            t496 = 0.
          ELSE.
            FIND t499 IN t497 MATCH OFFSET t496.
            IF sy-subrc <> 0.
              t496 = -1.
            ENDIF.
          ENDIF.
          DATA(t501) = 0.
          t495 = xsdbool( t496 >= t501 ).
          DATA(t502) = abap_false.
          t494 = xsdbool( t495 = t502 ).
          t488 = t494.
        ENDIF.
        IF t488 = abap_true.
          DATA t503 TYPE REF TO zcl_lnt_character_type.
          CLEAR t503.
          DATA t504 TYPE REF TO zcl_lnt_character_type.
          DATA(t505) = t482.
          t504 ?= t505.
          DATA t506 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t506.
          DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t507.
          DATA t508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t508.
          DATA(t509) = abap_true.
          IF t509 = abap_true.
            DATA t510 TYPE string.
            DATA(t511) = t485.
            t510 = t511->value.
            DATA(t512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t512->has = abap_true.
            t512->value = t510.
            t508 = t512.
          ELSE.
            DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t513.
            t508 = t513.
          ENDIF.
          t507 = t508.
          DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t515.
          t514 = t515.
          DATA t516 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t517 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t517.
          t516 = t517.
          DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t519.
          t518 = t519.
          DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t521.
          t520 = t521.
          DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t523.
          t522 = t523.
          t506 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t507 i_conversion_exit = t514 i_derived_from_constant = t516 i_ddic_name = t518 i_rtti_name = t520 i_description = t522 ).
          CREATE OBJECT t506->zlnt_view_ownkeys_b0e8086400eb.
          t506->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t524.
          IF t506->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t506->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t524 ).
          ENDIF.
          CREATE OBJECT t506->zlnt_json_ownkeys_70e5fd461788.
          t506->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t525) = |qualifiedName|.
          DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t526.
          IF t506->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t506->zlnt_json_ownkeys_70e5fd461788->put( p0 = t525 p1 = t526 ).
          ENDIF.
          t503 = t504->clone_type( i_input_967e = t506 ).
          t482 = t503.
        ENDIF.
        DATA(t527) = t482.
        t487 = t527.
        t481 = t487.
        t479 = t481.
      ELSE.
        DATA t528 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t528.
        t479 = t528.
      ENDIF.
      result = t479.
      RETURN.
    ENDIF.
    DATA t529 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t529.
    result = t529.

  ENDMETHOD.

  METHOD simple_type.
    DATA(t1) = i_node.
    DATA(t2) = i_qualified_name_prefix.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t1.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t14 = t15->find_first_expression( i_type_9913 = t16 ).
      t3 = t14.
    ENDIF.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t19) = t3.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t18.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    t17 = t22.
    IF t17 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t24.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_abstract_token.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = t3.
    t27 = t28.
    t26 = t27->get_first_token( ).
    t25 = t26.
    DATA t29 TYPE abap_bool.
    DATA t30 TYPE f.
    DATA t31 TYPE REF TO zcl_lnt_expression_node.
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    DATA(t33) = t3.
    t32 = t33.
    t31 = t32.
    DATA t34 TYPE f.
    DATA(t35) = t31.
    t34 = t35->token_count.
    t30 = t34.
    DATA(t36) = CONV f( 1 ).
    t29 = xsdbool( t30 > t36 ).
    IF t29 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t38 TYPE REF TO zcl_lnt_position.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t40) = t25.
      t39 = t40.
      DATA t41 TYPE REF TO zcl_lnt_position.
      DATA(t42) = t39.
      t41 = t42->start.
      t38 = t41.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      DATA(t45) = t3.
      t44 = t45.
      t43 = t44->concat_tokens( ).
      t37 = NEW zcl_lnt_lx_identifier( i_start = t38 i_str = t43 ).
      t25 = t37.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    t46 = t47.
    DATA t48 TYPE abap_bool.
    DATA t49 TYPE REF TO object.
    DATA(t50) = t1.
    t49 = t50->get_db65( ).
    t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_st_statem_type ).
    IF t48 = abap_true.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      DATA t53 TYPE REF TO zcl_lnt_current_scope.
      DATA t54 TYPE REF TO zcl_lnt_current_scope.
      DATA(t55) = me->input_2fd0.
      t54 = t55->scope.
      t53 = t54.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t62.
      DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t65) = t53.
      t64 = t65->current.
      t63 = t64.
      DATA t66 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = t63.
      IF t68 IS INITIAL.
        t67 = abap_true.
      ENDIF.
      IF t67 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t69.
        t66 = t69.
      ELSE.
        DATA t70 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t71 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t73) = t63.
        t72 = t73.
        t71 = t72.
        DATA t74 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA(t75) = t71.
        t74 = t75->identifier.
        t70 = t74.
        t66 = t70.
      ENDIF.
      t62 = t66.
      t61 = t62.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t61.
      IF t78 IS INITIAL.
        t77 = abap_true.
      ENDIF.
      IF t77 = abap_true.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        t76 = t79.
      ELSE.
        DATA t80 TYPE string.
        DATA t81 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA(t82) = t61.
        t81 = t82.
        t80 = t81->filename.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t80.
        t76 = t83.
      ENDIF.
      t60 = t76.
      t59 = t60.
      DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t84.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = t59.
      IF t86 IS INITIAL.
        t85 = abap_true.
      ELSEIF t86->has = abap_false.
        t85 = abap_true.
      ENDIF.
      IF t85 = abap_true.
        DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t87.
        t84 = t87.
      ELSE.
        DATA(t88) = VALUE abap_bool( ).
        DATA t89 TYPE string.
        DATA(t90) = t59.
        t89 = t90->value.
        DATA(t91) = |.type.abap|.
        DATA(t92) = strlen( t89 ).
        DATA t93 TYPE i.
        DATA(t94) = VALUE i( ).
        DATA(t95) = VALUE string( ).
        t93 = strlen( t91 ).
        IF t93 = 0.
          t88 = abap_true.
        ELSEIF t93 <= t92.
          t94 = 0.
          t94 = t92 - t93.
          t95 = t89+t94(t93).
          IF t95 = t91.
            t88 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t96) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t96->has = abap_true.
        t96->value = t88.
        t84 = t96.
      ENDIF.
      t58 = t84.
      DATA t97 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t97.
      DATA(t98) = abap_true.
      IF t98 = abap_true.
        DATA(t99) = abap_true.
        DATA(t100) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t100->has = abap_true.
        t100->value = t99.
        t97 = t100.
      ELSE.
        DATA t101 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t101.
        t97 = t101.
      ENDIF.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = VALUE abap_bool( ).
      IF t58 IS BOUND.
        t102 = t58->has.
      ENDIF.
      IF t97 IS BOUND.
        t103 = t97->has.
      ENDIF.
      IF t102 = t103.
        IF t102 = abap_false.
          t57 = abap_true.
        ELSEIF t58->value = t97->value.
          t57 = abap_true.
        ENDIF.
      ENDIF.
      t56 = t57.
      IF t57 = abap_false.
        DATA(t104) = abap_false.
        t56 = t104.
      ENDIF.
      t52 = t56.
      DATA(t105) = abap_true.
      t51 = xsdbool( t52 = t105 ).
      IF t51 = abap_true.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA(t107) = abap_true.
        IF t107 = abap_true.
          DATA t108 TYPE string.
          DATA t109 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t110) = t25.
          t109 = t110.
          DATA t111 TYPE string.
          DATA(t112) = t109.
          t111 = t112->str.
          t108 = t111.
          DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t113->has = abap_true.
          t113->value = t108.
          t106 = t113.
        ELSE.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          t106 = t114.
        ENDIF.
        t46 = t106.
      ELSE.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA(t117) = VALUE string( ).
          DATA(t118) = VALUE string( ).
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t120) = t2.
          t119 = t120.
          DATA(t121) = VALUE string( ).
          DATA(t122) = VALUE abap_bool( ).
          DATA(t123) = t119.
          IF t123 IS BOUND.
            IF t123->has = abap_true.
              t122 = xsdbool( strlen( t123->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t122 = abap_true.
            DATA t124 TYPE string.
            DATA(t125) = t119.
            t124 = t125->value.
            t121 = t124.
          ELSE.
            DATA(t126) = ||.
            t121 = t126.
          ENDIF.
          t118 = t121.
          DATA t127 TYPE string.
          DATA t128 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t129) = t25.
          t128 = t129.
          DATA t130 TYPE string.
          DATA(t131) = t128.
          t130 = t131->str.
          t127 = t130.
          DATA(t132) = strlen( t118 ).
          t117 = |{ t118 }{ t127 }|.
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t117.
          t115 = t133.
        ELSE.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          t115 = t134.
        ENDIF.
        t46 = t115.
        DATA t135 TYPE abap_bool.
        DATA t136 TYPE abap_bool.
        DATA t137 TYPE string.
        DATA t138 TYPE REF TO zcl_lnt_current_scope.
        DATA(t139) = me->input_2fd0.
        t138 = t139->scope.
        t137 = t138->get_type( ).
        DATA(t140) = |class_definition|.
        t136 = xsdbool( t137 = t140 ).
        t135 = t136.
        IF t136 = abap_false.
          DATA t141 TYPE abap_bool.
          DATA t142 TYPE string.
          DATA t143 TYPE REF TO zcl_lnt_current_scope.
          DATA(t144) = me->input_2fd0.
          t143 = t144->scope.
          t142 = t143->get_type( ).
          DATA(t145) = |interface|.
          t141 = xsdbool( t142 = t145 ).
          t135 = t141.
        ENDIF.
        IF t135 = abap_true.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          DATA(t147) = abap_true.
          IF t147 = abap_true.
            DATA t148 TYPE string.
            DATA t149 TYPE string.
            DATA t150 TYPE string.
            DATA t151 TYPE REF TO zcl_lnt_current_scope.
            DATA(t152) = me->input_2fd0.
            t151 = t152->scope.
            t150 = t151->get_name( ).
            DATA(t153) = |=>|.
            DATA(t154) = strlen( t150 ).
            t149 = |{ t150 }{ t153 }|.
            DATA t155 TYPE string.
            DATA(t156) = t46.
            t155 = t156->value.
            DATA(t157) = strlen( t149 ).
            t148 = |{ t149 }{ t155 }|.
            DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t158->has = abap_true.
            t158->value = t148.
            t146 = t158.
          ELSE.
            DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t159.
            t146 = t159.
          ENDIF.
          t46 = t146.
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t160) = VALUE abap_bool( ).
      DATA(t161) = t2.
      IF t161 IS BOUND.
        IF t161->has = abap_true.
          t160 = xsdbool( strlen( t161->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t160 = abap_true.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        DATA(t163) = abap_true.
        IF t163 = abap_true.
          DATA(t164) = VALUE string( ).
          DATA t165 TYPE string.
          DATA(t166) = t2.
          t165 = t166->value.
          DATA(t167) = VALUE string( ).
          DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t169) = t46.
          t168 = t169.
          DATA(t170) = VALUE string( ).
          DATA(t171) = VALUE abap_bool( ).
          DATA(t172) = t168.
          IF t172 IS INITIAL.
            t171 = abap_true.
          ELSEIF t172->has = abap_false.
            t171 = abap_true.
          ENDIF.
          IF t171 = abap_true.
            DATA(t173) = |undefined|.
            t170 = t173.
          ELSE.
            DATA t174 TYPE string.
            DATA(t175) = t168.
            t174 = t175->value.
            t170 = t174.
          ENDIF.
          t167 = t170.
          DATA(t176) = strlen( t165 ).
          t164 = |{ t165 }{ t167 }|.
          DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t177->has = abap_true.
          t177->value = t164.
          t162 = t177.
        ELSE.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          t162 = t178.
        ENDIF.
        t46 = t162.
      ENDIF.
    ENDIF.
    DATA t179 TYPE REF TO zcl_lnt_abstract_type.
    DATA t180 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t181) = t1.
    DATA(t182) = t46.
    t180 = me->parse_type( i_node = t181 i_qualified_name = t182 ).
    t179 = t180.
    DATA t183 TYPE abap_bool.
    DATA(t184) = t179.
    t183 = xsdbool( t184 IS BOUND ).
    IF t183 = abap_true.
      DATA t185 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t185.
      DATA(t186) = abap_true.
      IF t186 = abap_true.
        DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t188) = t25.
        DATA t189 TYPE string.
        DATA(t190) = me->input_2fd0.
        t189 = t190->filename.
        DATA t191 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t192) = t179.
        t191 = t192.
        DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t193.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        t187 = NEW zcl_lnt_typed_identifier( i_token = t188 i_filename = t189 i_type_9913 = t191 i_meta = t193 i_value = t194 ).
        t185 = t187.
      ELSE.
        DATA t195 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t195.
        t185 = t195.
      ENDIF.
      result = t185.
      RETURN.
    ENDIF.
    DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t196.
    result = t196.

  ENDMETHOD.

  METHOD parse_table.
    DATA(t1) = i_node.
    DATA(t2) = i_name.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA t10 TYPE abap_bool.
    DATA(t11) = t5.
    t10 = xsdbool( t11 IS BOUND ).
    IF t10 = abap_true.
      DATA(t12) = t5.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = t1.
      DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
      t13 = t14->find_first_expression( i_type_9913 = t15 ).
      t9 = t13.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    t21 = t22->find_first_expression( i_type_9913 = t23 ).
    t20 = t21.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t20.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t24 = t27.
    ELSE.
      DATA t28 TYPE string.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA(t30) = t20.
      t29 = t30.
      t28 = t29->concat_tokens( ).
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t28.
      t24 = t31.
    ENDIF.
    t19 = t24.
    t18 = t19.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t18.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ELSEIF t34->has = abap_false.
      t33 = abap_true.
    ENDIF.
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t32 = t35.
    ELSE.
      DATA t36 TYPE string.
      DATA t37 TYPE string.
      DATA(t38) = t18.
      t37 = t38->value.
      DATA(t39) = strlen( t37 ).
      t36 = t37.
      IF t36 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t36 TO UPPER CASE.
      ELSE.
        t36 = zlnt_runtime_uppe_91169605024d=>full( t36 ).
      ENDIF.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t36.
      t32 = t40.
    ENDIF.
    t17 = t32.
    t16 = t17.
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t43) = t16.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    t44 = t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = t42.
    IF t47 IS INITIAL.
      t46 = abap_true.
    ELSEIF t47->has = abap_false.
      t46 = abap_true.
    ENDIF.
    t41 = t46.
    IF t41 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t48.
      result = t48.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    t49 = t50.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA t55 TYPE string.
    DATA(t56) = t16.
    t55 = t56->value.
    DATA(t57) = |TYPE STANDARD TABLE |.
    DATA(t58) = strlen( t55 ).
    DATA t59 TYPE i.
    DATA(t60) = VALUE i( ).
    DATA(t61) = VALUE string( ).
    t59 = strlen( t57 ).
    IF t59 = 0.
      t54 = abap_true.
    ELSEIF t59 <= t58.
      t60 = 0.
      t61 = t55+t60(t59).
      IF t61 = t57.
        t54 = abap_true.
      ENDIF.
    ENDIF.
    t53 = t54.
    IF t54 = abap_false.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE string.
      DATA(t64) = t16.
      t63 = t64->value.
      DATA(t65) = |TYPE TABLE |.
      DATA(t66) = strlen( t63 ).
      DATA t67 TYPE i.
      DATA(t68) = VALUE i( ).
      DATA(t69) = VALUE string( ).
      t67 = strlen( t65 ).
      IF t67 = 0.
        t62 = abap_true.
      ELSEIF t67 <= t66.
        t68 = 0.
        t69 = t63+t68(t67).
        IF t69 = t65.
          t62 = abap_true.
        ENDIF.
      ENDIF.
      t53 = t62.
    ENDIF.
    t52 = t53.
    IF t53 = abap_false.
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE string.
      DATA(t72) = t16.
      t71 = t72->value.
      DATA(t73) = |LIKE TABLE |.
      DATA(t74) = strlen( t71 ).
      DATA t75 TYPE i.
      DATA(t76) = VALUE i( ).
      DATA(t77) = VALUE string( ).
      t75 = strlen( t73 ).
      IF t75 = 0.
        t70 = abap_true.
      ELSEIF t75 <= t74.
        t76 = 0.
        t77 = t71+t76(t75).
        IF t77 = t73.
          t70 = abap_true.
        ENDIF.
      ENDIF.
      t52 = t70.
    ENDIF.
    t51 = t52.
    IF t52 = abap_false.
      DATA(t78) = VALUE abap_bool( ).
      DATA t79 TYPE string.
      DATA(t80) = t16.
      t79 = t80->value.
      DATA(t81) = |LIKE STANDARD TABLE |.
      DATA(t82) = strlen( t79 ).
      DATA t83 TYPE i.
      DATA(t84) = VALUE i( ).
      DATA(t85) = VALUE string( ).
      t83 = strlen( t81 ).
      IF t83 = 0.
        t78 = abap_true.
      ELSEIF t83 <= t82.
        t84 = 0.
        t85 = t79+t84(t83).
        IF t85 = t81.
          t78 = abap_true.
        ENDIF.
      ENDIF.
      t51 = t78.
    ENDIF.
    IF t51 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      DATA(t87) = abap_true.
      IF t87 = abap_true.
        DATA(t88) = |STANDARD|.
        DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t89->has = abap_true.
        t89->value = t88.
        t86 = t89.
      ELSE.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        t86 = t90.
      ENDIF.
      t49 = t86.
    ELSE.
      DATA(t91) = VALUE abap_bool( ).
      DATA(t92) = VALUE abap_bool( ).
      DATA t93 TYPE string.
      DATA(t94) = t16.
      t93 = t94->value.
      DATA(t95) = |TYPE SORTED TABLE |.
      DATA(t96) = strlen( t93 ).
      DATA t97 TYPE i.
      DATA(t98) = VALUE i( ).
      DATA(t99) = VALUE string( ).
      t97 = strlen( t95 ).
      IF t97 = 0.
        t92 = abap_true.
      ELSEIF t97 <= t96.
        t98 = 0.
        t99 = t93+t98(t97).
        IF t99 = t95.
          t92 = abap_true.
        ENDIF.
      ENDIF.
      t91 = t92.
      IF t92 = abap_false.
        DATA(t100) = VALUE abap_bool( ).
        DATA t101 TYPE string.
        DATA(t102) = t16.
        t101 = t102->value.
        DATA(t103) = |LIKE SORTED TABLE |.
        DATA(t104) = strlen( t101 ).
        DATA t105 TYPE i.
        DATA(t106) = VALUE i( ).
        DATA(t107) = VALUE string( ).
        t105 = strlen( t103 ).
        IF t105 = 0.
          t100 = abap_true.
        ELSEIF t105 <= t104.
          t106 = 0.
          t107 = t101+t106(t105).
          IF t107 = t103.
            t100 = abap_true.
          ENDIF.
        ENDIF.
        t91 = t100.
      ENDIF.
      IF t91 = abap_true.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA(t109) = abap_true.
        IF t109 = abap_true.
          DATA(t110) = |SORTED|.
          DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t111->has = abap_true.
          t111->value = t110.
          t108 = t111.
        ELSE.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          t108 = t112.
        ENDIF.
        t49 = t108.
      ELSE.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = VALUE abap_bool( ).
        DATA t115 TYPE string.
        DATA(t116) = t16.
        t115 = t116->value.
        DATA(t117) = |TYPE HASHED TABLE |.
        DATA(t118) = strlen( t115 ).
        DATA t119 TYPE i.
        DATA(t120) = VALUE i( ).
        DATA(t121) = VALUE string( ).
        t119 = strlen( t117 ).
        IF t119 = 0.
          t114 = abap_true.
        ELSEIF t119 <= t118.
          t120 = 0.
          t121 = t115+t120(t119).
          IF t121 = t117.
            t114 = abap_true.
          ENDIF.
        ENDIF.
        t113 = t114.
        IF t114 = abap_false.
          DATA(t122) = VALUE abap_bool( ).
          DATA t123 TYPE string.
          DATA(t124) = t16.
          t123 = t124->value.
          DATA(t125) = |LIKE HASHED TABLE |.
          DATA(t126) = strlen( t123 ).
          DATA t127 TYPE i.
          DATA(t128) = VALUE i( ).
          DATA(t129) = VALUE string( ).
          t127 = strlen( t125 ).
          IF t127 = 0.
            t122 = abap_true.
          ELSEIF t127 <= t126.
            t128 = 0.
            t129 = t123+t128(t127).
            IF t129 = t125.
              t122 = abap_true.
            ENDIF.
          ENDIF.
          t113 = t122.
        ENDIF.
        IF t113 = abap_true.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA(t131) = abap_true.
          IF t131 = abap_true.
            DATA(t132) = |HASHED|.
            DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t133->has = abap_true.
            t133->value = t132.
            t130 = t133.
          ELSE.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t134.
            t130 = t134.
          ENDIF.
          t49 = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t137) = t1.
    DATA(t138) = zlnt_runtime_desc_78196487750d=>zlnt_member_d353_58ca0f41496e.
    t136 = t137->find_all_expressions( i_type_9913 = t138 ).
    t135 = t136.
    DATA t139 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t139.
    DATA t140 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t140.
    DATA(t141) = t135.
    DATA t142 TYPE REF TO object.
    CLEAR t142.
    t141->load( ).
    CLEAR t142.
    READ TABLE t141->items INDEX 1 INTO t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    CLEAR t140.
    IF t142 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t143 ?= t142.
      DATA t144 TYPE REF TO object.
      t144 = t143->as_ref( ).
      t140 ?= t144.
    ELSE.
      t140 ?= t142.
    ENDIF.
    t139 = t140.
    DATA(t145) = VALUE abap_bool( ).
    DATA(t146) = VALUE abap_bool( ).
    DATA(t147) = VALUE abap_bool( ).
    DATA t148 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t148.
    DATA t149 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t149.
    DATA t150 TYPE REF TO zcl_lnt_expression_node.
    DATA(t151) = t139.
    t150 = t151.
    DATA t152 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t152.
    DATA(t153) = VALUE abap_bool( ).
    DATA(t154) = t150.
    IF t154 IS INITIAL.
      t153 = abap_true.
    ENDIF.
    IF t153 = abap_true.
      DATA t155 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t155.
      t152 = t155.
    ELSE.
      DATA t156 TYPE REF TO zcl_lnt_expression_node.
      DATA(t157) = t150.
      DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
      t156 = t157->find_direct_expression( i_type_9913 = t158 ).
      t152 = t156.
    ENDIF.
    t149 = t152.
    t148 = t149.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    t159 = t160.
    DATA(t161) = VALUE abap_bool( ).
    DATA(t162) = VALUE abap_bool( ).
    DATA(t163) = t148.
    IF t163 IS INITIAL.
      t162 = abap_true.
    ENDIF.
    t161 = xsdbool( t162 = abap_false ).
    t147 = t161.
    t146 = t147.
    IF t147 = abap_true.
      DATA(t164) = VALUE abap_bool( ).
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t165.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t166.
      DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t167.
      DATA t168 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t168.
      DATA t169 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t169.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      DATA(t171) = t139.
      t170 = t171.
      DATA t172 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t172.
      DATA(t173) = VALUE abap_bool( ).
      DATA(t174) = t170.
      IF t174 IS INITIAL.
        t173 = abap_true.
      ENDIF.
      IF t173 = abap_true.
        DATA t175 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t175.
        t172 = t175.
      ELSE.
        DATA t176 TYPE REF TO zcl_lnt_expression_node.
        DATA(t177) = t170.
        DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
        t176 = t177->find_direct_expression( i_type_9913 = t178 ).
        t172 = t176.
      ENDIF.
      t169 = t172.
      t168 = t169.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t179.
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = t168.
      IF t181 IS INITIAL.
        t180 = abap_true.
      ENDIF.
      IF t180 = abap_true.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        t179 = t182.
      ELSE.
        DATA t183 TYPE string.
        DATA t184 TYPE REF TO zcl_lnt_expression_node.
        DATA(t185) = t168.
        t184 = t185.
        t183 = t184->concat_tokens( ).
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t183.
        t179 = t186.
      ENDIF.
      t167 = t179.
      t166 = t167.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t187.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = t166.
      IF t189 IS INITIAL.
        t188 = abap_true.
      ELSEIF t189->has = abap_false.
        t188 = abap_true.
      ENDIF.
      IF t188 = abap_true.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        t187 = t190.
      ELSE.
        DATA t191 TYPE string.
        DATA t192 TYPE string.
        DATA(t193) = t166.
        t192 = t193->value.
        DATA(t194) = strlen( t192 ).
        t191 = t192.
        IF t191 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t191 TO UPPER CASE.
        ELSE.
          t191 = zlnt_runtime_uppe_91169605024d=>full( t191 ).
        ENDIF.
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t191.
        t187 = t195.
      ENDIF.
      t165 = t187.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      DATA(t197) = abap_true.
      IF t197 = abap_true.
        DATA(t198) = |PRIMARY_KEY|.
        DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t199->has = abap_true.
        t199->value = t198.
        t196 = t199.
      ELSE.
        DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t200.
        t196 = t200.
      ENDIF.
      DATA(t201) = VALUE abap_bool( ).
      DATA(t202) = VALUE abap_bool( ).
      IF t165 IS BOUND.
        t201 = t165->has.
      ENDIF.
      IF t196 IS BOUND.
        t202 = t196->has.
      ENDIF.
      IF t201 = t202.
        IF t201 = abap_false.
          t164 = abap_true.
        ELSEIF t165->value = t196->value.
          t164 = abap_true.
        ENDIF.
      ENDIF.
      IF t164 = abap_true.
        t164 = abap_false.
      ELSE.
        t164 = abap_true.
      ENDIF.
      t146 = t164.
    ENDIF.
    t145 = t146.
    DATA t203 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t203.
    DATA t204 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t204.
    DATA t205 TYPE string.
    DATA(t206) = |primary_key|.
    t205 = t206.
    DATA(t207) = VALUE string( ).
    DATA(t208) = VALUE string( ).
    DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t210) = t49.
    t209 = t210.
    DATA(t211) = VALUE string( ).
    DATA(t212) = VALUE abap_bool( ).
    DATA(t213) = t209.
    IF t213 IS BOUND.
      IF t213->has = abap_true.
        t212 = xsdbool( strlen( t213->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t212 = abap_true.
      DATA t214 TYPE string.
      DATA(t215) = t209.
      t214 = t215->value.
      t211 = t214.
    ELSE.
      DATA(t216) = |STANDARD|.
      t211 = t216.
    ENDIF.
    t208 = t211.
    t207 = t208.
    DATA(t217) = VALUE abap_bool( ).
    DATA(t218) = VALUE abap_bool( ).
    DATA(t219) = t145.
    IF t219 = abap_true.
      DATA(t220) = abap_false.
      t218 = t220.
    ELSE.
      DATA(t221) = VALUE abap_bool( ).
      DATA t222 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t222.
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t224.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t225.
      DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t226.
      DATA t227 TYPE REF TO zcl_lnt_expression_node.
      DATA(t228) = t139.
      t227 = t228.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t229.
      DATA(t230) = VALUE abap_bool( ).
      DATA(t231) = t227.
      IF t231 IS INITIAL.
        t230 = abap_true.
      ENDIF.
      IF t230 = abap_true.
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t232.
        t229 = t232.
      ELSE.
        DATA t233 TYPE string.
        DATA(t234) = t227.
        t233 = t234->concat_tokens( ).
        DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t235->has = abap_true.
        t235->value = t233.
        t229 = t235.
      ENDIF.
      t226 = t229.
      t225 = t226.
      DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t236.
      DATA(t237) = VALUE abap_bool( ).
      DATA(t238) = t225.
      IF t238 IS INITIAL.
        t237 = abap_true.
      ELSEIF t238->has = abap_false.
        t237 = abap_true.
      ENDIF.
      IF t237 = abap_true.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        t236 = t239.
      ELSE.
        DATA t240 TYPE string.
        DATA t241 TYPE string.
        DATA(t242) = t225.
        t241 = t242->value.
        DATA(t243) = strlen( t241 ).
        t240 = t241.
        IF t240 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t240 TO UPPER CASE.
        ELSE.
          t240 = zlnt_runtime_uppe_91169605024d=>full( t240 ).
        ENDIF.
        DATA(t244) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t244->has = abap_true.
        t244->value = t240.
        t236 = t244.
      ENDIF.
      t224 = t236.
      t223 = t224.
      DATA t245 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t245.
      DATA(t246) = VALUE abap_bool( ).
      DATA(t247) = t223.
      IF t247 IS INITIAL.
        t246 = abap_true.
      ELSEIF t247->has = abap_false.
        t246 = abap_true.
      ENDIF.
      IF t246 = abap_true.
        DATA t248 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t248.
        t245 = t248.
      ELSE.
        DATA(t249) = VALUE abap_bool( ).
        DATA(t250) = VALUE i( ).
        DATA t251 TYPE string.
        DATA(t252) = t223.
        t251 = t252->value.
        DATA(t253) = |WITH UNIQUE |.
        DATA(t254) = strlen( t251 ).
        IF t253 IS INITIAL.
          t250 = 0.
        ELSE.
          FIND t253 IN t251 MATCH OFFSET t250.
          IF sy-subrc <> 0.
            t250 = -1.
          ENDIF.
        ENDIF.
        DATA(t255) = 0.
        t249 = xsdbool( t250 >= t255 ).
        DATA(t256) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t256->has = abap_true.
        t256->value = t249.
        t245 = t256.
      ENDIF.
      t222 = t245.
      DATA t257 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t257.
      DATA(t258) = abap_true.
      IF t258 = abap_true.
        DATA(t259) = abap_true.
        DATA(t260) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t260->has = abap_true.
        t260->value = t259.
        t257 = t260.
      ELSE.
        DATA t261 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t261.
        t257 = t261.
      ENDIF.
      DATA(t262) = VALUE abap_bool( ).
      DATA(t263) = VALUE abap_bool( ).
      IF t222 IS BOUND.
        t262 = t222->has.
      ENDIF.
      IF t257 IS BOUND.
        t263 = t257->has.
      ENDIF.
      IF t262 = t263.
        IF t262 = abap_false.
          t221 = abap_true.
        ELSEIF t222->value = t257->value.
          t221 = abap_true.
        ENDIF.
      ENDIF.
      t218 = t221.
    ENDIF.
    t217 = t218.
    DATA t264 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t265 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t265.
    t264 = t265.
    t204 = NEW zcl_lnt_itable_key( i_name = t205 i_type_9913 = t207 i_key_fields = t264 i_is_unique = t217 ).
    CREATE OBJECT t204->zlnt_view_ownkeys_b0e8086400eb.
    t204->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t266 ).
    ENDIF.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t267 ).
    ENDIF.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isUnique` p1 = t268 ).
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyFields` p1 = t269 ).
    ENDIF.
    CREATE OBJECT t204->zlnt_json_ownkeys_70e5fd461788.
    t204->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t270) = |name|.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t270 p1 = t271 ).
    ENDIF.
    DATA(t272) = |type|.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t272 p1 = t273 ).
    ENDIF.
    DATA(t274) = |isUnique|.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t274 p1 = t275 ).
    ENDIF.
    DATA(t276) = |keyFields|.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
    ENDIF.
    t203 = t204.
    DATA t278 TYPE i.
    DATA(t279) = 1.
    t278 = t279.
    DATA t280 TYPE abap_bool.
    DATA(t281) = t145.
    DATA(t282) = abap_false.
    t280 = xsdbool( t281 = t282 ).
    IF t280 = abap_true.
      DATA t283 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t283.
      DATA t284 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t284.
      DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t285.
      DATA t286 TYPE REF TO zcl_lnt_expression_node.
      DATA(t287) = t139.
      t286 = t287.
      DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t288.
      DATA(t289) = VALUE abap_bool( ).
      DATA(t290) = t286.
      IF t290 IS INITIAL.
        t289 = abap_true.
      ENDIF.
      IF t289 = abap_true.
        DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t291.
        t288 = t291.
      ELSE.
        DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t293) = t286.
        DATA(t294) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t292 = t293->find_direct_expressions( i_type_9913 = t294 ).
        t288 = t292.
      ENDIF.
      t285 = t288.
      t284 = t285.
      DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t295.
      DATA t296 TYPE abap_bool.
      DATA(t297) = t284.
      t296 = xsdbool( t297 IS BOUND ).
      IF t296 = abap_true.
        DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t299) = t284.
        t298 = t299.
        t295 = t298.
      ELSE.
        DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t300.
        t295 = t300.
      ENDIF.
      t283 = t295.
      DATA t301 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t301.
      DATA t302 TYPE REF TO object.
      CLEAR t302.
      DATA(t303) = VALUE i( ).
      DO.
        t283->load( ).
        IF t303 >= lines( t283->items ).
          EXIT.
        ENDIF.
        CLEAR t302.
        READ TABLE t283->items INDEX t303 + 1 INTO t302.
        t303 = t303 + 1.
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t304.
        CLEAR t301.
        IF t302 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t304 ?= t302.
          DATA t305 TYPE REF TO object.
          t305 = t304->as_ref( ).
          t301 ?= t305.
        ELSE.
          t301 ?= t302.
        ENDIF.
        DATA t306 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t307) = t203.
        t306 = t307->zlnt_view_read_sr_e0192e283129( ).
        DATA t308 TYPE string.
        DATA t309 TYPE string.
        DATA(t310) = t301.
        t309 = t310->concat_tokens( ).
        DATA(t311) = strlen( t309 ).
        t308 = t309.
        IF t308 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t308 TO UPPER CASE.
        ELSE.
          t308 = zlnt_runtime_uppe_91169605024d=>full( t308 ).
        ENDIF.
        t306->load( ).
        APPEND t308 TO t306->items.
        t306->save( ).
      ENDDO.
    ELSE.
      DATA(t312) = 0.
      t278 = t312.
    ENDIF.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t314.
    t313 = t314.
    DATA t315 TYPE i.
    DATA(t316) = t278.
    t315 = t316.
    DO.
      DATA t317 TYPE abap_bool.
      DATA(t318) = t315.
      DATA t319 TYPE i.
      DATA(t320) = t135.
      t320->load( ).
      t319 = lines( t320->items ).
      t317 = xsdbool( t318 < t319 ).
      IF t317 = abap_false.
        EXIT.
      ENDIF.
      DATA t321 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t321.
      DATA t322 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t322.
      DATA(t323) = t135.
      DATA(t324) = t315.
      t324 = t324 + 1.
      DATA t325 TYPE REF TO object.
      CLEAR t325.
      t323->load( ).
      CLEAR t325.
      READ TABLE t323->items INDEX t324 INTO t325.
      DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t326.
      CLEAR t322.
      IF t325 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t326 ?= t325.
        DATA t327 TYPE REF TO object.
        t327 = t326->as_ref( ).
        t322 ?= t327.
      ELSE.
        t322 ?= t325.
      ENDIF.
      t321 = t322.
      DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t328.
      DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t329.
      DATA t330 TYPE REF TO zcl_lnt_expression_node.
      DATA t331 TYPE REF TO zcl_lnt_expression_node.
      DATA(t332) = t321.
      DATA(t333) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
      t331 = t332->find_direct_expression( i_type_9913 = t333 ).
      t330 = t331.
      DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t334.
      DATA(t335) = VALUE abap_bool( ).
      DATA(t336) = t330.
      IF t336 IS INITIAL.
        t335 = abap_true.
      ENDIF.
      IF t335 = abap_true.
        DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t337.
        t334 = t337.
      ELSE.
        DATA t338 TYPE string.
        DATA t339 TYPE REF TO zcl_lnt_expression_node.
        DATA(t340) = t330.
        t339 = t340.
        t338 = t339->concat_tokens( ).
        DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t341->has = abap_true.
        t341->value = t338.
        t334 = t341.
      ENDIF.
      t329 = t334.
      t328 = t329.
      DATA(t342) = VALUE abap_bool( ).
      DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t344) = t328.
      t343 = t344.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t346.
      t345 = t346.
      DATA(t347) = VALUE abap_bool( ).
      DATA(t348) = t343.
      IF t348 IS INITIAL.
        t347 = abap_true.
      ELSEIF t348->has = abap_false.
        t347 = abap_true.
      ENDIF.
      t342 = t347.
      IF t342 = abap_true.
        DATA t349 TYPE i.
        DATA(t350) = t315.
        DATA(t351) = 1.
        t349 = t350 + t351.
        t315 = t349.
        CONTINUE.
      ENDIF.
      DATA t352 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t352.
      DATA t353 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t353.
      DATA t354 TYPE string.
      DATA t355 TYPE string.
      DATA(t356) = t328.
      t355 = t356->value.
      t354 = t355.
      DATA(t357) = VALUE string( ).
      DATA(t358) = VALUE string( ).
      DATA t359 TYPE abap_bool.
      DATA t360 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t361) = t321.
      DATA(t362) = |SORTED|.
      t360 = t361->find_direct_token_by_text( i_text = t362 ).
      t359 = xsdbool( t360 IS BOUND ).
      IF t359 = abap_true.
        DATA(t363) = |SORTED|.
        t358 = t363.
      ELSE.
        DATA(t364) = |HASHED|.
        t358 = t364.
      ENDIF.
      t357 = t358.
      DATA(t365) = VALUE abap_bool( ).
      DATA(t366) = VALUE abap_bool( ).
      DATA t367 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t367.
      DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t368.
      DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t369.
      DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t370.
      DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t371.
      DATA t372 TYPE REF TO zcl_lnt_expression_node.
      DATA(t373) = t321.
      t372 = t373.
      DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t374.
      DATA(t375) = VALUE abap_bool( ).
      DATA(t376) = t372.
      IF t376 IS INITIAL.
        t375 = abap_true.
      ENDIF.
      IF t375 = abap_true.
        DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t377.
        t374 = t377.
      ELSE.
        DATA t378 TYPE string.
        DATA(t379) = t372.
        t378 = t379->concat_tokens( ).
        DATA(t380) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t380->has = abap_true.
        t380->value = t378.
        t374 = t380.
      ENDIF.
      t371 = t374.
      t370 = t371.
      DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t381.
      DATA(t382) = VALUE abap_bool( ).
      DATA(t383) = t370.
      IF t383 IS INITIAL.
        t382 = abap_true.
      ELSEIF t383->has = abap_false.
        t382 = abap_true.
      ENDIF.
      IF t382 = abap_true.
        DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t384.
        t381 = t384.
      ELSE.
        DATA t385 TYPE string.
        DATA t386 TYPE string.
        DATA(t387) = t370.
        t386 = t387->value.
        DATA(t388) = strlen( t386 ).
        t385 = t386.
        IF t385 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t385 TO UPPER CASE.
        ELSE.
          t385 = zlnt_runtime_uppe_91169605024d=>full( t385 ).
        ENDIF.
        DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t389->has = abap_true.
        t389->value = t385.
        t381 = t389.
      ENDIF.
      t369 = t381.
      t368 = t369.
      DATA t390 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t390.
      DATA(t391) = VALUE abap_bool( ).
      DATA(t392) = t368.
      IF t392 IS INITIAL.
        t391 = abap_true.
      ELSEIF t392->has = abap_false.
        t391 = abap_true.
      ENDIF.
      IF t391 = abap_true.
        DATA t393 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t393.
        t390 = t393.
      ELSE.
        DATA(t394) = VALUE abap_bool( ).
        DATA(t395) = VALUE i( ).
        DATA t396 TYPE string.
        DATA(t397) = t368.
        t396 = t397->value.
        DATA(t398) = |WITH UNIQUE |.
        DATA(t399) = strlen( t396 ).
        IF t398 IS INITIAL.
          t395 = 0.
        ELSE.
          FIND t398 IN t396 MATCH OFFSET t395.
          IF sy-subrc <> 0.
            t395 = -1.
          ENDIF.
        ENDIF.
        DATA(t400) = 0.
        t394 = xsdbool( t395 >= t400 ).
        DATA(t401) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t401->has = abap_true.
        t401->value = t394.
        t390 = t401.
      ENDIF.
      t367 = t390.
      DATA t402 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t402.
      DATA(t403) = abap_true.
      IF t403 = abap_true.
        DATA(t404) = abap_true.
        DATA(t405) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t405->has = abap_true.
        t405->value = t404.
        t402 = t405.
      ELSE.
        DATA t406 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t406.
        t402 = t406.
      ENDIF.
      DATA(t407) = VALUE abap_bool( ).
      DATA(t408) = VALUE abap_bool( ).
      IF t367 IS BOUND.
        t407 = t367->has.
      ENDIF.
      IF t402 IS BOUND.
        t408 = t402->has.
      ENDIF.
      IF t407 = t408.
        IF t407 = abap_false.
          t366 = abap_true.
        ELSEIF t367->value = t402->value.
          t366 = abap_true.
        ENDIF.
      ENDIF.
      t365 = t366.
      DATA t409 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t410 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t410.
      t409 = t410.
      t353 = NEW zcl_lnt_itable_key( i_name = t354 i_type_9913 = t357 i_key_fields = t409 i_is_unique = t365 ).
      CREATE OBJECT t353->zlnt_view_ownkeys_b0e8086400eb.
      t353->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t411.
      IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t411 ).
      ENDIF.
      DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t412.
      IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t412 ).
      ENDIF.
      DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t413.
      IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isUnique` p1 = t413 ).
      ENDIF.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t414.
      IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyFields` p1 = t414 ).
      ENDIF.
      CREATE OBJECT t353->zlnt_json_ownkeys_70e5fd461788.
      t353->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t415) = |name|.
      DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t416.
      IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t415 p1 = t416 ).
      ENDIF.
      DATA(t417) = |type|.
      DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t418.
      IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t417 p1 = t418 ).
      ENDIF.
      DATA(t419) = |isUnique|.
      DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t420.
      IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t419 p1 = t420 ).
      ENDIF.
      DATA(t421) = |keyFields|.
      DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t422.
      IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t421 p1 = t422 ).
      ENDIF.
      t352 = t353.
      DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t423.
      DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t424.
      DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t425.
      DATA t426 TYPE REF TO zcl_lnt_expression_node.
      DATA(t427) = t321.
      t426 = t427.
      DATA t428 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t428.
      DATA(t429) = VALUE abap_bool( ).
      DATA(t430) = t426.
      IF t430 IS INITIAL.
        t429 = abap_true.
      ENDIF.
      IF t429 = abap_true.
        DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t431.
        t428 = t431.
      ELSE.
        DATA t432 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t433) = t426.
        DATA(t434) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t432 = t433->find_direct_expressions( i_type_9913 = t434 ).
        t428 = t432.
      ENDIF.
      t425 = t428.
      t424 = t425.
      DATA t435 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t435.
      DATA t436 TYPE abap_bool.
      DATA(t437) = t424.
      t436 = xsdbool( t437 IS BOUND ).
      IF t436 = abap_true.
        DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t439) = t424.
        t438 = t439.
        t435 = t438.
      ELSE.
        DATA t440 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t440.
        t435 = t440.
      ENDIF.
      t423 = t435.
      DATA t441 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t441.
      DATA t442 TYPE REF TO object.
      CLEAR t442.
      DATA(t443) = VALUE i( ).
      DO.
        t423->load( ).
        IF t443 >= lines( t423->items ).
          EXIT.
        ENDIF.
        CLEAR t442.
        READ TABLE t423->items INDEX t443 + 1 INTO t442.
        t443 = t443 + 1.
        DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t444.
        CLEAR t441.
        IF t442 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t444 ?= t442.
          DATA t445 TYPE REF TO object.
          t445 = t444->as_ref( ).
          t441 ?= t445.
        ELSE.
          t441 ?= t442.
        ENDIF.
        DATA t446 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t447) = t352.
        t446 = t447->zlnt_view_read_sr_e0192e283129( ).
        DATA t448 TYPE string.
        DATA t449 TYPE string.
        DATA(t450) = t441.
        t449 = t450->concat_tokens( ).
        DATA(t451) = strlen( t449 ).
        t448 = t449.
        IF t448 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t448 TO UPPER CASE.
        ELSE.
          t448 = zlnt_runtime_uppe_91169605024d=>full( t448 ).
        ENDIF.
        t446->load( ).
        APPEND t448 TO t446->items.
        t446->save( ).
      ENDDO.
      DATA(t452) = t313.
      DATA(t453) = t352.
      t452->load( ).
      APPEND t453 TO t452->items.
      t452->save( ).
      DATA t454 TYPE i.
      DATA(t455) = t315.
      DATA(t456) = 1.
      t454 = t455 + t456.
      t315 = t454.
    ENDDO.
    DATA t457 TYPE string.
    DATA(t458) = |USER|.
    t457 = t458.
    DATA(t459) = VALUE abap_bool( ).
    DATA(t460) = VALUE i( ).
    DATA t461 TYPE string.
    DATA(t462) = t16.
    t461 = t462->value.
    DATA(t463) = | EMPTY KEY|.
    DATA(t464) = strlen( t461 ).
    IF t463 IS INITIAL.
      t460 = 0.
    ELSE.
      FIND t463 IN t461 MATCH OFFSET t460.
      IF sy-subrc <> 0.
        t460 = -1.
      ENDIF.
    ENDIF.
    DATA(t465) = 0.
    t459 = xsdbool( t460 >= t465 ).
    IF t459 = abap_true.
      DATA(t466) = |EMPTY|.
      t457 = t466.
    ELSE.
      DATA(t467) = VALUE abap_bool( ).
      DATA(t468) = VALUE i( ).
      DATA t469 TYPE string.
      DATA(t470) = t16.
      t469 = t470->value.
      DATA(t471) = | DEFAULT KEY|.
      DATA(t472) = strlen( t469 ).
      IF t471 IS INITIAL.
        t468 = 0.
      ELSE.
        FIND t471 IN t469 MATCH OFFSET t468.
        IF sy-subrc <> 0.
          t468 = -1.
        ENDIF.
      ENDIF.
      DATA(t473) = 0.
      t467 = xsdbool( t468 >= t473 ).
      IF t467 = abap_true.
        DATA(t474) = |DEFAULT|.
        t457 = t474.
      ENDIF.
    ENDIF.
    DATA t475 TYPE REF TO zcl_lnt_itable_options.
    CLEAR t475.
    DATA t476 TYPE REF TO zcl_lnt_itable_options.
    CLEAR t476.
    DATA(t477) = VALUE abap_bool( ).
    DATA(t478) = VALUE abap_bool( ).
    DATA(t479) = VALUE i( ).
    DATA t480 TYPE string.
    DATA(t481) = t16.
    t480 = t481->value.
    DATA(t482) = | WITH HEADER LINE|.
    DATA(t483) = strlen( t480 ).
    IF t482 IS INITIAL.
      t479 = 0.
    ELSE.
      FIND t482 IN t480 MATCH OFFSET t479.
      IF sy-subrc <> 0.
        t479 = -1.
      ENDIF.
    ENDIF.
    DATA(t484) = 0.
    t478 = xsdbool( t479 >= t484 ).
    t477 = t478.
    DATA t485 TYPE string.
    DATA(t486) = t457.
    t485 = t486.
    DATA t487 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t487.
    DATA t488 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t488.
    DATA(t489) = abap_true.
    IF t489 = abap_true.
      DATA(t490) = t203.
      t488 = t490.
    ELSE.
      DATA t491 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t491.
      t488 = t491.
    ENDIF.
    t487 = t488.
    DATA t492 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t492.
    DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t493.
    DATA(t494) = abap_true.
    IF t494 = abap_true.
      DATA(t495) = t313.
      t493 = t495.
    ELSE.
      DATA t496 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t496.
      t493 = t496.
    ENDIF.
    t492 = t493.
    t476 = NEW zcl_lnt_itable_options( i_with_header = t477 i_key_type = t485 i_primary_key = t487 i_secondary = t492 ).
    CREATE OBJECT t476->zlnt_view_ownkeys_b0e8086400eb.
    t476->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t497.
    IF t476->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t476->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t497 ).
    ENDIF.
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t498.
    IF t476->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t476->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t498 ).
    ENDIF.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t499.
    IF t476->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t476->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `primaryKey` p1 = t499 ).
    ENDIF.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t500.
    IF t476->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t476->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `secondary` p1 = t500 ).
    ENDIF.
    CREATE OBJECT t476->zlnt_json_ownkeys_70e5fd461788.
    t476->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t501) = |withHeader|.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t502.
    IF t476->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t476->zlnt_json_ownkeys_70e5fd461788->put( p0 = t501 p1 = t502 ).
    ENDIF.
    DATA(t503) = |keyType|.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    IF t476->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t476->zlnt_json_ownkeys_70e5fd461788->put( p0 = t503 p1 = t504 ).
    ENDIF.
    DATA(t505) = |primaryKey|.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t506.
    IF t476->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t476->zlnt_json_ownkeys_70e5fd461788->put( p0 = t505 p1 = t506 ).
    ENDIF.
    DATA(t507) = |secondary|.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    IF t476->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t476->zlnt_json_ownkeys_70e5fd461788->put( p0 = t507 p1 = t508 ).
    ENDIF.
    t475 = t476.
    DATA t509 TYPE REF TO zcl_lnt_abstract_type.
    DATA t510 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t510.
    t509 = t510.
    DATA(t511) = VALUE abap_bool( ).
    DATA(t512) = VALUE abap_bool( ).
    DATA(t513) = VALUE abap_bool( ).
    DATA(t514) = VALUE abap_bool( ).
    DATA t515 TYPE string.
    DATA(t516) = t16.
    t515 = t516->value.
    DATA(t517) = |TYPE TABLE OF REF TO |.
    DATA(t518) = strlen( t515 ).
    DATA t519 TYPE i.
    DATA(t520) = VALUE i( ).
    DATA(t521) = VALUE string( ).
    t519 = strlen( t517 ).
    IF t519 = 0.
      t514 = abap_true.
    ELSEIF t519 <= t518.
      t520 = 0.
      t521 = t515+t520(t519).
      IF t521 = t517.
        t514 = abap_true.
      ENDIF.
    ENDIF.
    t513 = t514.
    IF t514 = abap_false.
      DATA(t522) = VALUE abap_bool( ).
      DATA t523 TYPE string.
      DATA(t524) = t16.
      t523 = t524->value.
      DATA(t525) = |TYPE STANDARD TABLE OF REF TO |.
      DATA(t526) = strlen( t523 ).
      DATA t527 TYPE i.
      DATA(t528) = VALUE i( ).
      DATA(t529) = VALUE string( ).
      t527 = strlen( t525 ).
      IF t527 = 0.
        t522 = abap_true.
      ELSEIF t527 <= t526.
        t528 = 0.
        t529 = t523+t528(t527).
        IF t529 = t525.
          t522 = abap_true.
        ENDIF.
      ENDIF.
      t513 = t522.
    ENDIF.
    t512 = t513.
    IF t513 = abap_false.
      DATA(t530) = VALUE abap_bool( ).
      DATA t531 TYPE string.
      DATA(t532) = t16.
      t531 = t532->value.
      DATA(t533) = |TYPE SORTED TABLE OF REF TO |.
      DATA(t534) = strlen( t531 ).
      DATA t535 TYPE i.
      DATA(t536) = VALUE i( ).
      DATA(t537) = VALUE string( ).
      t535 = strlen( t533 ).
      IF t535 = 0.
        t530 = abap_true.
      ELSEIF t535 <= t534.
        t536 = 0.
        t537 = t531+t536(t535).
        IF t537 = t533.
          t530 = abap_true.
        ENDIF.
      ENDIF.
      t512 = t530.
    ENDIF.
    t511 = t512.
    IF t512 = abap_false.
      DATA(t538) = VALUE abap_bool( ).
      DATA t539 TYPE string.
      DATA(t540) = t16.
      t539 = t540->value.
      DATA(t541) = |TYPE HASHED TABLE OF REF TO |.
      DATA(t542) = strlen( t539 ).
      DATA t543 TYPE i.
      DATA(t544) = VALUE i( ).
      DATA(t545) = VALUE string( ).
      t543 = strlen( t541 ).
      IF t543 = 0.
        t538 = abap_true.
      ELSEIF t543 <= t542.
        t544 = 0.
        t545 = t539+t544(t543).
        IF t545 = t541.
          t538 = abap_true.
        ENDIF.
      ENDIF.
      t511 = t538.
    ENDIF.
    IF t511 = abap_true.
      DATA t546 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t547) = t3.
      t546 = me->resolve_type_ref( i_chain_8ed6 = t547 ).
      t509 = t546.
      DATA t548 TYPE abap_bool.
      DATA(t549) = t509.
      t548 = xsdbool( t549 IS BOUND ).
      IF t548 = abap_true.
        DATA t550 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t551 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t552) = t509.
        t551 = t552.
        DATA(t553) = t475.
        DATA(t554) = t2.
        DATA t555 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t555.
        t550 = NEW zcl_lnt_ty_table_type( i_row_type = t551 i_options = t553 i_qualified_name = t554 i_description = t555 ).
        result = t550.
        RETURN.
      ENDIF.
    ELSE.
      DATA(t556) = VALUE abap_bool( ).
      DATA(t557) = VALUE abap_bool( ).
      DATA(t558) = VALUE abap_bool( ).
      DATA(t559) = VALUE abap_bool( ).
      DATA t560 TYPE string.
      DATA(t561) = t16.
      t560 = t561->value.
      DATA(t562) = |TYPE TABLE OF |.
      DATA(t563) = strlen( t560 ).
      DATA t564 TYPE i.
      DATA(t565) = VALUE i( ).
      DATA(t566) = VALUE string( ).
      t564 = strlen( t562 ).
      IF t564 = 0.
        t559 = abap_true.
      ELSEIF t564 <= t563.
        t565 = 0.
        t566 = t560+t565(t564).
        IF t566 = t562.
          t559 = abap_true.
        ENDIF.
      ENDIF.
      t558 = t559.
      IF t559 = abap_false.
        DATA(t567) = VALUE abap_bool( ).
        DATA t568 TYPE string.
        DATA(t569) = t16.
        t568 = t569->value.
        DATA(t570) = |TYPE STANDARD TABLE OF |.
        DATA(t571) = strlen( t568 ).
        DATA t572 TYPE i.
        DATA(t573) = VALUE i( ).
        DATA(t574) = VALUE string( ).
        t572 = strlen( t570 ).
        IF t572 = 0.
          t567 = abap_true.
        ELSEIF t572 <= t571.
          t573 = 0.
          t574 = t568+t573(t572).
          IF t574 = t570.
            t567 = abap_true.
          ENDIF.
        ENDIF.
        t558 = t567.
      ENDIF.
      t557 = t558.
      IF t558 = abap_false.
        DATA(t575) = VALUE abap_bool( ).
        DATA t576 TYPE string.
        DATA(t577) = t16.
        t576 = t577->value.
        DATA(t578) = |TYPE SORTED TABLE OF |.
        DATA(t579) = strlen( t576 ).
        DATA t580 TYPE i.
        DATA(t581) = VALUE i( ).
        DATA(t582) = VALUE string( ).
        t580 = strlen( t578 ).
        IF t580 = 0.
          t575 = abap_true.
        ELSEIF t580 <= t579.
          t581 = 0.
          t582 = t576+t581(t580).
          IF t582 = t578.
            t575 = abap_true.
          ENDIF.
        ENDIF.
        t557 = t575.
      ENDIF.
      t556 = t557.
      IF t557 = abap_false.
        DATA(t583) = VALUE abap_bool( ).
        DATA t584 TYPE string.
        DATA(t585) = t16.
        t584 = t585->value.
        DATA(t586) = |TYPE HASHED TABLE OF |.
        DATA(t587) = strlen( t584 ).
        DATA t588 TYPE i.
        DATA(t589) = VALUE i( ).
        DATA(t590) = VALUE string( ).
        t588 = strlen( t586 ).
        IF t588 = 0.
          t583 = abap_true.
        ELSEIF t588 <= t587.
          t589 = 0.
          t590 = t584+t589(t588).
          IF t590 = t586.
            t583 = abap_true.
          ENDIF.
        ENDIF.
        t556 = t583.
      ENDIF.
      IF t556 = abap_true.
        DATA t591 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t592) = t3.
        DATA t593 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t593.
        DATA t594 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t594.
        DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t595.
        t591 = me->resolve_type_name( i_type_name = t592 i_length = t593 i_decimals_2eed = t594 i_qualified_name = t595 ).
        t509 = t591.
        DATA t596 TYPE abap_bool.
        DATA(t597) = t509.
        t596 = xsdbool( t597 IS BOUND ).
        IF t596 = abap_true.
          DATA t598 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t599 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t600) = t509.
          t599 = t600.
          DATA(t601) = t475.
          DATA(t602) = t2.
          DATA t603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t603.
          t598 = NEW zcl_lnt_ty_table_type( i_row_type = t599 i_options = t601 i_qualified_name = t602 i_description = t603 ).
          result = t598.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t604) = VALUE abap_bool( ).
        DATA(t605) = VALUE abap_bool( ).
        DATA(t606) = VALUE abap_bool( ).
        DATA(t607) = VALUE abap_bool( ).
        DATA t608 TYPE string.
        DATA(t609) = t16.
        t608 = t609->value.
        DATA(t610) = |LIKE TABLE OF |.
        DATA(t611) = strlen( t608 ).
        DATA t612 TYPE i.
        DATA(t613) = VALUE i( ).
        DATA(t614) = VALUE string( ).
        t612 = strlen( t610 ).
        IF t612 = 0.
          t607 = abap_true.
        ELSEIF t612 <= t611.
          t613 = 0.
          t614 = t608+t613(t612).
          IF t614 = t610.
            t607 = abap_true.
          ENDIF.
        ENDIF.
        t606 = t607.
        IF t607 = abap_false.
          DATA(t615) = VALUE abap_bool( ).
          DATA t616 TYPE string.
          DATA(t617) = t16.
          t616 = t617->value.
          DATA(t618) = |LIKE STANDARD TABLE OF |.
          DATA(t619) = strlen( t616 ).
          DATA t620 TYPE i.
          DATA(t621) = VALUE i( ).
          DATA(t622) = VALUE string( ).
          t620 = strlen( t618 ).
          IF t620 = 0.
            t615 = abap_true.
          ELSEIF t620 <= t619.
            t621 = 0.
            t622 = t616+t621(t620).
            IF t622 = t618.
              t615 = abap_true.
            ENDIF.
          ENDIF.
          t606 = t615.
        ENDIF.
        t605 = t606.
        IF t606 = abap_false.
          DATA(t623) = VALUE abap_bool( ).
          DATA t624 TYPE string.
          DATA(t625) = t16.
          t624 = t625->value.
          DATA(t626) = |LIKE SORTED TABLE OF |.
          DATA(t627) = strlen( t624 ).
          DATA t628 TYPE i.
          DATA(t629) = VALUE i( ).
          DATA(t630) = VALUE string( ).
          t628 = strlen( t626 ).
          IF t628 = 0.
            t623 = abap_true.
          ELSEIF t628 <= t627.
            t629 = 0.
            t630 = t624+t629(t628).
            IF t630 = t626.
              t623 = abap_true.
            ENDIF.
          ENDIF.
          t605 = t623.
        ENDIF.
        t604 = t605.
        IF t605 = abap_false.
          DATA(t631) = VALUE abap_bool( ).
          DATA t632 TYPE string.
          DATA(t633) = t16.
          t632 = t633->value.
          DATA(t634) = |LIKE HASHED TABLE OF |.
          DATA(t635) = strlen( t632 ).
          DATA t636 TYPE i.
          DATA(t637) = VALUE i( ).
          DATA(t638) = VALUE string( ).
          t636 = strlen( t634 ).
          IF t636 = 0.
            t631 = abap_true.
          ELSEIF t636 <= t635.
            t637 = 0.
            t638 = t632+t637(t636).
            IF t638 = t634.
              t631 = abap_true.
            ENDIF.
          ENDIF.
          t604 = t631.
        ENDIF.
        IF t604 = abap_true.
          DATA t639 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t639.
          DATA t640 TYPE REF TO zif_lnt_union_bb14dc41.
          CLEAR t640.
          DATA(t641) = abap_true.
          IF t641 = abap_true.
            DATA(t642) = t1.
            t640 = t642.
          ELSE.
            DATA t643 TYPE REF TO zif_lnt_union_bb14dc41.
            CLEAR t643.
            t640 = t643.
          ENDIF.
          DATA t644 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t644.
          t639 = me->resolve_like_name( i_node = t640 i_header_logic = t644 ).
          t509 = t639.
          DATA t645 TYPE abap_bool.
          DATA(t646) = t509.
          t645 = xsdbool( t646 IS BOUND ).
          IF t645 = abap_true.
            DATA t647 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t648 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t649) = t509.
            t648 = t649.
            DATA(t650) = t475.
            DATA(t651) = t2.
            DATA t652 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t652.
            t647 = NEW zcl_lnt_ty_table_type( i_row_type = t648 i_options = t650 i_qualified_name = t651 i_description = t652 ).
            result = t647.
            RETURN.
          ENDIF.
        ELSE.
          DATA(t653) = VALUE abap_bool( ).
          DATA(t654) = VALUE abap_bool( ).
          DATA(t655) = VALUE abap_bool( ).
          DATA t656 TYPE abap_bool.
          DATA t657 TYPE abap_bool.
          DATA t658 TYPE string.
          DATA(t659) = t16.
          t658 = t659->value.
          DATA(t660) = |TYPE STANDARD TABLE|.
          t657 = xsdbool( t658 = t660 ).
          t656 = t657.
          IF t657 = abap_false.
            DATA t661 TYPE abap_bool.
            DATA t662 TYPE string.
            DATA(t663) = t16.
            t662 = t663->value.
            DATA(t664) = |TYPE SORTED TABLE|.
            t661 = xsdbool( t662 = t664 ).
            t656 = t661.
          ENDIF.
          t655 = t656.
          IF t656 = abap_false.
            DATA t665 TYPE abap_bool.
            DATA t666 TYPE string.
            DATA(t667) = t16.
            t666 = t667->value.
            DATA(t668) = |TYPE HASHED TABLE|.
            t665 = xsdbool( t666 = t668 ).
            t655 = t665.
          ENDIF.
          t654 = t655.
          IF t655 = abap_false.
            DATA t669 TYPE abap_bool.
            DATA t670 TYPE string.
            DATA(t671) = t16.
            t670 = t671->value.
            DATA(t672) = |TYPE INDEX TABLE|.
            t669 = xsdbool( t670 = t672 ).
            t654 = t669.
          ENDIF.
          t653 = t654.
          IF t654 = abap_false.
            DATA t673 TYPE abap_bool.
            DATA t674 TYPE string.
            DATA(t675) = t16.
            t674 = t675->value.
            DATA(t676) = |TYPE ANY TABLE|.
            t673 = xsdbool( t674 = t676 ).
            t653 = t673.
          ENDIF.
          IF t653 = abap_true.
            DATA t677 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t678 TYPE REF TO zcl_lnt_any_type.
            DATA t679 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t679.
            t678 = zcl_lnt_any_type=>get_db65( i_input_967e = t679 ).
            DATA(t680) = t475.
            DATA t681 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t681.
            DATA t682 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t682.
            t677 = NEW zcl_lnt_ty_table_type( i_row_type = t678 i_options = t680 i_qualified_name = t681 i_description = t682 ).
            result = t677.
            RETURN.
          ELSE.
            DATA(t683) = VALUE abap_bool( ).
            DATA t684 TYPE string.
            DATA(t685) = t16.
            t684 = t685->value.
            DATA(t686) = |TYPE RANGE OF |.
            DATA(t687) = strlen( t684 ).
            DATA t688 TYPE i.
            DATA(t689) = VALUE i( ).
            DATA(t690) = VALUE string( ).
            t688 = strlen( t686 ).
            IF t688 = 0.
              t683 = abap_true.
            ELSEIF t688 <= t687.
              t689 = 0.
              t690 = t684+t689(t688).
              IF t690 = t686.
                t683 = abap_true.
              ENDIF.
            ENDIF.
            IF t683 = abap_true.
              DATA t691 TYPE REF TO zcl_lnt_expression_node.
              DATA t692 TYPE REF TO zcl_lnt_expression_node.
              DATA(t693) = t1.
              DATA(t694) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
              t692 = t693->find_first_expression( i_type_9913 = t694 ).
              t691 = t692.
              DATA t695 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t696) = t691.
              DATA t697 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t697.
              DATA t698 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t698.
              DATA t699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t699.
              t695 = me->resolve_type_name( i_type_name = t696 i_length = t697 i_decimals_2eed = t698 i_qualified_name = t699 ).
              t509 = t695.
              DATA(t700) = VALUE abap_bool( ).
              DATA t701 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t702) = t509.
              t701 = t702.
              DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t704.
              t703 = t704.
              DATA(t705) = VALUE abap_bool( ).
              DATA(t706) = t701.
              IF t706 IS INITIAL.
                t705 = abap_true.
              ENDIF.
              t700 = t705.
              IF t700 = abap_true.
                DATA t707 TYPE REF TO zcl_lnt_unknown_type.
                DATA(t708) = |TYPE RANGE OF, could not resolve type|.
                DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t709.
                t707 = NEW zcl_lnt_unknown_type( i_error = t708 i_qualified_name = t709 ).
                result = t707.
                RETURN.
              ENDIF.
              DATA t710 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t710.
              DATA t711 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t711.
              DATA t712 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t712.
              DATA t713 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t714 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t714.
              t713 = t714.
              DATA(t715) = t713.
              DATA t716 TYPE REF TO zcl_lnt_istructure_component.
              DATA t717 TYPE string.
              DATA(t718) = |sign|.
              t717 = t718.
              DATA t719 TYPE REF TO zcl_lnt_abstract_type.
              DATA t720 TYPE REF TO zcl_lnt_character_type.
              DATA(t721) = CONV f( 1 ).
              DATA t722 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t722.
              t720 = NEW zcl_lnt_character_type( i_length = t721 i_extra = t722 ).
              t719 = t720.
              DATA t723 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t724 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t724.
              t723 = t724.
              DATA t725 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t726 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t726.
              t725 = t726.
              t716 = NEW zcl_lnt_istructure_component( i_name = t717 i_type_9913 = t719 i_as_include = t723 i_suffix = t725 ).
              CREATE OBJECT t716->zlnt_view_ownkeys_b0e8086400eb.
              t716->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t727.
              IF t716->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t716->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t727 ).
              ENDIF.
              DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t728.
              IF t716->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t716->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t728 ).
              ENDIF.
              CREATE OBJECT t716->zlnt_json_ownkeys_70e5fd461788.
              t716->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t729) = |name|.
              DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t730.
              IF t716->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t716->zlnt_json_ownkeys_70e5fd461788->put( p0 = t729 p1 = t730 ).
              ENDIF.
              DATA(t731) = |type|.
              DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t732.
              IF t716->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t716->zlnt_json_ownkeys_70e5fd461788->put( p0 = t731 p1 = t732 ).
              ENDIF.
              t715->load( ).
              APPEND t716 TO t715->items.
              t715->save( ).
              DATA(t733) = t713.
              DATA t734 TYPE REF TO zcl_lnt_istructure_component.
              DATA t735 TYPE string.
              DATA(t736) = |option|.
              t735 = t736.
              DATA t737 TYPE REF TO zcl_lnt_abstract_type.
              DATA t738 TYPE REF TO zcl_lnt_character_type.
              DATA(t739) = CONV f( 2 ).
              DATA t740 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t740.
              t738 = NEW zcl_lnt_character_type( i_length = t739 i_extra = t740 ).
              t737 = t738.
              DATA t741 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t742 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t742.
              t741 = t742.
              DATA t743 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t744 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t744.
              t743 = t744.
              t734 = NEW zcl_lnt_istructure_component( i_name = t735 i_type_9913 = t737 i_as_include = t741 i_suffix = t743 ).
              CREATE OBJECT t734->zlnt_view_ownkeys_b0e8086400eb.
              t734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t745.
              IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t745 ).
              ENDIF.
              DATA t746 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t746.
              IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t746 ).
              ENDIF.
              CREATE OBJECT t734->zlnt_json_ownkeys_70e5fd461788.
              t734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t747) = |name|.
              DATA t748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t748.
              IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t747 p1 = t748 ).
              ENDIF.
              DATA(t749) = |type|.
              DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t750.
              IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t749 p1 = t750 ).
              ENDIF.
              t733->load( ).
              APPEND t734 TO t733->items.
              t733->save( ).
              DATA(t751) = t713.
              DATA t752 TYPE REF TO zcl_lnt_istructure_component.
              DATA t753 TYPE string.
              DATA(t754) = |low|.
              t753 = t754.
              DATA t755 TYPE REF TO zcl_lnt_abstract_type.
              DATA t756 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t757) = t509.
              t756 = t757.
              t755 = t756.
              DATA t758 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t759 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t759.
              t758 = t759.
              DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t761.
              t760 = t761.
              t752 = NEW zcl_lnt_istructure_component( i_name = t753 i_type_9913 = t755 i_as_include = t758 i_suffix = t760 ).
              CREATE OBJECT t752->zlnt_view_ownkeys_b0e8086400eb.
              t752->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t762.
              IF t752->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t752->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t762 ).
              ENDIF.
              DATA t763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t763.
              IF t752->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t752->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t763 ).
              ENDIF.
              CREATE OBJECT t752->zlnt_json_ownkeys_70e5fd461788.
              t752->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t764) = |name|.
              DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t765.
              IF t752->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t752->zlnt_json_ownkeys_70e5fd461788->put( p0 = t764 p1 = t765 ).
              ENDIF.
              DATA(t766) = |type|.
              DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t767.
              IF t752->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t752->zlnt_json_ownkeys_70e5fd461788->put( p0 = t766 p1 = t767 ).
              ENDIF.
              t751->load( ).
              APPEND t752 TO t751->items.
              t751->save( ).
              DATA(t768) = t713.
              DATA t769 TYPE REF TO zcl_lnt_istructure_component.
              DATA t770 TYPE string.
              DATA(t771) = |high|.
              t770 = t771.
              DATA t772 TYPE REF TO zcl_lnt_abstract_type.
              DATA t773 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t774) = t509.
              t773 = t774.
              t772 = t773.
              DATA t775 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t776 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t776.
              t775 = t776.
              DATA t777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t778 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t778.
              t777 = t778.
              t769 = NEW zcl_lnt_istructure_component( i_name = t770 i_type_9913 = t772 i_as_include = t775 i_suffix = t777 ).
              CREATE OBJECT t769->zlnt_view_ownkeys_b0e8086400eb.
              t769->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t779.
              IF t769->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t769->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t779 ).
              ENDIF.
              DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t780.
              IF t769->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t769->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t780 ).
              ENDIF.
              CREATE OBJECT t769->zlnt_json_ownkeys_70e5fd461788.
              t769->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t781) = |name|.
              DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t782.
              IF t769->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t769->zlnt_json_ownkeys_70e5fd461788->put( p0 = t781 p1 = t782 ).
              ENDIF.
              DATA(t783) = |type|.
              DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t784.
              IF t769->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t769->zlnt_json_ownkeys_70e5fd461788->put( p0 = t783 p1 = t784 ).
              ENDIF.
              t768->load( ).
              APPEND t769 TO t768->items.
              t768->save( ).
              DATA(t785) = t713.
              t712 = t785.
              DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t786.
              DATA t787 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t787.
              DATA t788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t788.
              t711 = NEW zcl_lnt_structure_type( i_components = t712 i_qualified_name = t786 i_ddic_name = t787 i_description = t788 ).
              t710 = t711.
              DATA t789 TYPE REF TO zcl_lnt_itable_key.
              DATA t790 TYPE REF TO zcl_lnt_itable_key.
              DATA(t791) = t475.
              t790 = t791->zlnt_view_read_sr_48b89cc62ab9( ).
              t789 = t790.
              DATA(t792) = |STANDARD|.
              t789->zlnt_view_write_s_5da6216157cf( p0 = t792 ).
              DATA t793 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t794) = t710.
              DATA(t795) = t475.
              DATA(t796) = t2.
              DATA t797 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t797.
              t793 = NEW zcl_lnt_ty_table_type( i_row_type = t794 i_options = t795 i_qualified_name = t796 i_description = t797 ).
              result = t793.
              RETURN.
            ELSE.
              DATA(t798) = VALUE abap_bool( ).
              DATA t799 TYPE string.
              DATA(t800) = t16.
              t799 = t800->value.
              DATA(t801) = |LIKE RANGE OF |.
              DATA(t802) = strlen( t799 ).
              DATA t803 TYPE i.
              DATA(t804) = VALUE i( ).
              DATA(t805) = VALUE string( ).
              t803 = strlen( t801 ).
              IF t803 = 0.
                t798 = abap_true.
              ELSEIF t803 <= t802.
                t804 = 0.
                t805 = t799+t804(t803).
                IF t805 = t801.
                  t798 = abap_true.
                ENDIF.
              ENDIF.
              IF t798 = abap_true.
                DATA t806 TYPE REF TO zcl_lnt_expression_node.
                DATA t807 TYPE REF TO zcl_lnt_expression_node.
                DATA(t808) = t1.
                DATA(t809) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
                t807 = t808->find_first_expression( i_type_9913 = t809 ).
                t806 = t807.
                DATA t810 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t811) = t806.
                DATA t812 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t812.
                t810 = me->resolve_like_name( i_node = t811 i_header_logic = t812 ).
                t509 = t810.
                DATA(t813) = VALUE abap_bool( ).
                DATA t814 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t815) = t509.
                t814 = t815.
                DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t817.
                t816 = t817.
                DATA(t818) = VALUE abap_bool( ).
                DATA(t819) = t814.
                IF t819 IS INITIAL.
                  t818 = abap_true.
                ENDIF.
                t813 = t818.
                IF t813 = abap_true.
                  DATA t820 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t821) = |LIKE RANGE OF, could not resolve type|.
                  DATA t822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t822.
                  t820 = NEW zcl_lnt_unknown_type( i_error = t821 i_qualified_name = t822 ).
                  result = t820.
                  RETURN.
                ENDIF.
                DATA t823 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t823.
                DATA t824 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t824.
                DATA t825 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t825.
                DATA t826 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t827 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CREATE OBJECT t827.
                t826 = t827.
                DATA(t828) = t826.
                DATA t829 TYPE REF TO zcl_lnt_istructure_component.
                DATA t830 TYPE string.
                DATA(t831) = |sign|.
                t830 = t831.
                DATA t832 TYPE REF TO zcl_lnt_abstract_type.
                DATA t833 TYPE REF TO zcl_lnt_character_type.
                DATA(t834) = CONV f( 1 ).
                DATA t835 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t835.
                t833 = NEW zcl_lnt_character_type( i_length = t834 i_extra = t835 ).
                t832 = t833.
                DATA t836 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t837 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t837.
                t836 = t837.
                DATA t838 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t839 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t839.
                t838 = t839.
                t829 = NEW zcl_lnt_istructure_component( i_name = t830 i_type_9913 = t832 i_as_include = t836 i_suffix = t838 ).
                CREATE OBJECT t829->zlnt_view_ownkeys_b0e8086400eb.
                t829->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t840.
                IF t829->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t829->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t840 ).
                ENDIF.
                DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t841.
                IF t829->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t829->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t841 ).
                ENDIF.
                CREATE OBJECT t829->zlnt_json_ownkeys_70e5fd461788.
                t829->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t842) = |name|.
                DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t843.
                IF t829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t829->zlnt_json_ownkeys_70e5fd461788->put( p0 = t842 p1 = t843 ).
                ENDIF.
                DATA(t844) = |type|.
                DATA t845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t845.
                IF t829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t829->zlnt_json_ownkeys_70e5fd461788->put( p0 = t844 p1 = t845 ).
                ENDIF.
                t828->load( ).
                APPEND t829 TO t828->items.
                t828->save( ).
                DATA(t846) = t826.
                DATA t847 TYPE REF TO zcl_lnt_istructure_component.
                DATA t848 TYPE string.
                DATA(t849) = |option|.
                t848 = t849.
                DATA t850 TYPE REF TO zcl_lnt_abstract_type.
                DATA t851 TYPE REF TO zcl_lnt_character_type.
                DATA(t852) = CONV f( 2 ).
                DATA t853 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t853.
                t851 = NEW zcl_lnt_character_type( i_length = t852 i_extra = t853 ).
                t850 = t851.
                DATA t854 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t855 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t855.
                t854 = t855.
                DATA t856 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t857 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t857.
                t856 = t857.
                t847 = NEW zcl_lnt_istructure_component( i_name = t848 i_type_9913 = t850 i_as_include = t854 i_suffix = t856 ).
                CREATE OBJECT t847->zlnt_view_ownkeys_b0e8086400eb.
                t847->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t858.
                IF t847->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t847->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t858 ).
                ENDIF.
                DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t859.
                IF t847->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t847->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t859 ).
                ENDIF.
                CREATE OBJECT t847->zlnt_json_ownkeys_70e5fd461788.
                t847->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t860) = |name|.
                DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t861.
                IF t847->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t847->zlnt_json_ownkeys_70e5fd461788->put( p0 = t860 p1 = t861 ).
                ENDIF.
                DATA(t862) = |type|.
                DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t863.
                IF t847->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t847->zlnt_json_ownkeys_70e5fd461788->put( p0 = t862 p1 = t863 ).
                ENDIF.
                t846->load( ).
                APPEND t847 TO t846->items.
                t846->save( ).
                DATA(t864) = t826.
                DATA t865 TYPE REF TO zcl_lnt_istructure_component.
                DATA t866 TYPE string.
                DATA(t867) = |low|.
                t866 = t867.
                DATA t868 TYPE REF TO zcl_lnt_abstract_type.
                DATA t869 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t870) = t509.
                t869 = t870.
                t868 = t869.
                DATA t871 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t872 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t872.
                t871 = t872.
                DATA t873 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t874 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t874.
                t873 = t874.
                t865 = NEW zcl_lnt_istructure_component( i_name = t866 i_type_9913 = t868 i_as_include = t871 i_suffix = t873 ).
                CREATE OBJECT t865->zlnt_view_ownkeys_b0e8086400eb.
                t865->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t875.
                IF t865->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t865->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t875 ).
                ENDIF.
                DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t876.
                IF t865->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t865->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t876 ).
                ENDIF.
                CREATE OBJECT t865->zlnt_json_ownkeys_70e5fd461788.
                t865->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t877) = |name|.
                DATA t878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t878.
                IF t865->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t865->zlnt_json_ownkeys_70e5fd461788->put( p0 = t877 p1 = t878 ).
                ENDIF.
                DATA(t879) = |type|.
                DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t880.
                IF t865->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t865->zlnt_json_ownkeys_70e5fd461788->put( p0 = t879 p1 = t880 ).
                ENDIF.
                t864->load( ).
                APPEND t865 TO t864->items.
                t864->save( ).
                DATA(t881) = t826.
                DATA t882 TYPE REF TO zcl_lnt_istructure_component.
                DATA t883 TYPE string.
                DATA(t884) = |high|.
                t883 = t884.
                DATA t885 TYPE REF TO zcl_lnt_abstract_type.
                DATA t886 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t887) = t509.
                t886 = t887.
                t885 = t886.
                DATA t888 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t889 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t889.
                t888 = t889.
                DATA t890 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t891 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t891.
                t890 = t891.
                t882 = NEW zcl_lnt_istructure_component( i_name = t883 i_type_9913 = t885 i_as_include = t888 i_suffix = t890 ).
                CREATE OBJECT t882->zlnt_view_ownkeys_b0e8086400eb.
                t882->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t892.
                IF t882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t892 ).
                ENDIF.
                DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t893.
                IF t882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t893 ).
                ENDIF.
                CREATE OBJECT t882->zlnt_json_ownkeys_70e5fd461788.
                t882->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t894) = |name|.
                DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t895.
                IF t882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t894 p1 = t895 ).
                ENDIF.
                DATA(t896) = |type|.
                DATA t897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t897.
                IF t882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t896 p1 = t897 ).
                ENDIF.
                t881->load( ).
                APPEND t882 TO t881->items.
                t881->save( ).
                DATA(t898) = t826.
                t825 = t898.
                DATA(t899) = t2.
                DATA t900 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t900.
                DATA t901 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t901.
                t824 = NEW zcl_lnt_structure_type( i_components = t825 i_qualified_name = t899 i_ddic_name = t900 i_description = t901 ).
                t823 = t824.
                DATA t902 TYPE REF TO zcl_lnt_itable_key.
                DATA t903 TYPE REF TO zcl_lnt_itable_key.
                DATA(t904) = t475.
                t903 = t904->zlnt_view_read_sr_48b89cc62ab9( ).
                t902 = t903.
                DATA(t905) = |STANDARD|.
                t902->zlnt_view_write_s_5da6216157cf( p0 = t905 ).
                DATA t906 TYPE REF TO zcl_lnt_ty_table_type.
                DATA(t907) = t823.
                DATA(t908) = t475.
                DATA t909 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t909.
                DATA t910 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t910.
                t906 = NEW zcl_lnt_ty_table_type( i_row_type = t907 i_options = t908 i_qualified_name = t909 i_description = t910 ).
                result = t906.
                RETURN.
              ELSE.
                DATA t911 TYPE abap_bool.
                DATA t912 TYPE abap_bool.
                DATA(t913) = t3.
                t912 = xsdbool( t913 IS BOUND ).
                t911 = t912.
                IF t912 = abap_true.
                  DATA(t914) = VALUE abap_bool( ).
                  DATA t915 TYPE string.
                  DATA t916 TYPE string.
                  DATA(t917) = t16.
                  t916 = t917->value.
                  t915 = t916.
                  DATA(t918) = VALUE abap_bool( ).
                  DATA(t919) = t915.
                  DATA(t920) = |TYPE TABLE FOR |.
                  DATA(t921) = strlen( t919 ).
                  DATA t922 TYPE i.
                  DATA(t923) = VALUE i( ).
                  DATA(t924) = VALUE string( ).
                  t922 = strlen( t920 ).
                  IF t922 = 0.
                    t918 = abap_true.
                  ELSEIF t922 <= t921.
                    t923 = 0.
                    t924 = t919+t923(t922).
                    IF t924 = t920.
                      t918 = abap_true.
                    ENDIF.
                  ENDIF.
                  t914 = t918.
                  t911 = t914.
                ENDIF.
                IF t911 = abap_true.
                  DATA t925 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t925.
                  DATA(t926) = abap_true.
                  IF t926 = abap_true.
                    DATA t927 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t927.
                    DATA t928 TYPE string.
                    DATA t929 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t930) = t3.
                    t929 = t930.
                    t928 = t929->concat_tokens( ).
                    DATA t931 TYPE REF TO zcl_lnt_itable_options.
                    CLEAR t931.
                    DATA(t932) = abap_true.
                    IF t932 = abap_true.
                      DATA(t933) = t475.
                      t931 = t933.
                    ELSE.
                      DATA t934 TYPE REF TO zcl_lnt_itable_options.
                      CLEAR t934.
                      t931 = t934.
                    ENDIF.
                    t927 = me->rap_table_for( i_entity_name = t928 i_options = t931 ).
                    t925 = t927.
                  ELSE.
                    DATA t935 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t935.
                    t925 = t935.
                  ENDIF.
                  result = t925.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t936 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t937) = t1.
    DATA(t938) = t2.
    t936 = me->parse_type( i_node = t937 i_qualified_name = t938 ).
    result = t936.

  ENDMETHOD.

  METHOD rap_table_for.
    DATA(t1) = i_entity_name.
    DATA(t2) = i_options.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = t1.
    t6 = me->get_rap_base_entity_name( i_name = t7 ).
    t5 = t6.
    DATA(t8) = VALUE string( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_behavior_definition.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_behavior_definition.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_current_scope.
    DATA t14 TYPE REF TO zcl_lnt_current_scope.
    DATA(t15) = me->input_2fd0.
    t14 = t15->scope.
    t13 = t14.
    DATA t16 TYPE REF TO zcl_lnt_behavior_definition.
    CLEAR t16.
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE string.
    DATA t19 TYPE REF TO zif_lnt_object.
    DATA(t20) = t13.
    t19 = t20->parent_obj.
    t18 = t19->get_type( ).
    DATA(t21) = |CLAS|.
    t17 = xsdbool( t18 <> t21 ).
    IF t17 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_behavior_definition.
      CLEAR t22.
      t16 = t22.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_behavior_definition.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_class.
      DATA t29 TYPE REF TO zcl_lnt_class.
      DATA t30 TYPE REF TO zif_lnt_object.
      DATA(t31) = t13.
      t30 = t31->parent_obj.
      t29 ?= t30.
      t28 = t29.
      DATA t32 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t32.
      DATA t33 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t33.
      DATA t34 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_abap_file.
      DATA t36 TYPE REF TO zcl_lnt_abap_file.
      DATA(t37) = t28.
      t36 = t37->get_main_abap_file( ).
      t35 = t36.
      DATA t38 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t38.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = t35.
      IF t40 IS INITIAL.
        t39 = abap_true.
      ENDIF.
      IF t39 = abap_true.
        DATA t41 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t41.
        t38 = t41.
      ELSE.
        DATA t42 TYPE REF TO zif_lnt_abap_file_information.
        DATA t43 TYPE REF TO zcl_lnt_abap_file.
        DATA t44 TYPE REF TO zcl_lnt_abap_file.
        DATA(t45) = t35.
        t44 = t45.
        t43 = t44.
        DATA t46 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t47) = t43.
        t46 = t47->info.
        t42 = t46.
        t38 = t42.
      ENDIF.
      t34 = t38.
      t33 = t34.
      DATA t48 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t33.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t51.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t53 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t54) = t33.
        t53 = t54.
        DATA t55 TYPE string.
        DATA t56 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t57) = t28.
        t56 = t57.
        DATA t58 TYPE string.
        DATA(t59) = t56.
        t58 = t59->name.
        t55 = t58.
        t52 = t53->get_class_definition_by_name( i_name = t55 ).
        t48 = t52.
      ENDIF.
      t32 = t48.
      t27 = t32.
      t26 = t27.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = t26.
      IF t62 IS INITIAL.
        t61 = abap_true.
      ENDIF.
      IF t61 = abap_true.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        t60 = t63.
      ELSE.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t65 TYPE REF TO zcl_lnt_info_class_definition.
        DATA(t66) = t26.
        t65 = t66.
        t64 = t65->behavior_definition_name.
        t60 = t64.
      ENDIF.
      t25 = t60.
      t24 = t25.
      DATA t67 TYPE REF TO zcl_lnt_behavior_definition.
      CLEAR t67.
      DATA(t68) = VALUE abap_bool( ).
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t70) = t24.
      t69 = t70.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      t71 = t72.
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = t69.
      IF t74 IS INITIAL.
        t73 = abap_true.
      ELSEIF t74->has = abap_false.
        t73 = abap_true.
      ENDIF.
      t68 = t73.
      IF t68 = abap_true.
        DATA t75 TYPE REF TO zcl_lnt_behavior_definition.
        CLEAR t75.
        t67 = t75.
      ELSE.
        DATA t76 TYPE REF TO zcl_lnt_behavior_definition.
        CLEAR t76.
        DATA t77 TYPE REF TO zif_lnt_object.
        CLEAR t77.
        DATA t78 TYPE REF TO zif_lnt_registry.
        DATA(t79) = t13.
        t78 = t79->reg.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA(t81) = abap_true.
        IF t81 = abap_true.
          DATA(t82) = |BDEF|.
          DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t83->has = abap_true.
          t83->value = t82.
          t80 = t83.
        ELSE.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t84.
          t80 = t84.
        ENDIF.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA(t86) = abap_true.
        IF t86 = abap_true.
          DATA t87 TYPE string.
          DATA(t88) = t24.
          t87 = t88->value.
          DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t89->has = abap_true.
          t89->value = t87.
          t85 = t89.
        ELSE.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          t85 = t90.
        ENDIF.
        t77 = t78->get_object( i_type_9913 = t80 i_name = t85 ).
        DATA t91 TYPE REF TO object.
        t91 = t77.
        t76 ?= t91.
        t67 = t76.
      ENDIF.
      t23 = t67.
      t16 = t23.
    ENDIF.
    t12 = t16.
    t11 = t12.
    DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t92.
    DATA(t93) = VALUE abap_bool( ).
    DATA(t94) = t11.
    IF t94 IS INITIAL.
      t93 = abap_true.
    ENDIF.
    IF t93 = abap_true.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      t92 = t95.
    ELSE.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t97 TYPE REF TO zcl_lnt_behavior_definition.
      DATA(t98) = t11.
      t97 = t98.
      DATA(t99) = t5.
      t96 = t97->find_entity_name_by_alias( i_alias = t99 ).
      t92 = t96.
    ENDIF.
    t10 = t92.
    t9 = t10.
    DATA(t100) = VALUE string( ).
    DATA(t101) = VALUE abap_bool( ).
    DATA(t102) = t9.
    IF t102 IS INITIAL.
      t101 = abap_true.
    ELSEIF t102->has = abap_false.
      t101 = abap_true.
    ENDIF.
    IF t101 = abap_true.
      DATA(t103) = t5.
      t100 = t103.
    ELSE.
      DATA t104 TYPE string.
      DATA(t105) = t9.
      t104 = t105->value.
      t100 = t104.
    ENDIF.
    t8 = t100.
    t4 = t8.
    t3 = t4.
    DATA(t106) = VALUE abap_bool( ).
    DATA t107 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t107.
    DATA t108 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t108.
    DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t109.
    DATA t110 TYPE REF TO zcl_lnt_ddic.
    DATA t111 TYPE REF TO zcl_lnt_current_scope.
    DATA t112 TYPE REF TO zcl_lnt_current_scope.
    DATA(t113) = me->input_2fd0.
    t112 = t113->scope.
    t111 = t112.
    DATA t114 TYPE REF TO zcl_lnt_ddic.
    DATA t115 TYPE REF TO zif_lnt_registry.
    DATA(t116) = t111.
    t115 = t116->reg.
    t114 = NEW zcl_lnt_ddic( i_reg_f149 = t115 ).
    t110 = t114.
    DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t117.
    DATA(t118) = abap_true.
    IF t118 = abap_true.
      DATA(t119) = t3.
      DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t120->has = abap_true.
      t120->value = t119.
      t117 = t120.
    ELSE.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t121.
      t117 = t121.
    ENDIF.
    t109 = t110->lookup_ddls( i_name = t117 ).
    t108 = t109.
    DATA t122 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t122.
    DATA(t123) = VALUE abap_bool( ).
    DATA(t124) = t108.
    IF t124 IS INITIAL.
      t123 = abap_true.
    ENDIF.
    IF t123 = abap_true.
      DATA t125 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t125.
      t122 = t125.
    ELSE.
      DATA t126 TYPE REF TO zcl_lnt_abstract_type.
      DATA t127 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t128) = t108.
      t127 = t128.
      t126 = t127->zlnt_view_read_sr_9be58e2d4893( ).
      t122 = t126.
    ENDIF.
    t107 = t122.
    t106 = xsdbool( t107 IS BOUND ).
    IF t106 = abap_true.
      DATA t129 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t129.
      DATA t130 TYPE REF TO zcl_lnt_void_type.
      CLEAR t130.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t131.
      DATA(t132) = abap_true.
      IF t132 = abap_true.
        DATA(t133) = |RAP-TODO|.
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
      t130 = zcl_lnt_void_type=>get_db65( i_voided = t131 i_qualified_name = t136 ).
      DATA t137 TYPE REF TO zcl_lnt_itable_options.
      CLEAR t137.
      DATA t138 TYPE REF TO zcl_lnt_itable_options.
      DATA(t139) = t2.
      t138 = t139.
      DATA t140 TYPE REF TO zcl_lnt_itable_options.
      CLEAR t140.
      DATA(t141) = VALUE abap_bool( ).
      DATA(t142) = t138.
      IF t142 IS INITIAL.
        t141 = abap_true.
      ENDIF.
      IF t141 = abap_true.
        DATA t143 TYPE REF TO zcl_lnt_itable_options.
        CLEAR t143.
        DATA t144 TYPE abap_bool.
        DATA(t145) = abap_false.
        t144 = t145.
        DATA t146 TYPE string.
        DATA(t147) = |USER|.
        t146 = t147.
        DATA t148 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t148.
        DATA t149 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t149.
        DATA(t150) = abap_true.
        IF t150 = abap_true.
          DATA t151 TYPE REF TO zcl_lnt_itable_key.
          DATA t152 TYPE string.
          DATA(t153) = |primary_key|.
          t152 = t153.
          DATA t154 TYPE string.
          DATA(t155) = |STANDARD|.
          t154 = t155.
          DATA t156 TYPE abap_bool.
          DATA(t157) = abap_false.
          t156 = t157.
          DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t159.
          t158 = t159.
          t151 = NEW zcl_lnt_itable_key( i_name = t152 i_type_9913 = t154 i_key_fields = t158 i_is_unique = t156 ).
          CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
          t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t160 ).
          ENDIF.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t161 ).
          ENDIF.
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t162.
          IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isUnique` p1 = t162 ).
          ENDIF.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyFields` p1 = t163 ).
          ENDIF.
          CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
          t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t164) = |name|.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
          ENDIF.
          DATA(t166) = |type|.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
          ENDIF.
          DATA(t168) = |isUnique|.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
          ENDIF.
          DATA(t170) = |keyFields|.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
          ENDIF.
          t149 = t151.
        ELSE.
          DATA t172 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t172.
          t149 = t172.
        ENDIF.
        t148 = t149.
        DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t173.
        DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t174.
        DATA(t175) = abap_true.
        IF t175 = abap_true.
          DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t176.
          t174 = t176.
        ELSE.
          DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t177.
          t174 = t177.
        ENDIF.
        t173 = t174.
        t143 = NEW zcl_lnt_itable_options( i_with_header = t144 i_key_type = t146 i_primary_key = t148 i_secondary = t173 ).
        CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
        t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t178 ).
        ENDIF.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t179 ).
        ENDIF.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `primaryKey` p1 = t180 ).
        ENDIF.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `secondary` p1 = t181 ).
        ENDIF.
        CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
        t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t182) = |withHeader|.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t183.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
        ENDIF.
        DATA(t184) = |keyType|.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
        ENDIF.
        DATA(t186) = |primaryKey|.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t187.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t186 p1 = t187 ).
        ENDIF.
        DATA(t188) = |secondary|.
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t189.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
        ENDIF.
        t140 = t143.
      ELSE.
        DATA t190 TYPE REF TO zcl_lnt_itable_options.
        DATA(t191) = t138.
        t190 = t191.
        t140 = t190.
      ENDIF.
      t137 = t140.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t192.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t193.
      t129 = NEW zcl_lnt_ty_table_type( i_row_type = t130 i_options = t137 i_qualified_name = t192 i_description = t193 ).
      result = t129.
      RETURN.
    ELSE.
      DATA(t194) = VALUE abap_bool( ).
      DATA t195 TYPE string.
      DATA(t196) = t1.
      t195 = t196.
      DATA(t197) = VALUE abap_bool( ).
      DATA(t198) = VALUE abap_bool( ).
      DATA(t199) = VALUE i( ).
      DATA(t200) = t195.
      DATA(t201) = `\`.
      DATA(t202) = strlen( t200 ).
      IF t201 IS INITIAL.
        t199 = 0.
      ELSE.
        FIND t201 IN t200 MATCH OFFSET t199.
        IF sy-subrc <> 0.
          t199 = -1.
        ENDIF.
      ENDIF.
      DATA(t203) = 0.
      t198 = xsdbool( t199 >= t203 ).
      t197 = t198.
      IF t198 = abap_false.
        DATA(t204) = VALUE abap_bool( ).
        DATA(t205) = VALUE i( ).
        DATA(t206) = t195.
        DATA(t207) = |~|.
        DATA(t208) = strlen( t206 ).
        IF t207 IS INITIAL.
          t205 = 0.
        ELSE.
          FIND t207 IN t206 MATCH OFFSET t205.
          IF sy-subrc <> 0.
            t205 = -1.
          ENDIF.
        ENDIF.
        DATA(t209) = 0.
        t204 = xsdbool( t205 >= t209 ).
        t197 = t204.
      ENDIF.
      t194 = t197.
      IF t194 = abap_true.
        DATA t210 TYPE REF TO zcl_lnt_void_type.
        CLEAR t210.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t211.
        DATA(t212) = abap_true.
        IF t212 = abap_true.
          DATA(t213) = t1.
          DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t214->has = abap_true.
          t214->value = t213.
          t211 = t214.
        ELSE.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          t211 = t215.
        ENDIF.
        DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t216.
        t210 = zcl_lnt_void_type=>get_db65( i_voided = t211 i_qualified_name = t216 ).
        result = t210.
        RETURN.
      ELSE.
        DATA(t217) = VALUE abap_bool( ).
        DATA t218 TYPE REF TO zcl_lnt_ddic.
        DATA t219 TYPE REF TO zcl_lnt_ddic.
        DATA t220 TYPE REF TO zcl_lnt_current_scope.
        DATA t221 TYPE REF TO zcl_lnt_current_scope.
        DATA(t222) = me->input_2fd0.
        t221 = t222->scope.
        t220 = t221.
        DATA t223 TYPE REF TO zcl_lnt_ddic.
        DATA t224 TYPE REF TO zif_lnt_registry.
        DATA(t225) = t220.
        t224 = t225->reg.
        t223 = NEW zcl_lnt_ddic( i_reg_f149 = t224 ).
        t219 = t223.
        t218 = t219.
        DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t226.
        DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t227.
        DATA(t228) = abap_true.
        IF t228 = abap_true.
          DATA(t229) = t3.
          DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t230->has = abap_true.
          t230->value = t229.
          t227 = t230.
        ELSE.
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t231.
          t227 = t231.
        ENDIF.
        t226 = t227.
        DATA(t232) = VALUE abap_bool( ).
        DATA(t233) = VALUE abap_bool( ).
        DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t235) = t226.
        t234 = t235.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t237.
        t236 = t237.
        DATA(t238) = VALUE abap_bool( ).
        DATA(t239) = t234.
        IF t239 IS INITIAL.
          t238 = abap_true.
        ELSEIF t239->has = abap_false.
          t238 = abap_true.
        ENDIF.
        t233 = t238.
        IF t233 = abap_true.
          DATA(t240) = abap_true.
          t232 = t240.
        ELSE.
          DATA t241 TYPE abap_bool.
          DATA t242 TYPE REF TO zif_lnt_registry.
          DATA(t243) = t218.
          t242 = t243->reg.
          DATA t244 TYPE string.
          DATA(t245) = t226.
          t244 = t245->value.
          t241 = t242->in_error_namespace( i_name = t244 ).
          t232 = t241.
        ENDIF.
        t217 = t232.
        IF t217 = abap_true.
          DATA t246 TYPE REF TO zcl_lnt_unknown_type.
          DATA t247 TYPE string.
          DATA t248 TYPE string.
          DATA(t249) = |DDLS |.
          DATA(t250) = t3.
          DATA(t251) = strlen( t249 ).
          t248 = |{ t249 }{ t250 }|.
          DATA(t252) = | not found|.
          DATA(t253) = strlen( t248 ).
          t247 = |{ t248 }{ t252 }|.
          DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t254.
          t246 = NEW zcl_lnt_unknown_type( i_error = t247 i_qualified_name = t254 ).
          result = t246.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t255 TYPE REF TO zcl_lnt_void_type.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t256.
    DATA(t257) = abap_true.
    IF t257 = abap_true.
      DATA(t258) = t1.
      DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t259->has = abap_true.
      t259->value = t258.
      t256 = t259.
    ELSE.
      DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t260.
      t256 = t260.
    ENDIF.
    DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t261.
    t255 = zcl_lnt_void_type=>get_db65( i_voided = t256 i_qualified_name = t261 ).
    result = t255.

  ENDMETHOD.

  METHOD parse_type.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    DATA(t1) = i_node.
    DATA(t2) = i_qualified_name.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t12.
    DATA(t13) = t1.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
    t12 = t13->find_first_expression( i_type_9913 = t14 ).
    t11 = t12.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t11.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t20.
      DATA(t21) = t11.
      t20 = t21.
      t19 = t20->concat_tokens( ).
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t19.
      t15 = t22.
    ENDIF.
    t10 = t15.
    t9 = t10.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t9.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ELSEIF t25->has = abap_false.
      t24 = abap_true.
    ENDIF.
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t23 = t26.
    ELSE.
      DATA(t27) = VALUE string( ).
      DATA(t28) = VALUE string( ).
      DATA(t29) = t9.
      t28 = t29->value.
      DATA(t30) = strlen( t28 ).
      t27 = t28.
      IF t27 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t27 TO UPPER CASE.
      ELSE.
        t27 = zlnt_runtime_uppe_91169605024d=>full( t27 ).
      ENDIF.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t27.
      t23 = t31.
    ENDIF.
    t8 = t23.
    t7 = t8.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = t7.
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
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t43.
      DATA(t44) = t1.
      DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
      t43 = t44->find_first_expression( i_type_9913 = t45 ).
      t42 = t43.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t42.
      IF t48 IS INITIAL.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t46 = t49.
      ELSE.
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t51.
        DATA(t52) = t42.
        t51 = t52.
        t50 = t51->concat_tokens( ).
        DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t53->has = abap_true.
        t53->value = t50.
        t46 = t53.
      ENDIF.
      t41 = t46.
      t40 = t41.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = t40.
      IF t56 IS INITIAL.
        t55 = abap_true.
      ELSEIF t56->has = abap_false.
        t55 = abap_true.
      ENDIF.
      IF t55 = abap_true.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        t54 = t57.
      ELSE.
        DATA(t58) = VALUE string( ).
        DATA(t59) = VALUE string( ).
        DATA(t60) = t40.
        t59 = t60->value.
        DATA(t61) = strlen( t59 ).
        t58 = t59.
        IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t58 TO UPPER CASE.
        ELSE.
          t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
        ENDIF.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t58.
        t54 = t62.
      ENDIF.
      t39 = t54.
      t7 = t39.
    ENDIF.
    DATA(t63) = VALUE abap_bool( ).
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t64.
    DATA(t65) = t7.
    t64 = t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    t66 = t67.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = t64.
    IF t69 IS INITIAL.
      t68 = abap_true.
    ELSEIF t69->has = abap_false.
      t68 = abap_true.
    ENDIF.
    t63 = t68.
    IF t63 = abap_true.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t71.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t73.
      DATA t74 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t74.
      DATA(t75) = t1.
      DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
      t74 = t75->find_first_expression( i_type_9913 = t76 ).
      t73 = t74.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = t73.
      IF t79 IS INITIAL.
        t78 = abap_true.
      ENDIF.
      IF t78 = abap_true.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        t77 = t80.
      ELSE.
        DATA(t81) = VALUE string( ).
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t82.
        DATA(t83) = t73.
        t82 = t83.
        t81 = t82->concat_tokens( ).
        DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t84->has = abap_true.
        t84->value = t81.
        t77 = t84.
      ENDIF.
      t72 = t77.
      t71 = t72.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = t71.
      IF t87 IS INITIAL.
        t86 = abap_true.
      ELSEIF t87->has = abap_false.
        t86 = abap_true.
      ENDIF.
      IF t86 = abap_true.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t85 = t88.
      ELSE.
        DATA(t89) = VALUE string( ).
        DATA(t90) = VALUE string( ).
        DATA(t91) = t71.
        t90 = t91->value.
        DATA(t92) = strlen( t90 ).
        t89 = t90.
        IF t89 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t89 TO UPPER CASE.
        ELSE.
          t89 = zlnt_runtime_uppe_91169605024d=>full( t89 ).
        ENDIF.
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = t89.
        t85 = t93.
      ENDIF.
      t70 = t85.
      t7 = t70.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = VALUE abap_bool( ).
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA(t98) = t7.
      t97 = t98.
      DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t99.
      DATA(t100) = VALUE abap_bool( ).
      DATA(t101) = t97.
      IF t101 IS INITIAL.
        t100 = abap_true.
      ELSEIF t101->has = abap_false.
        t100 = abap_true.
      ENDIF.
      IF t100 = abap_true.
        DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t102.
        t99 = t102.
      ELSE.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE string( ).
        DATA(t105) = t97.
        t104 = t105->value.
        DATA(t106) = |TYPE|.
        DATA(t107) = strlen( t104 ).
        DATA(t108) = VALUE i( ).
        DATA(t109) = VALUE i( ).
        DATA(t110) = VALUE string( ).
        t108 = strlen( t106 ).
        IF t108 = 0.
          t103 = abap_true.
        ELSEIF t108 <= t107.
          t109 = 0.
          t110 = t104+t109(t108).
          IF t110 = t106.
            t103 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t111) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t111->has = abap_true.
        t111->value = t103.
        t99 = t111.
      ENDIF.
      t96 = t99.
      DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t112.
      DATA(t113) = abap_true.
      IF t113 = abap_true.
        DATA(t114) = abap_false.
        DATA(t115) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t115->has = abap_true.
        t115->value = t114.
        t112 = t115.
      ELSE.
        DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t116.
        t112 = t116.
      ENDIF.
      DATA(t117) = VALUE abap_bool( ).
      DATA(t118) = VALUE abap_bool( ).
      IF t96 IS BOUND.
        t117 = t96->has.
      ENDIF.
      IF t112 IS BOUND.
        t118 = t112->has.
      ENDIF.
      IF t117 = t118.
        IF t117 = abap_false.
          t95 = abap_true.
        ELSEIF t96->value = t112->value.
          t95 = abap_true.
        ENDIF.
      ENDIF.
      t94 = t95.
      IF t95 = abap_true.
        DATA(t119) = VALUE abap_bool( ).
        DATA(t120) = VALUE abap_bool( ).
        DATA(t121) = VALUE string( ).
        DATA(t122) = t7.
        t121 = t122->value.
        DATA(t123) = |LIKE|.
        DATA(t124) = strlen( t121 ).
        DATA(t125) = VALUE i( ).
        DATA(t126) = VALUE i( ).
        DATA(t127) = VALUE string( ).
        t125 = strlen( t123 ).
        IF t125 = 0.
          t120 = abap_true.
        ELSEIF t125 <= t124.
          t126 = 0.
          t127 = t121+t126(t125).
          IF t127 = t123.
            t120 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t128) = abap_false.
        t119 = xsdbool( t120 = t128 ).
        t94 = t119.
      ENDIF.
      IF t94 = abap_true.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA(t131) = |TYPE|.
          DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t132->has = abap_true.
          t132->value = t131.
          t129 = t132.
        ELSE.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          t129 = t133.
        ENDIF.
        t7 = t129.
      ENDIF.
    ENDIF.
    DATA(t134) = VALUE abap_bool( ).
    DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t135.
    DATA(t136) = t7.
    t135 = t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    t137 = t138.
    DATA(t139) = VALUE abap_bool( ).
    DATA(t140) = t135.
    IF t140 IS INITIAL.
      t139 = abap_true.
    ELSEIF t140->has = abap_false.
      t139 = abap_true.
    ENDIF.
    t134 = t139.
    IF t134 = abap_true.
      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t142.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t143.
      DATA t144 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t144.
      DATA t145 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t145.
      DATA(t146) = t1.
      DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
      t145 = t146->find_first_expression( i_type_9913 = t147 ).
      t144 = t145.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      DATA(t149) = VALUE abap_bool( ).
      DATA(t150) = t144.
      IF t150 IS INITIAL.
        t149 = abap_true.
      ENDIF.
      IF t149 = abap_true.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        t148 = t151.
      ELSE.
        DATA(t152) = VALUE string( ).
        DATA t153 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t153.
        DATA(t154) = t144.
        t153 = t154.
        t152 = t153->concat_tokens( ).
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t152.
        t148 = t155.
      ENDIF.
      t143 = t148.
      t142 = t143.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t156.
      DATA(t157) = VALUE abap_bool( ).
      DATA(t158) = t142.
      IF t158 IS INITIAL.
        t157 = abap_true.
      ELSEIF t158->has = abap_false.
        t157 = abap_true.
      ENDIF.
      IF t157 = abap_true.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t159.
        t156 = t159.
      ELSE.
        DATA(t160) = VALUE string( ).
        DATA(t161) = VALUE string( ).
        DATA(t162) = t142.
        t161 = t162->value.
        DATA(t163) = strlen( t161 ).
        t160 = t161.
        IF t160 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t160 TO UPPER CASE.
        ELSE.
          t160 = zlnt_runtime_uppe_91169605024d=>full( t160 ).
        ENDIF.
        DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t164->has = abap_true.
        t164->value = t160.
        t156 = t164.
      ENDIF.
      t141 = t156.
      t7 = t141.
    ENDIF.
    DATA(t165) = VALUE abap_bool( ).
    DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t166.
    DATA(t167) = t7.
    t166 = t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
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
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t172.
      DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t173.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t174.
      DATA t175 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t175.
      DATA t176 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t176.
      DATA(t177) = t1.
      DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
      t176 = t177->find_first_expression( i_type_9913 = t178 ).
      t175 = t176.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t179.
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = t175.
      IF t181 IS INITIAL.
        t180 = abap_true.
      ENDIF.
      IF t180 = abap_true.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        t179 = t182.
      ELSE.
        DATA(t183) = VALUE string( ).
        DATA t184 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t184.
        DATA(t185) = t175.
        t184 = t185.
        t183 = t184->concat_tokens( ).
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t183.
        t179 = t186.
      ENDIF.
      t174 = t179.
      t173 = t174.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t187.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = t173.
      IF t189 IS INITIAL.
        t188 = abap_true.
      ELSEIF t189->has = abap_false.
        t188 = abap_true.
      ENDIF.
      IF t188 = abap_true.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        t187 = t190.
      ELSE.
        DATA(t191) = VALUE string( ).
        DATA(t192) = VALUE string( ).
        DATA(t193) = t173.
        t192 = t193->value.
        DATA(t194) = strlen( t192 ).
        t191 = t192.
        IF t191 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t191 TO UPPER CASE.
        ELSE.
          t191 = zlnt_runtime_uppe_91169605024d=>full( t191 ).
        ENDIF.
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t191.
        t187 = t195.
      ENDIF.
      t172 = t187.
      t7 = t172.
    ENDIF.
    DATA(t196) = VALUE abap_bool( ).
    DATA(t197) = VALUE abap_bool( ).
    DATA(t198) = VALUE abap_bool( ).
    DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t199.
    DATA(t200) = t7.
    t199 = t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    t201 = t202.
    DATA(t203) = VALUE abap_bool( ).
    DATA(t204) = t199.
    IF t204 IS INITIAL.
      t203 = abap_true.
    ELSEIF t204->has = abap_false.
      t203 = abap_true.
    ENDIF.
    t198 = t203.
    t197 = t198.
    IF t198 = abap_true.
      DATA(t205) = VALUE abap_bool( ).
      DATA t206 TYPE REF TO object.
      CLEAR t206.
      DATA(t207) = t1.
      t206 = t207->get_db65( ).
      t205 = xsdbool( t206 IS BOUND AND t206 IS INSTANCE OF zcl_lnt_st_parameter ).
      t197 = t205.
    ENDIF.
    t196 = t197.
    IF t197 = abap_true.
      DATA(t208) = VALUE abap_bool( ).
      DATA t209 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t209.
      DATA(t210) = t1.
      DATA(t211) = |LIKE|.
      t209 = t210->find_direct_token_by_text( i_text = t211 ).
      t208 = xsdbool( t209 IS BOUND ).
      t196 = t208.
    ENDIF.
    IF t196 = abap_true.
      DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t212.
      DATA(t213) = abap_true.
      IF t213 = abap_true.
        DATA(t214) = VALUE string( ).
        DATA(t215) = |LIKE |.
        DATA(t216) = VALUE string( ).
        DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t217.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t218.
        DATA t219 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t219.
        DATA(t220) = t3.
        t219 = t220.
        DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t221.
        DATA(t222) = VALUE abap_bool( ).
        DATA(t223) = t219.
        IF t223 IS INITIAL.
          t222 = abap_true.
        ENDIF.
        IF t222 = abap_true.
          DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t224.
          t221 = t224.
        ELSE.
          DATA(t225) = VALUE string( ).
          DATA t226 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t226.
          DATA(t227) = t219.
          t226 = t227.
          t225 = t226->concat_tokens( ).
          DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t228->has = abap_true.
          t228->value = t225.
          t221 = t228.
        ENDIF.
        t218 = t221.
        t217 = t218.
        DATA(t229) = VALUE string( ).
        DATA(t230) = VALUE abap_bool( ).
        DATA(t231) = t217.
        IF t231 IS INITIAL.
          t230 = abap_true.
        ELSEIF t231->has = abap_false.
          t230 = abap_true.
        ENDIF.
        IF t230 = abap_true.
          DATA(t232) = |undefined|.
          t229 = t232.
        ELSE.
          DATA(t233) = VALUE string( ).
          DATA(t234) = t217.
          t233 = t234->value.
          t229 = t233.
        ENDIF.
        t216 = t229.
        DATA(t235) = strlen( t215 ).
        t214 = |{ t215 }{ t216 }|.
        DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t236->has = abap_true.
        t236->value = t214.
        t212 = t236.
      ELSE.
        DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t237.
        t212 = t237.
      ENDIF.
      t7 = t212.
    ENDIF.
    DATA(t238) = VALUE abap_bool( ).
    DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t239.
    DATA(t240) = t7.
    t239 = t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
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
      DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t245.
      DATA(t246) = abap_true.
      IF t246 = abap_true.
        DATA(t247) = |TYPE|.
        DATA(t248) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t248->has = abap_true.
        t248->value = t247.
        t245 = t248.
      ELSE.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        t245 = t249.
      ENDIF.
      t7 = t245.
    ENDIF.
    DATA t250 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t250.
    DATA t251 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t251.
    t250 = t251.
    DATA(t252) = VALUE abap_bool( ).
    DATA(t253) = VALUE string( ).
    DATA(t254) = VALUE string( ).
    DATA(t255) = t7.
    t254 = t255->value.
    t253 = t254.
    DATA(t256) = VALUE abap_bool( ).
    DATA(t257) = VALUE abap_bool( ).
    DATA(t258) = VALUE abap_bool( ).
    DATA(t259) = t253.
    DATA(t260) = |TYPE STRUCTURE FOR |.
    DATA(t261) = strlen( t259 ).
    DATA(t262) = VALUE i( ).
    DATA(t263) = VALUE i( ).
    DATA(t264) = VALUE string( ).
    t262 = strlen( t260 ).
    IF t262 = 0.
      t258 = abap_true.
    ELSEIF t262 <= t261.
      t263 = 0.
      t264 = t259+t263(t262).
      IF t264 = t260.
        t258 = abap_true.
      ENDIF.
    ENDIF.
    t257 = t258.
    IF t258 = abap_false.
      DATA(t265) = VALUE abap_bool( ).
      DATA(t266) = t253.
      DATA(t267) = |TYPE RESPONSE FOR |.
      DATA(t268) = strlen( t266 ).
      DATA(t269) = VALUE i( ).
      DATA(t270) = VALUE i( ).
      DATA(t271) = VALUE string( ).
      t269 = strlen( t267 ).
      IF t269 = 0.
        t265 = abap_true.
      ELSEIF t269 <= t268.
        t270 = 0.
        t271 = t266+t270(t269).
        IF t271 = t267.
          t265 = abap_true.
        ENDIF.
      ENDIF.
      t257 = t265.
    ENDIF.
    t256 = t257.
    IF t257 = abap_false.
      DATA(t272) = VALUE abap_bool( ).
      DATA(t273) = t253.
      DATA(t274) = |TYPE REQUEST FOR |.
      DATA(t275) = strlen( t273 ).
      DATA(t276) = VALUE i( ).
      DATA(t277) = VALUE i( ).
      DATA(t278) = VALUE string( ).
      t276 = strlen( t274 ).
      IF t276 = 0.
        t272 = abap_true.
      ELSEIF t276 <= t275.
        t277 = 0.
        t278 = t273+t277(t276).
        IF t278 = t274.
          t272 = abap_true.
        ENDIF.
      ENDIF.
      t256 = t272.
    ENDIF.
    t252 = t256.
    IF t252 = abap_true.
      DATA t279 TYPE REF TO zcl_lnt_void_type.
      CLEAR t279.
      DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t280.
      DATA t281 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t281.
      DATA t282 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t282.
      DATA(t283) = t1.
      DATA(t284) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
      t282 = t283->find_first_expression( i_type_9913 = t284 ).
      t281 = t282.
      DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t285.
      DATA(t286) = VALUE abap_bool( ).
      DATA(t287) = t281.
      IF t287 IS INITIAL.
        t286 = abap_true.
      ENDIF.
      IF t286 = abap_true.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t288.
        t285 = t288.
      ELSE.
        DATA(t289) = VALUE string( ).
        DATA t290 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t290.
        DATA(t291) = t281.
        t290 = t291.
        t289 = t290->concat_tokens( ).
        DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t292->has = abap_true.
        t292->value = t289.
        t285 = t292.
      ENDIF.
      t280 = t285.
      DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t293.
      t279 = zcl_lnt_void_type=>get_db65( i_voided = t280 i_qualified_name = t293 ).
      result = t279.
      RETURN.
    ELSE.
      DATA(t294) = VALUE abap_bool( ).
      DATA(t295) = VALUE string( ).
      DATA(t296) = t7.
      t295 = t296->value.
      DATA(t297) = |LIKE LINE OF |.
      DATA(t298) = strlen( t295 ).
      DATA(t299) = VALUE i( ).
      DATA(t300) = VALUE i( ).
      DATA(t301) = VALUE string( ).
      t299 = strlen( t297 ).
      IF t299 = 0.
        t294 = abap_true.
      ELSEIF t299 <= t298.
        t300 = 0.
        t301 = t295+t300(t299).
        IF t301 = t297.
          t294 = abap_true.
        ENDIF.
      ENDIF.
      IF t294 = abap_true.
        DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t302.
        DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t303.
        DATA t304 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t304.
        DATA t305 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t305.
        DATA(t306) = t1.
        DATA(t307) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
        t305 = t306->find_first_expression( i_type_9913 = t307 ).
        t304 = t305.
        DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t308.
        DATA(t309) = VALUE abap_bool( ).
        DATA(t310) = t304.
        IF t310 IS INITIAL.
          t309 = abap_true.
        ENDIF.
        IF t309 = abap_true.
          DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t311.
          t308 = t311.
        ELSE.
          DATA(t312) = VALUE string( ).
          DATA t313 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t313.
          DATA(t314) = t304.
          t313 = t314.
          t312 = t313->concat_tokens( ).
          DATA(t315) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t315->has = abap_true.
          t315->value = t312.
          t308 = t315.
        ENDIF.
        t303 = t308.
        t302 = t303.
        DATA t316 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t316.
        DATA t317 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t317.
        DATA(t318) = t1.
        DATA(t319) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
        t317 = t318->find_first_expression( i_type_9913 = t319 ).
        t316 = t317.
        DATA(t320) = VALUE abap_bool( ).
        DATA t321 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t321.
        DATA(t322) = t316.
        t321 = t322.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t323.
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t324.
        t323 = t324.
        DATA(t325) = VALUE abap_bool( ).
        DATA(t326) = t321.
        IF t326 IS INITIAL.
          t325 = abap_true.
        ENDIF.
        t320 = t325.
        IF t320 = abap_true.
          DATA t327 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t327.
          DATA(t328) = t1.
          DATA(t329) = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
          t327 = t328->find_first_expression( i_type_9913 = t329 ).
          t316 = t327.
        ENDIF.
        DATA(t330) = VALUE abap_bool( ).
        DATA t331 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t331.
        DATA(t332) = t316.
        t331 = t332.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t333.
        DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t334.
        t333 = t334.
        DATA(t335) = VALUE abap_bool( ).
        DATA(t336) = t331.
        IF t336 IS INITIAL.
          t335 = abap_true.
        ENDIF.
        t330 = t335.
        IF t330 = abap_true.
          DATA t337 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t337.
          DATA(t338) = t1.
          DATA(t339) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
          t337 = t338->find_first_expression( i_type_9913 = t339 ).
          t316 = t337.
        ENDIF.
        DATA(t340) = VALUE abap_bool( ).
        DATA t341 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t341.
        DATA(t342) = t316.
        t341 = t342.
        DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t343.
        DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t344.
        t343 = t344.
        DATA(t345) = VALUE abap_bool( ).
        DATA(t346) = t341.
        IF t346 IS INITIAL.
          t345 = abap_true.
        ENDIF.
        t340 = t345.
        IF t340 = abap_true.
          DATA(t347) = t3.
          t316 = t347.
          DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t348.
          DATA t349 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t349.
          DATA(t350) = t3.
          t349 = t350.
          DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t351.
          DATA(t352) = VALUE abap_bool( ).
          DATA(t353) = t349.
          IF t353 IS INITIAL.
            t352 = abap_true.
          ENDIF.
          IF t352 = abap_true.
            DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t354.
            t351 = t354.
          ELSE.
            DATA(t355) = VALUE string( ).
            DATA t356 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t356.
            DATA(t357) = t349.
            t356 = t357.
            t355 = t356->concat_tokens( ).
            DATA(t358) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t358->has = abap_true.
            t358->value = t355.
            t351 = t358.
          ENDIF.
          t348 = t351.
          t302 = t348.
        ENDIF.
        DATA t359 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t359.
        DATA t360 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t360.
        DATA(t361) = t316.
        DATA t362 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t362.
        DATA(t363) = abap_true.
        IF t363 = abap_true.
          DATA(t364) = abap_false.
          DATA(t365) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t365->has = abap_true.
          t365->value = t364.
          t362 = t365.
        ELSE.
          DATA t366 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t366.
          t362 = t366.
        ENDIF.
        t360 = me->resolve_like_name( i_node = t361 i_header_logic = t362 ).
        t359 = t360.
        DATA t367 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t367.
        DATA t368 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t368.
        t367 = t368.
        DATA(t369) = VALUE abap_bool( ).
        DATA t370 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t370.
        DATA(t371) = t359.
        t370 = t371.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        t372 = t373.
        DATA(t374) = VALUE abap_bool( ).
        DATA(t375) = t370.
        IF t375 IS INITIAL.
          t374 = abap_true.
        ENDIF.
        t369 = t374.
        IF t369 = abap_true.
          DATA t376 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t376.
          DATA(t377) = VALUE string( ).
          DATA(t378) = VALUE string( ).
          DATA(t379) = |Type error, could not resolve "|.
          DATA(t380) = VALUE string( ).
          DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t381.
          DATA(t382) = t302.
          t381 = t382.
          DATA(t383) = VALUE string( ).
          DATA(t384) = VALUE abap_bool( ).
          DATA(t385) = t381.
          IF t385 IS INITIAL.
            t384 = abap_true.
          ELSEIF t385->has = abap_false.
            t384 = abap_true.
          ENDIF.
          IF t384 = abap_true.
            DATA(t386) = |undefined|.
            t383 = t386.
          ELSE.
            DATA(t387) = VALUE string( ).
            DATA(t388) = t381.
            t387 = t388->value.
            t383 = t387.
          ENDIF.
          t380 = t383.
          DATA(t389) = strlen( t379 ).
          t378 = |{ t379 }{ t380 }|.
          DATA(t390) = |", parseType|.
          DATA(t391) = strlen( t378 ).
          t377 = |{ t378 }{ t390 }|.
          DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t392.
          t376 = NEW zcl_lnt_unknown_type( i_error = t377 i_qualified_name = t392 ).
          result = t376.
          RETURN.
        ELSE.
          DATA(t393) = VALUE abap_bool( ).
          DATA(t394) = t359.
          t393 = xsdbool( t394 IS BOUND AND t394 IS INSTANCE OF zcl_lnt_ty_table_type ).
          IF t393 = abap_true.
            DATA t395 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t395.
            DATA(t396) = abap_true.
            IF t396 = abap_true.
              DATA t397 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t397.
              DATA t398 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t398.
              DATA t399 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t399.
              DATA(t400) = t359.
              t399 ?= t400.
              t398 = t399.
              DATA t401 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t401.
              DATA(t402) = t398.
              t401 = t402->row_type.
              t397 = t401.
              t395 = t397.
            ELSE.
              DATA t403 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t403.
              t395 = t403.
            ENDIF.
            t367 = t395.
          ELSE.
            DATA(t404) = VALUE abap_bool( ).
            DATA(t405) = t359.
            t404 = xsdbool( t405 IS BOUND AND t405 IS INSTANCE OF zcl_lnt_void_type ).
            IF t404 = abap_true.
              DATA t406 TYPE REF TO zcl_lnt_void_type.
              CLEAR t406.
              DATA(t407) = t359.
              t406 ?= t407.
              t367 = t406.
            ELSE.
              DATA t408 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t408.
              DATA(t409) = VALUE string( ).
              DATA(t410) = |Type error, not a table type |.
              DATA(t411) = VALUE string( ).
              DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t412.
              DATA(t413) = t302.
              t412 = t413.
              DATA(t414) = VALUE string( ).
              DATA(t415) = VALUE abap_bool( ).
              DATA(t416) = t412.
              IF t416 IS INITIAL.
                t415 = abap_true.
              ELSEIF t416->has = abap_false.
                t415 = abap_true.
              ENDIF.
              IF t415 = abap_true.
                DATA(t417) = |undefined|.
                t414 = t417.
              ELSE.
                DATA(t418) = VALUE string( ).
                DATA(t419) = t412.
                t418 = t419->value.
                t414 = t418.
              ENDIF.
              t411 = t414.
              DATA(t420) = strlen( t410 ).
              t409 = |{ t410 }{ t411 }|.
              DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t421.
              t408 = NEW zcl_lnt_unknown_type( i_error = t409 i_qualified_name = t421 ).
              result = t408.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t422) = VALUE abap_bool( ).
        DATA t423 TYPE REF TO zif_lnt_union_bb14dc41.
        CLEAR t423.
        DATA(t424) = t1.
        t423 = t424.
        DATA(t425) = VALUE abap_bool( ).
        DATA(t426) = VALUE abap_bool( ).
        DATA t427 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t427.
        DATA(t428) = t423.
        DATA(t429) = |OCCURS|.
        t427 = t428->find_direct_token_by_text( i_text = t429 ).
        t426 = xsdbool( t427 IS BOUND ).
        IF t426 = abap_true.
          DATA(t430) = abap_true.
          t425 = t430.
        ELSE.
          DATA(t431) = VALUE abap_bool( ).
          DATA(t432) = VALUE abap_bool( ).
          DATA t433 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t433.
          DATA t434 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t434.
          DATA t435 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t435.
          DATA(t436) = t423.
          DATA(t437) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
          t435 = t436->find_first_expression( i_type_9913 = t437 ).
          t434 = t435.
          DATA t438 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t438.
          DATA(t439) = VALUE abap_bool( ).
          DATA(t440) = t434.
          IF t440 IS INITIAL.
            t439 = abap_true.
          ENDIF.
          IF t439 = abap_true.
            DATA t441 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t441.
            t438 = t441.
          ELSE.
            DATA t442 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t442.
            DATA t443 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t443.
            DATA(t444) = t434.
            t443 = t444.
            DATA(t445) = |OCCURS|.
            t442 = t443->find_direct_token_by_text( i_text = t445 ).
            t438 = t442.
          ENDIF.
          t433 = t438.
          t432 = xsdbool( t433 IS BOUND ).
          IF t432 = abap_true.
            DATA(t446) = abap_true.
            t431 = t446.
          ELSE.
            DATA(t447) = abap_false.
            t431 = t447.
          ENDIF.
          t425 = t431.
        ENDIF.
        t422 = t425.
        IF t422 = abap_true.
          DATA t448 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t448.
          DATA t449 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t449.
          DATA(t450) = t367.
          t449 = t450.
          DATA t451 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t451.
          DATA(t452) = VALUE abap_bool( ).
          DATA(t453) = VALUE abap_bool( ).
          DATA(t454) = VALUE i( ).
          DATA(t455) = VALUE string( ).
          DATA(t456) = t7.
          t455 = t456->value.
          DATA(t457) = | WITH HEADER LINE|.
          DATA(t458) = strlen( t455 ).
          IF t457 IS INITIAL.
            t454 = 0.
          ELSE.
            FIND t457 IN t455 MATCH OFFSET t454.
            IF sy-subrc <> 0.
              t454 = -1.
            ENDIF.
          ENDIF.
          DATA(t459) = 0.
          t453 = xsdbool( t454 >= t459 ).
          t452 = t453.
          DATA(t460) = VALUE string( ).
          DATA(t461) = |DEFAULT|.
          t460 = t461.
          DATA t462 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t462.
          DATA t463 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t463.
          t462 = t463.
          DATA t464 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t464.
          DATA t465 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t465.
          t464 = t465.
          t451 = NEW zcl_lnt_itable_options( i_with_header = t452 i_key_type = t460 i_primary_key = t462 i_secondary = t464 ).
          CREATE OBJECT t451->zlnt_view_ownkeys_b0e8086400eb.
          t451->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t466.
          IF t451->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t451->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t466 ).
          ENDIF.
          DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t467.
          IF t451->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t451->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t467 ).
          ENDIF.
          CREATE OBJECT t451->zlnt_json_ownkeys_70e5fd461788.
          t451->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t468) = |withHeader|.
          DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t469.
          IF t451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t451->zlnt_json_ownkeys_70e5fd461788->put( p0 = t468 p1 = t469 ).
          ENDIF.
          DATA(t470) = |keyType|.
          DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t471.
          IF t451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t451->zlnt_json_ownkeys_70e5fd461788->put( p0 = t470 p1 = t471 ).
          ENDIF.
          DATA(t472) = t2.
          DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t473.
          t448 = NEW zcl_lnt_ty_table_type( i_row_type = t449 i_options = t451 i_qualified_name = t472 i_description = t473 ).
          result = t448.
          RETURN.
        ENDIF.
        DATA t474 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t474.
        DATA(t475) = abap_true.
        IF t475 = abap_true.
          DATA t476 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t476.
          DATA(t477) = t367.
          t476 = t477.
          t474 = t476.
        ELSE.
          DATA t478 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t478.
          t474 = t478.
        ENDIF.
        result = t474.
        RETURN.
      ELSE.
        DATA(t479) = VALUE abap_bool( ).
        DATA(t480) = VALUE string( ).
        DATA(t481) = t7.
        t480 = t481->value.
        DATA(t482) = |LIKE REF TO |.
        DATA(t483) = strlen( t480 ).
        DATA(t484) = VALUE i( ).
        DATA(t485) = VALUE i( ).
        DATA(t486) = VALUE string( ).
        t484 = strlen( t482 ).
        IF t484 = 0.
          t479 = abap_true.
        ELSEIF t484 <= t483.
          t485 = 0.
          t486 = t480+t485(t484).
          IF t486 = t482.
            t479 = abap_true.
          ENDIF.
        ENDIF.
        IF t479 = abap_true.
          DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t487.
          DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t488.
          DATA t489 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t489.
          DATA t490 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t490.
          DATA(t491) = t1.
          DATA(t492) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
          t490 = t491->find_first_expression( i_type_9913 = t492 ).
          t489 = t490.
          DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t493.
          DATA(t494) = VALUE abap_bool( ).
          DATA(t495) = t489.
          IF t495 IS INITIAL.
            t494 = abap_true.
          ENDIF.
          IF t494 = abap_true.
            DATA t496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t496.
            t493 = t496.
          ELSE.
            DATA(t497) = VALUE string( ).
            DATA t498 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t498.
            DATA(t499) = t489.
            t498 = t499.
            t497 = t498->concat_tokens( ).
            DATA(t500) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t500->has = abap_true.
            t500->value = t497.
            t493 = t500.
          ENDIF.
          t488 = t493.
          t487 = t488.
          DATA t501 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t501.
          DATA t502 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t502.
          DATA t503 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t503.
          DATA(t504) = t1.
          DATA(t505) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
          t503 = t504->find_first_expression( i_type_9913 = t505 ).
          DATA t506 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t506.
          DATA(t507) = abap_true.
          IF t507 = abap_true.
            DATA(t508) = abap_false.
            DATA(t509) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t509->has = abap_true.
            t509->value = t508.
            t506 = t509.
          ELSE.
            DATA t510 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t510.
            t506 = t510.
          ENDIF.
          t502 = me->resolve_like_name( i_node = t503 i_header_logic = t506 ).
          t501 = t502.
          DATA(t511) = VALUE abap_bool( ).
          DATA t512 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t512.
          DATA(t513) = t501.
          t512 = t513.
          DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t514.
          DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t515.
          t514 = t515.
          DATA(t516) = VALUE abap_bool( ).
          DATA(t517) = t512.
          IF t517 IS INITIAL.
            t516 = abap_true.
          ENDIF.
          t511 = t516.
          IF t511 = abap_true.
            DATA t518 TYPE REF TO zcl_lnt_unknown_type.
            CLEAR t518.
            DATA(t519) = VALUE string( ).
            DATA(t520) = VALUE string( ).
            DATA(t521) = |Type error, could not resolve "|.
            DATA(t522) = VALUE string( ).
            DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t523.
            DATA(t524) = t487.
            t523 = t524.
            DATA(t525) = VALUE string( ).
            DATA(t526) = VALUE abap_bool( ).
            DATA(t527) = t523.
            IF t527 IS INITIAL.
              t526 = abap_true.
            ELSEIF t527->has = abap_false.
              t526 = abap_true.
            ENDIF.
            IF t526 = abap_true.
              DATA(t528) = |undefined|.
              t525 = t528.
            ELSE.
              DATA(t529) = VALUE string( ).
              DATA(t530) = t523.
              t529 = t530->value.
              t525 = t529.
            ENDIF.
            t522 = t525.
            DATA(t531) = strlen( t521 ).
            t520 = |{ t521 }{ t522 }|.
            DATA(t532) = |", parseType|.
            DATA(t533) = strlen( t520 ).
            t519 = |{ t520 }{ t532 }|.
            DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t534.
            t518 = NEW zcl_lnt_unknown_type( i_error = t519 i_qualified_name = t534 ).
            result = t518.
            RETURN.
          ENDIF.
          DATA t535 TYPE REF TO zcl_lnt_data_reference.
          CLEAR t535.
          DATA t536 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t536.
          DATA(t537) = t501.
          t536 = t537.
          DATA(t538) = t487.
          t535 = NEW zcl_lnt_data_reference( i_type_9913 = t536 i_qualified_name = t538 ).
          result = t535.
          RETURN.
        ELSE.
          DATA(t539) = VALUE abap_bool( ).
          DATA(t540) = VALUE abap_bool( ).
          DATA(t541) = VALUE abap_bool( ).
          DATA(t542) = VALUE abap_bool( ).
          DATA(t543) = VALUE abap_bool( ).
          DATA(t544) = VALUE string( ).
          DATA(t545) = t7.
          t544 = t545->value.
          DATA(t546) = |TYPE STANDARD TABLE|.
          t543 = xsdbool( t544 = t546 ).
          t542 = t543.
          IF t543 = abap_false.
            DATA(t547) = VALUE abap_bool( ).
            DATA(t548) = VALUE string( ).
            DATA(t549) = t7.
            t548 = t549->value.
            DATA(t550) = |TYPE SORTED TABLE|.
            t547 = xsdbool( t548 = t550 ).
            t542 = t547.
          ENDIF.
          t541 = t542.
          IF t542 = abap_false.
            DATA(t551) = VALUE abap_bool( ).
            DATA(t552) = VALUE string( ).
            DATA(t553) = t7.
            t552 = t553->value.
            DATA(t554) = |TYPE HASHED TABLE|.
            t551 = xsdbool( t552 = t554 ).
            t541 = t551.
          ENDIF.
          t540 = t541.
          IF t541 = abap_false.
            DATA(t555) = VALUE abap_bool( ).
            DATA(t556) = VALUE string( ).
            DATA(t557) = t7.
            t556 = t557->value.
            DATA(t558) = |TYPE INDEX TABLE|.
            t555 = xsdbool( t556 = t558 ).
            t540 = t555.
          ENDIF.
          t539 = t540.
          IF t540 = abap_false.
            DATA(t559) = VALUE abap_bool( ).
            DATA(t560) = VALUE string( ).
            DATA(t561) = t7.
            t560 = t561->value.
            DATA(t562) = |TYPE ANY TABLE|.
            t559 = xsdbool( t560 = t562 ).
            t539 = t559.
          ENDIF.
          IF t539 = abap_true.
            DATA t563 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t563.
            DATA t564 TYPE REF TO zcl_lnt_any_type.
            CLEAR t564.
            DATA t565 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t565.
            t564 = zcl_lnt_any_type=>get_db65( i_input_967e = t565 ).
            DATA t566 TYPE REF TO zcl_lnt_itable_options.
            CLEAR t566.
            DATA(t567) = VALUE abap_bool( ).
            DATA(t568) = VALUE abap_bool( ).
            DATA(t569) = VALUE i( ).
            DATA(t570) = VALUE string( ).
            DATA(t571) = VALUE string( ).
            DATA(t572) = t1.
            t571 = t572->concat_tokens( ).
            DATA(t573) = strlen( t571 ).
            t570 = t571.
            IF t570 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t570 TO UPPER CASE.
            ELSE.
              t570 = zlnt_runtime_uppe_91169605024d=>full( t570 ).
            ENDIF.
            DATA(t574) = |WITH HEADER LINE|.
            DATA(t575) = strlen( t570 ).
            IF t574 IS INITIAL.
              t569 = 0.
            ELSE.
              FIND t574 IN t570 MATCH OFFSET t569.
              IF sy-subrc <> 0.
                t569 = -1.
              ENDIF.
            ENDIF.
            DATA(t576) = 0.
            t568 = xsdbool( t569 >= t576 ).
            t567 = t568.
            DATA(t577) = VALUE string( ).
            DATA(t578) = |USER|.
            t577 = t578.
            DATA t579 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t579.
            DATA t580 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t580.
            t579 = t580.
            DATA t581 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t581.
            DATA t582 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t582.
            t581 = t582.
            t566 = NEW zcl_lnt_itable_options( i_with_header = t567 i_key_type = t577 i_primary_key = t579 i_secondary = t581 ).
            CREATE OBJECT t566->zlnt_view_ownkeys_b0e8086400eb.
            t566->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t583.
            IF t566->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t583 ).
            ENDIF.
            DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t584.
            IF t566->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t584 ).
            ENDIF.
            CREATE OBJECT t566->zlnt_json_ownkeys_70e5fd461788.
            t566->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t585) = |withHeader|.
            DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t586.
            IF t566->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = t585 p1 = t586 ).
            ENDIF.
            DATA(t587) = |keyType|.
            DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t588.
            IF t566->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = t587 p1 = t588 ).
            ENDIF.
            DATA t589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t589.
            DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t590.
            t563 = NEW zcl_lnt_ty_table_type( i_row_type = t564 i_options = t566 i_qualified_name = t589 i_description = t590 ).
            result = t563.
            RETURN.
          ELSE.
            DATA(t591) = VALUE abap_bool( ).
            DATA(t592) = VALUE string( ).
            DATA(t593) = t7.
            t592 = t593->value.
            DATA(t594) = |LIKE |.
            DATA(t595) = strlen( t592 ).
            DATA(t596) = VALUE i( ).
            DATA(t597) = VALUE i( ).
            DATA(t598) = VALUE string( ).
            t596 = strlen( t594 ).
            IF t596 = 0.
              t591 = abap_true.
            ELSEIF t596 <= t595.
              t597 = 0.
              t598 = t592+t597(t596).
              IF t598 = t594.
                t591 = abap_true.
              ENDIF.
            ENDIF.
            IF t591 = abap_true.
              DATA t599 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t599.
              DATA t600 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t600.
              DATA(t601) = t1.
              DATA(t602) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
              t600 = t601->find_first_expression( i_type_9913 = t602 ).
              t599 = t600.
              DATA(t603) = VALUE abap_bool( ).
              DATA t604 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t604.
              DATA(t605) = t599.
              t604 = t605.
              DATA t606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t606.
              DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t607.
              t606 = t607.
              DATA(t608) = VALUE abap_bool( ).
              DATA(t609) = t604.
              IF t609 IS INITIAL.
                t608 = abap_true.
              ENDIF.
              t603 = t608.
              IF t603 = abap_true.
                DATA t610 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t610.
                DATA(t611) = t1.
                DATA(t612) = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
                t610 = t611->find_first_expression( i_type_9913 = t612 ).
                t599 = t610.
              ENDIF.
              DATA(t613) = VALUE abap_bool( ).
              DATA t614 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t614.
              DATA(t615) = t599.
              t614 = t615.
              DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t616.
              DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t617.
              t616 = t617.
              DATA(t618) = VALUE abap_bool( ).
              DATA(t619) = t614.
              IF t619 IS INITIAL.
                t618 = abap_true.
              ENDIF.
              t613 = t618.
              IF t613 = abap_true.
                DATA t620 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t620.
                DATA(t621) = t1.
                DATA(t622) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
                t620 = t621->find_first_expression( i_type_9913 = t622 ).
                t599 = t620.
              ENDIF.
              DATA(t623) = VALUE abap_bool( ).
              DATA t624 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t624.
              DATA(t625) = t599.
              t624 = t625.
              DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t626.
              DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t627.
              t626 = t627.
              DATA(t628) = VALUE abap_bool( ).
              DATA(t629) = t624.
              IF t629 IS INITIAL.
                t628 = abap_true.
              ENDIF.
              t623 = t628.
              IF t623 = abap_true.
                DATA t630 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t630.
                DATA(t631) = t1.
                DATA(t632) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
                t630 = t631->find_first_expression( i_type_9913 = t632 ).
                t599 = t630.
              ENDIF.
              DATA(t633) = VALUE abap_bool( ).
              DATA t634 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t634.
              DATA(t635) = t599.
              t634 = t635.
              DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t636.
              DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t637.
              t636 = t637.
              DATA(t638) = VALUE abap_bool( ).
              DATA(t639) = t634.
              IF t639 IS INITIAL.
                t638 = abap_true.
              ENDIF.
              t633 = t638.
              IF t633 = abap_true.
                DATA t640 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t640.
                DATA(t641) = t1.
                DATA(t642) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
                t640 = t641->find_first_expression( i_type_9913 = t642 ).
                t599 = t640.
              ENDIF.
              DATA t643 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t643.
              DATA(t644) = t599.
              DATA t645 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t645.
              t643 = me->resolve_like_name( i_node = t644 i_header_logic = t645 ).
              t250 = t643.
              DATA(t646) = VALUE abap_bool( ).
              DATA(t647) = VALUE abap_bool( ).
              DATA(t648) = t250.
              t647 = xsdbool( t648 IS BOUND ).
              t646 = t647.
              IF t647 = abap_true.
                DATA(t649) = VALUE abap_bool( ).
                DATA t650 TYPE REF TO zif_lnt_union_bb14dc41.
                CLEAR t650.
                DATA(t651) = t1.
                t650 = t651.
                DATA(t652) = VALUE abap_bool( ).
                DATA(t653) = VALUE abap_bool( ).
                DATA t654 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t654.
                DATA(t655) = t650.
                DATA(t656) = |OCCURS|.
                t654 = t655->find_direct_token_by_text( i_text = t656 ).
                t653 = xsdbool( t654 IS BOUND ).
                IF t653 = abap_true.
                  DATA(t657) = abap_true.
                  t652 = t657.
                ELSE.
                  DATA(t658) = VALUE abap_bool( ).
                  DATA(t659) = VALUE abap_bool( ).
                  DATA t660 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t660.
                  DATA t661 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t661.
                  DATA t662 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t662.
                  DATA(t663) = t650.
                  DATA(t664) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
                  t662 = t663->find_first_expression( i_type_9913 = t664 ).
                  t661 = t662.
                  DATA t665 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t665.
                  DATA(t666) = VALUE abap_bool( ).
                  DATA(t667) = t661.
                  IF t667 IS INITIAL.
                    t666 = abap_true.
                  ENDIF.
                  IF t666 = abap_true.
                    DATA t668 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t668.
                    t665 = t668.
                  ELSE.
                    DATA t669 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t669.
                    DATA t670 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t670.
                    DATA(t671) = t661.
                    t670 = t671.
                    DATA(t672) = |OCCURS|.
                    t669 = t670->find_direct_token_by_text( i_text = t672 ).
                    t665 = t669.
                  ENDIF.
                  t660 = t665.
                  t659 = xsdbool( t660 IS BOUND ).
                  IF t659 = abap_true.
                    DATA(t673) = abap_true.
                    t658 = t673.
                  ELSE.
                    DATA(t674) = abap_false.
                    t658 = t674.
                  ENDIF.
                  t652 = t658.
                ENDIF.
                t649 = t652.
                t646 = t649.
              ENDIF.
              IF t646 = abap_true.
                DATA t675 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t675.
                DATA t676 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t676.
                DATA(t677) = t250.
                t676 = t677.
                DATA t678 TYPE REF TO zcl_lnt_itable_options.
                CLEAR t678.
                DATA(t679) = VALUE abap_bool( ).
                DATA(t680) = VALUE abap_bool( ).
                DATA(t681) = VALUE i( ).
                DATA(t682) = VALUE string( ).
                DATA(t683) = t7.
                t682 = t683->value.
                DATA(t684) = |WITH HEADER LINE|.
                DATA(t685) = strlen( t682 ).
                IF t684 IS INITIAL.
                  t681 = 0.
                ELSE.
                  FIND t684 IN t682 MATCH OFFSET t681.
                  IF sy-subrc <> 0.
                    t681 = -1.
                  ENDIF.
                ENDIF.
                DATA(t686) = 0.
                t680 = xsdbool( t681 >= t686 ).
                t679 = t680.
                DATA(t687) = VALUE string( ).
                DATA(t688) = |DEFAULT|.
                t687 = t688.
                DATA t689 TYPE REF TO zcl_lnt_itable_key.
                CLEAR t689.
                DATA t690 TYPE REF TO zcl_lnt_itable_key.
                CLEAR t690.
                t689 = t690.
                DATA t691 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t691.
                DATA t692 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t692.
                t691 = t692.
                t678 = NEW zcl_lnt_itable_options( i_with_header = t679 i_key_type = t687 i_primary_key = t689 i_secondary = t691 ).
                CREATE OBJECT t678->zlnt_view_ownkeys_b0e8086400eb.
                t678->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t693.
                IF t678->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t678->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t693 ).
                ENDIF.
                DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t694.
                IF t678->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t678->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t694 ).
                ENDIF.
                CREATE OBJECT t678->zlnt_json_ownkeys_70e5fd461788.
                t678->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t695) = |withHeader|.
                DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t696.
                IF t678->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t678->zlnt_json_ownkeys_70e5fd461788->put( p0 = t695 p1 = t696 ).
                ENDIF.
                DATA(t697) = |keyType|.
                DATA t698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t698.
                IF t678->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t678->zlnt_json_ownkeys_70e5fd461788->put( p0 = t697 p1 = t698 ).
                ENDIF.
                DATA(t699) = t2.
                DATA t700 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t700.
                t675 = NEW zcl_lnt_ty_table_type( i_row_type = t676 i_options = t678 i_qualified_name = t699 i_description = t700 ).
                t250 = t675.
              ELSE.
                DATA(t701) = VALUE abap_bool( ).
                DATA(t702) = VALUE abap_bool( ).
                DATA(t703) = VALUE string( ).
                DATA(t704) = t7.
                t703 = t704->value.
                DATA(t705) = | WITH HEADER LINE|.
                DATA(t706) = strlen( t703 ).
                DATA(t707) = VALUE i( ).
                DATA(t708) = VALUE i( ).
                DATA(t709) = VALUE string( ).
                t707 = strlen( t705 ).
                IF t707 = 0.
                  t702 = abap_true.
                ELSEIF t707 <= t706.
                  t708 = 0.
                  t708 = t706 - t707.
                  t709 = t703+t708(t707).
                  IF t709 = t705.
                    t702 = abap_true.
                  ENDIF.
                ENDIF.
                t701 = t702.
                IF t702 = abap_true.
                  DATA(t710) = VALUE abap_bool( ).
                  DATA(t711) = t250.
                  t710 = xsdbool( t711 IS BOUND AND t711 IS INSTANCE OF zcl_lnt_ty_table_type ).
                  t701 = t710.
                ENDIF.
                IF t701 = abap_true.
                  DATA t712 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t712.
                  DATA t713 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t713.
                  DATA t714 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t714.
                  DATA t715 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t715.
                  DATA(t716) = t250.
                  t715 ?= t716.
                  t714 = t715.
                  DATA t717 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t717.
                  DATA(t718) = t714.
                  t717 = t718->row_type.
                  t713 = t717.
                  DATA t719 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t719.
                  DATA(t720) = VALUE abap_bool( ).
                  DATA(t721) = abap_true.
                  t720 = t721.
                  DATA(t722) = VALUE string( ).
                  DATA(t723) = |DEFAULT|.
                  t722 = t723.
                  DATA t724 TYPE REF TO zcl_lnt_itable_key.
                  CLEAR t724.
                  DATA t725 TYPE REF TO zcl_lnt_itable_key.
                  CLEAR t725.
                  t724 = t725.
                  DATA t726 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t726.
                  DATA t727 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t727.
                  t726 = t727.
                  t719 = NEW zcl_lnt_itable_options( i_with_header = t720 i_key_type = t722 i_primary_key = t724 i_secondary = t726 ).
                  CREATE OBJECT t719->zlnt_view_ownkeys_b0e8086400eb.
                  t719->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t728.
                  IF t719->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t719->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t728 ).
                  ENDIF.
                  DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t729.
                  IF t719->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t719->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t729 ).
                  ENDIF.
                  CREATE OBJECT t719->zlnt_json_ownkeys_70e5fd461788.
                  t719->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t730) = |withHeader|.
                  DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t731.
                  IF t719->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t719->zlnt_json_ownkeys_70e5fd461788->put( p0 = t730 p1 = t731 ).
                  ENDIF.
                  DATA(t732) = |keyType|.
                  DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t733.
                  IF t719->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t719->zlnt_json_ownkeys_70e5fd461788->put( p0 = t732 p1 = t733 ).
                  ENDIF.
                  DATA(t734) = t2.
                  DATA t735 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t735.
                  t712 = NEW zcl_lnt_ty_table_type( i_row_type = t713 i_options = t719 i_qualified_name = t734 i_description = t735 ).
                  t250 = t712.
                ENDIF.
              ENDIF.
            ELSE.
              DATA(t736) = VALUE abap_bool( ).
              DATA(t737) = VALUE string( ).
              DATA(t738) = t7.
              t737 = t738->value.
              DATA(t739) = |TYPE LINE OF |.
              DATA(t740) = strlen( t737 ).
              DATA(t741) = VALUE i( ).
              DATA(t742) = VALUE i( ).
              DATA(t743) = VALUE string( ).
              t741 = strlen( t739 ).
              IF t741 = 0.
                t736 = abap_true.
              ELSEIF t741 <= t740.
                t742 = 0.
                t743 = t737+t742(t741).
                IF t743 = t739.
                  t736 = abap_true.
                ENDIF.
              ENDIF.
              IF t736 = abap_true.
                DATA t744 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t744.
                DATA t745 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t745.
                DATA(t746) = t1.
                DATA(t747) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
                t745 = t746->find_first_expression( i_type_9913 = t747 ).
                t744 = t745.
                DATA t748 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t748.
                DATA(t749) = t744.
                DATA t750 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t750.
                DATA t751 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t751.
                DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t752.
                t748 = me->resolve_type_name( i_type_name = t749 i_length = t750 i_decimals_2eed = t751 i_qualified_name = t752 ).
                t250 = t748.
                DATA(t753) = t250.
                DATA(t754) = VALUE abap_bool( ).
                DATA(t755) = t250.
                t754 = xsdbool( t755 IS BOUND AND t755 IS INSTANCE OF zcl_lnt_ty_table_type ).
                IF t754 = abap_true.
                  DATA t756 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t756.
                  DATA(t757) = abap_true.
                  IF t757 = abap_true.
                    DATA t758 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t758.
                    DATA t759 TYPE REF TO zcl_lnt_ty_table_type.
                    CLEAR t759.
                    DATA t760 TYPE REF TO zcl_lnt_ty_table_type.
                    CLEAR t760.
                    DATA(t761) = t250.
                    t760 ?= t761.
                    t759 = t760.
                    DATA t762 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t762.
                    DATA(t763) = t759.
                    t762 = t763->row_type.
                    t758 = t762.
                    t756 = t758.
                  ELSE.
                    DATA t764 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t764.
                    t756 = t764.
                  ENDIF.
                  result = t756.
                  RETURN.
                ELSE.
                  DATA(t765) = VALUE abap_bool( ).
                  DATA(t766) = t250.
                  t765 = xsdbool( t766 IS BOUND AND t766 IS INSTANCE OF zcl_lnt_void_type ).
                  IF t765 = abap_true.
                    DATA t767 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t767.
                    DATA(t768) = t250.
                    t767 ?= t768.
                    result = t767.
                    RETURN.
                  ELSE.
                    DATA(t769) = VALUE abap_bool( ).
                    DATA(t770) = t250.
                    t769 = xsdbool( t770 IS BOUND AND t770 IS INSTANCE OF zcl_lnt_unknown_type ).
                    IF t769 = abap_true.
                      DATA t771 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t771.
                      DATA(t772) = VALUE string( ).
                      DATA(t773) = |TYPE LINE OF, unknown type, |.
                      DATA(t774) = VALUE string( ).
                      DATA t775 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t775.
                      DATA t776 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t776.
                      DATA(t777) = t250.
                      t776 ?= t777.
                      t775 = t776.
                      DATA(t778) = VALUE string( ).
                      DATA(t779) = t775.
                      t778 = t779->error.
                      t774 = t778.
                      DATA(t780) = strlen( t773 ).
                      t772 = |{ t773 }{ t774 }|.
                      DATA t781 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t781.
                      t771 = NEW zcl_lnt_unknown_type( i_error = t772 i_qualified_name = t781 ).
                      result = t771.
                      RETURN.
                    ELSE.
                      DATA t782 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t782.
                      DATA(t783) = VALUE string( ).
                      DATA(t784) = |TYPE LINE OF, unexpected type, |.
                      DATA(t785) = VALUE string( ).
                      DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t786.
                      DATA t787 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t787.
                      DATA t788 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                      CLEAR t788.
                      DATA t789 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                      CLEAR t789.
                      DATA t790 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t790.
                      DATA(t791) = t250.
                      t790 = t791.
                      DATA t792 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                      CLEAR t792.
                      DATA(t793) = VALUE abap_bool( ).
                      DATA(t794) = t790.
                      IF t794 IS INITIAL.
                        t793 = abap_true.
                      ENDIF.
                      IF t793 = abap_true.
                        DATA t795 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                        CLEAR t795.
                        t792 = t795.
                      ELSE.
                        DATA t796 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                        CLEAR t796.
                        DATA t797 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t797.
                        DATA(t798) = t790.
                        t797 = t798.
                        t796 = t797->zlnt_builtin_clas_3f891b097658( ).
                        t792 = t796.
                      ENDIF.
                      t789 = t792.
                      t788 = t789.
                      DATA t799 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t799.
                      DATA(t800) = VALUE abap_bool( ).
                      DATA(t801) = t788.
                      IF t801 IS INITIAL.
                        t800 = abap_true.
                      ENDIF.
                      IF t800 = abap_true.
                        DATA t802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t802.
                        t799 = t802.
                      ELSE.
                        DATA(t803) = VALUE string( ).
                        DATA t804 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                        CLEAR t804.
                        DATA(t805) = t788.
                        t804 = t805.
                        t803 = t804->name.
                        DATA(t806) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t806->has = abap_true.
                        t806->value = t803.
                        t799 = t806.
                      ENDIF.
                      t787 = t799.
                      t786 = t787.
                      DATA(t807) = VALUE string( ).
                      DATA(t808) = VALUE abap_bool( ).
                      DATA(t809) = t786.
                      IF t809 IS INITIAL.
                        t808 = abap_true.
                      ELSEIF t809->has = abap_false.
                        t808 = abap_true.
                      ENDIF.
                      IF t808 = abap_true.
                        DATA(t810) = |undefined|.
                        t807 = t810.
                      ELSE.
                        DATA(t811) = VALUE string( ).
                        DATA(t812) = t786.
                        t811 = t812->value.
                        t807 = t811.
                      ENDIF.
                      t785 = t807.
                      DATA(t813) = strlen( t784 ).
                      t783 = |{ t784 }{ t785 }|.
                      DATA t814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t814.
                      t782 = NEW zcl_lnt_unknown_type( i_error = t783 i_qualified_name = t814 ).
                      result = t782.
                      RETURN.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ELSE.
                DATA(t815) = VALUE abap_bool( ).
                DATA(t816) = VALUE string( ).
                DATA(t817) = t7.
                t816 = t817->value.
                DATA(t818) = |TYPE REF TO |.
                DATA(t819) = strlen( t816 ).
                DATA(t820) = VALUE i( ).
                DATA(t821) = VALUE i( ).
                DATA(t822) = VALUE string( ).
                t820 = strlen( t818 ).
                IF t820 = 0.
                  t815 = abap_true.
                ELSEIF t820 <= t819.
                  t821 = 0.
                  t822 = t816+t821(t820).
                  IF t822 = t818.
                    t815 = abap_true.
                  ENDIF.
                ENDIF.
                IF t815 = abap_true.
                  DATA t823 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t823.
                  DATA(t824) = t3.
                  t823 = me->resolve_type_ref( i_chain_8ed6 = t824 ).
                  t250 = t823.
                ELSE.
                  DATA(t825) = VALUE abap_bool( ).
                  DATA(t826) = VALUE string( ).
                  DATA(t827) = t7.
                  t826 = t827->value.
                  DATA(t828) = |TYPE|.
                  DATA(t829) = strlen( t826 ).
                  DATA(t830) = VALUE i( ).
                  DATA(t831) = VALUE i( ).
                  DATA(t832) = VALUE string( ).
                  t830 = strlen( t828 ).
                  IF t830 = 0.
                    t825 = abap_true.
                  ELSEIF t830 <= t829.
                    t831 = 0.
                    t832 = t826+t831(t830).
                    IF t832 = t828.
                      t825 = abap_true.
                    ENDIF.
                  ENDIF.
                  IF t825 = abap_true.
                    DATA t833 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t833.
                    DATA(t834) = t3.
                    DATA t835 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    CLEAR t835.
                    DATA(t836) = t1.
                    t835 = me->find_length( i_node = t836 ).
                    DATA t837 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    CLEAR t837.
                    DATA t838 TYPE REF TO zif_lnt_union_bb14dc41.
                    CLEAR t838.
                    DATA(t839) = t1.
                    t838 = t839.
                    DATA t840 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    CLEAR t840.
                    DATA t841 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t841.
                    DATA t842 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t842.
                    DATA t843 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t843.
                    DATA t844 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t844.
                    DATA t845 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t845.
                    DATA t846 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t846.
                    DATA(t847) = t838.
                    DATA(t848) = zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03.
                    t846 = t847->find_direct_expression( i_type_9913 = t848 ).
                    t845 = t846.
                    DATA t849 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t849.
                    DATA(t850) = VALUE abap_bool( ).
                    DATA(t851) = t845.
                    IF t851 IS INITIAL.
                      t850 = abap_true.
                    ENDIF.
                    IF t850 = abap_true.
                      DATA t852 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t852.
                      t849 = t852.
                    ELSE.
                      DATA t853 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t853.
                      DATA t854 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t854.
                      DATA(t855) = t845.
                      t854 = t855.
                      DATA(t856) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
                      t853 = t854->find_direct_expression( i_type_9913 = t856 ).
                      t849 = t853.
                    ENDIF.
                    t844 = t849.
                    t843 = t844.
                    DATA t857 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t857.
                    DATA(t858) = VALUE abap_bool( ).
                    DATA(t859) = t843.
                    IF t859 IS INITIAL.
                      t858 = abap_true.
                    ENDIF.
                    IF t858 = abap_true.
                      DATA t860 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t860.
                      t857 = t860.
                    ELSE.
                      DATA(t861) = VALUE string( ).
                      DATA t862 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t862.
                      DATA(t863) = t843.
                      t862 = t863.
                      t861 = t862->concat_tokens( ).
                      DATA(t864) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t864->has = abap_true.
                      t864->value = t861.
                      t857 = t864.
                    ENDIF.
                    t842 = t857.
                    t841 = t842.
                    DATA t865 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    CLEAR t865.
                    DATA(t866) = VALUE abap_bool( ).
                    DATA(t867) = t841.
                    IF t867 IS BOUND.
                      IF t867->has = abap_true.
                        t866 = xsdbool( strlen( t867->value ) > 0 ).
                      ENDIF.
                    ENDIF.
                    IF t866 = abap_true.
                      DATA t868 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                      CLEAR t868.
                      DATA(t869) = abap_true.
                      IF t869 = abap_true.
                        DATA t870 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        CLEAR t870.
                        DATA(t871) = VALUE string( ).
                        DATA(t872) = t841.
                        t871 = t872->value.
                        t870 = zlnt_runtime_stri_248d3505915c=>int_optional( t871 ).
                        t868 = t870.
                      ELSE.
                        DATA t873 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        CLEAR t873.
                        t868 = t873.
                      ENDIF.
                      t865 = t868.
                    ELSE.
                      DATA t874 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                      CLEAR t874.
                      t865 = t874.
                    ENDIF.
                    t840 = t865.
                    t837 = t840.
                    DATA(t875) = t2.
                    t833 = me->resolve_type_name( i_type_name = t834 i_length = t835 i_decimals_2eed = t837 i_qualified_name = t875 ).
                    t250 = t833.
                    DATA(t876) = VALUE string( ).
                    DATA(t877) = VALUE string( ).
                    DATA(t878) = VALUE string( ).
                    DATA(t879) = t1.
                    t878 = t879->concat_tokens( ).
                    DATA(t880) = strlen( t878 ).
                    t877 = t878.
                    IF t877 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                      TRANSLATE t877 TO UPPER CASE.
                    ELSE.
                      t877 = zlnt_runtime_uppe_91169605024d=>full( t877 ).
                    ENDIF.
                    t876 = t877.
                    DATA(t881) = VALUE abap_bool( ).
                    DATA(t882) = VALUE abap_bool( ).
                    DATA(t883) = t250.
                    t882 = xsdbool( t883 IS BOUND ).
                    t881 = t882.
                    IF t882 = abap_true.
                      DATA(t884) = VALUE abap_bool( ).
                      DATA t885 TYPE REF TO zif_lnt_union_bb14dc41.
                      CLEAR t885.
                      DATA(t886) = t1.
                      t885 = t886.
                      DATA(t887) = VALUE abap_bool( ).
                      DATA(t888) = VALUE abap_bool( ).
                      DATA t889 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t889.
                      DATA(t890) = t885.
                      DATA(t891) = |OCCURS|.
                      t889 = t890->find_direct_token_by_text( i_text = t891 ).
                      t888 = xsdbool( t889 IS BOUND ).
                      IF t888 = abap_true.
                        DATA(t892) = abap_true.
                        t887 = t892.
                      ELSE.
                        DATA(t893) = VALUE abap_bool( ).
                        DATA(t894) = VALUE abap_bool( ).
                        DATA t895 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t895.
                        DATA t896 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t896.
                        DATA t897 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t897.
                        DATA(t898) = t885.
                        DATA(t899) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
                        t897 = t898->find_first_expression( i_type_9913 = t899 ).
                        t896 = t897.
                        DATA t900 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t900.
                        DATA(t901) = VALUE abap_bool( ).
                        DATA(t902) = t896.
                        IF t902 IS INITIAL.
                          t901 = abap_true.
                        ENDIF.
                        IF t901 = abap_true.
                          DATA t903 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t903.
                          t900 = t903.
                        ELSE.
                          DATA t904 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t904.
                          DATA t905 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t905.
                          DATA(t906) = t896.
                          t905 = t906.
                          DATA(t907) = |OCCURS|.
                          t904 = t905->find_direct_token_by_text( i_text = t907 ).
                          t900 = t904.
                        ENDIF.
                        t895 = t900.
                        t894 = xsdbool( t895 IS BOUND ).
                        IF t894 = abap_true.
                          DATA(t908) = abap_true.
                          t893 = t908.
                        ELSE.
                          DATA(t909) = abap_false.
                          t893 = t909.
                        ENDIF.
                        t887 = t893.
                      ENDIF.
                      t884 = t887.
                      t881 = t884.
                    ENDIF.
                    IF t881 = abap_true.
                      DATA t910 TYPE REF TO zcl_lnt_ty_table_type.
                      CLEAR t910.
                      DATA t911 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t911.
                      DATA(t912) = t250.
                      t911 = t912.
                      DATA t913 TYPE REF TO zcl_lnt_itable_options.
                      CLEAR t913.
                      DATA(t914) = VALUE abap_bool( ).
                      DATA(t915) = VALUE abap_bool( ).
                      DATA(t916) = VALUE i( ).
                      DATA(t917) = t876.
                      DATA(t918) = | WITH HEADER LINE|.
                      DATA(t919) = strlen( t917 ).
                      IF t918 IS INITIAL.
                        t916 = 0.
                      ELSE.
                        FIND t918 IN t917 MATCH OFFSET t916.
                        IF sy-subrc <> 0.
                          t916 = -1.
                        ENDIF.
                      ENDIF.
                      DATA(t920) = 0.
                      t915 = xsdbool( t916 >= t920 ).
                      t914 = t915.
                      DATA(t921) = VALUE string( ).
                      DATA(t922) = |DEFAULT|.
                      t921 = t922.
                      DATA t923 TYPE REF TO zcl_lnt_itable_key.
                      CLEAR t923.
                      DATA t924 TYPE REF TO zcl_lnt_itable_key.
                      CLEAR t924.
                      t923 = t924.
                      DATA t925 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      CLEAR t925.
                      DATA t926 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      CLEAR t926.
                      t925 = t926.
                      t913 = NEW zcl_lnt_itable_options( i_with_header = t914 i_key_type = t921 i_primary_key = t923 i_secondary = t925 ).
                      CREATE OBJECT t913->zlnt_view_ownkeys_b0e8086400eb.
                      t913->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t927.
                      IF t913->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t913->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t927 ).
                      ENDIF.
                      DATA t928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t928.
                      IF t913->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t913->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t928 ).
                      ENDIF.
                      CREATE OBJECT t913->zlnt_json_ownkeys_70e5fd461788.
                      t913->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t929) = |withHeader|.
                      DATA t930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t930.
                      IF t913->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t913->zlnt_json_ownkeys_70e5fd461788->put( p0 = t929 p1 = t930 ).
                      ENDIF.
                      DATA(t931) = |keyType|.
                      DATA t932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t932.
                      IF t913->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t913->zlnt_json_ownkeys_70e5fd461788->put( p0 = t931 p1 = t932 ).
                      ENDIF.
                      DATA(t933) = t2.
                      DATA t934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t934.
                      t910 = NEW zcl_lnt_ty_table_type( i_row_type = t911 i_options = t913 i_qualified_name = t933 i_description = t934 ).
                      t250 = t910.
                    ELSE.
                      DATA(t935) = VALUE abap_bool( ).
                      DATA(t936) = VALUE abap_bool( ).
                      DATA(t937) = t250.
                      t936 = xsdbool( t937 IS BOUND ).
                      t935 = t936.
                      IF t936 = abap_true.
                        DATA(t938) = VALUE abap_bool( ).
                        DATA(t939) = VALUE i( ).
                        DATA(t940) = t876.
                        DATA(t941) = | WITH HEADER LINE|.
                        DATA(t942) = strlen( t940 ).
                        IF t941 IS INITIAL.
                          t939 = 0.
                        ELSE.
                          FIND t941 IN t940 MATCH OFFSET t939.
                          IF sy-subrc <> 0.
                            t939 = -1.
                          ENDIF.
                        ENDIF.
                        DATA(t943) = 0.
                        t938 = xsdbool( t939 >= t943 ).
                        t935 = t938.
                      ENDIF.
                      IF t935 = abap_true.
                        DATA(t944) = VALUE abap_bool( ).
                        DATA(t945) = t250.
                        t944 = xsdbool( t945 IS BOUND AND t945 IS INSTANCE OF zcl_lnt_void_type ).
                        IF t944 = abap_true.
                          DATA t946 TYPE REF TO zcl_lnt_ty_table_type.
                          CLEAR t946.
                          DATA t947 TYPE REF TO zcl_lnt_void_type.
                          CLEAR t947.
                          DATA(t948) = t250.
                          t947 ?= t948.
                          DATA t949 TYPE REF TO zcl_lnt_itable_options.
                          CLEAR t949.
                          DATA(t950) = VALUE abap_bool( ).
                          DATA(t951) = abap_true.
                          t950 = t951.
                          DATA(t952) = VALUE string( ).
                          DATA(t953) = |DEFAULT|.
                          t952 = t953.
                          DATA t954 TYPE REF TO zcl_lnt_itable_key.
                          CLEAR t954.
                          DATA t955 TYPE REF TO zcl_lnt_itable_key.
                          CLEAR t955.
                          t954 = t955.
                          DATA t956 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          CLEAR t956.
                          DATA t957 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          CLEAR t957.
                          t956 = t957.
                          t949 = NEW zcl_lnt_itable_options( i_with_header = t950 i_key_type = t952 i_primary_key = t954 i_secondary = t956 ).
                          CREATE OBJECT t949->zlnt_view_ownkeys_b0e8086400eb.
                          t949->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t958.
                          IF t949->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t949->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t958 ).
                          ENDIF.
                          DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t959.
                          IF t949->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t949->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t959 ).
                          ENDIF.
                          CREATE OBJECT t949->zlnt_json_ownkeys_70e5fd461788.
                          t949->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA(t960) = |withHeader|.
                          DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t961.
                          IF t949->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t949->zlnt_json_ownkeys_70e5fd461788->put( p0 = t960 p1 = t961 ).
                          ENDIF.
                          DATA(t962) = |keyType|.
                          DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t963.
                          IF t949->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t949->zlnt_json_ownkeys_70e5fd461788->put( p0 = t962 p1 = t963 ).
                          ENDIF.
                          DATA t964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t964.
                          DATA t965 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t965.
                          t946 = NEW zcl_lnt_ty_table_type( i_row_type = t947 i_options = t949 i_qualified_name = t964 i_description = t965 ).
                          t250 = t946.
                        ELSE.
                          DATA(t966) = VALUE abap_bool( ).
                          DATA(t967) = VALUE abap_bool( ).
                          DATA(t968) = t250.
                          t967 = xsdbool( t968 IS BOUND AND t968 IS INSTANCE OF zcl_lnt_ty_table_type ).
                          t966 = xsdbool( t967 = abap_false ).
                          IF t966 = abap_true.
                            DATA t969 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                            CLEAR t969.
                            DATA t970 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                            CLEAR t970.
                            DATA t971 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t971.
                            DATA(t972) = abap_true.
                            IF t972 = abap_true.
                              DATA(t973) = |WITH HEADER LINE can only be used with internal table|.
                              DATA(t974) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t974->has = abap_true.
                              t974->value = t973.
                              t971 = t974.
                            ELSE.
                              DATA t975 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t975.
                              t971 = t975.
                            ENDIF.
                            t970 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t971 ).
                            t969 = NEW #( ).
                            t969->payload = t970.
                            CLEAR t969->source_value.
                            IF t970 IS BOUND.
                              DATA t976 TYPE REF TO zlnt_view_storage_74017ca272ac.
                              CLEAR t976.
                              DATA t977 TYPE REF TO object.
                              CLEAR t977.
                              CLEAR t976.
                              t977 = t970.
                              TRY.
                                  t969->source_value ?= t977.
                                CATCH cx_sy_move_cast_error.
                              ENDTRY.
                              IF t969->source_value IS NOT BOUND.
                                TRY.
                                    t976 ?= t970.
                                  CATCH cx_sy_move_cast_error.
                                ENDTRY.
                                IF t976 IS BOUND.
                                  t969->source_value = t976->source( ).
                                ENDIF.
                                IF t969->source_value IS NOT BOUND.
                                  CREATE OBJECT t969->source_value.
                                  t969->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                                  t969->source_value->oval = t970.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                            RAISE EXCEPTION t969.
                          ELSE.
                            DATA t978 TYPE REF TO zcl_lnt_ty_table_type.
                            CLEAR t978.
                            DATA t979 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t979.
                            DATA t980 TYPE REF TO zcl_lnt_ty_table_type.
                            CLEAR t980.
                            DATA t981 TYPE REF TO zcl_lnt_ty_table_type.
                            CLEAR t981.
                            DATA(t982) = t250.
                            t981 ?= t982.
                            t980 = t981.
                            DATA t983 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t983.
                            DATA(t984) = t980.
                            t983 = t984->row_type.
                            t979 = t983.
                            DATA t985 TYPE REF TO zcl_lnt_itable_options.
                            CLEAR t985.
                            DATA(t986) = VALUE abap_bool( ).
                            DATA(t987) = abap_true.
                            t986 = t987.
                            DATA(t988) = VALUE string( ).
                            DATA(t989) = |DEFAULT|.
                            t988 = t989.
                            DATA t990 TYPE REF TO zcl_lnt_itable_key.
                            CLEAR t990.
                            DATA t991 TYPE REF TO zcl_lnt_itable_key.
                            CLEAR t991.
                            t990 = t991.
                            DATA t992 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            CLEAR t992.
                            DATA t993 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            CLEAR t993.
                            t992 = t993.
                            t985 = NEW zcl_lnt_itable_options( i_with_header = t986 i_key_type = t988 i_primary_key = t990 i_secondary = t992 ).
                            CREATE OBJECT t985->zlnt_view_ownkeys_b0e8086400eb.
                            t985->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t994.
                            IF t985->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t985->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t994 ).
                            ENDIF.
                            DATA t995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t995.
                            IF t985->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t985->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t995 ).
                            ENDIF.
                            CREATE OBJECT t985->zlnt_json_ownkeys_70e5fd461788.
                            t985->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA(t996) = |withHeader|.
                            DATA t997 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t997.
                            IF t985->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t985->zlnt_json_ownkeys_70e5fd461788->put( p0 = t996 p1 = t997 ).
                            ENDIF.
                            DATA(t998) = |keyType|.
                            DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t999.
                            IF t985->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t985->zlnt_json_ownkeys_70e5fd461788->put( p0 = t998 p1 = t999 ).
                            ENDIF.
                            DATA t1000 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1000.
                            DATA t1001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1001.
                            t978 = NEW zcl_lnt_ty_table_type( i_row_type = t979 i_options = t985 i_qualified_name = t1000 i_description = t1001 ).
                            t250 = t978.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                    DATA(t1002) = VALUE abap_bool( ).
                    DATA(t1003) = VALUE abap_bool( ).
                    DATA t1004 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t1004.
                    DATA(t1005) = t250.
                    t1004 = t1005.
                    DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1006.
                    DATA t1007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1007.
                    t1006 = t1007.
                    DATA(t1008) = VALUE abap_bool( ).
                    DATA(t1009) = t1004.
                    IF t1009 IS INITIAL.
                      t1008 = abap_true.
                    ENDIF.
                    t1003 = t1008.
                    t1002 = t1003.
                    IF t1003 = abap_true.
                      DATA(t1010) = VALUE abap_bool( ).
                      DATA t1011 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t1011.
                      DATA(t1012) = t3.
                      t1011 = t1012.
                      DATA t1013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1013.
                      DATA t1014 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1014.
                      t1013 = t1014.
                      DATA(t1015) = VALUE abap_bool( ).
                      DATA(t1016) = t1011.
                      IF t1016 IS INITIAL.
                        t1015 = abap_true.
                      ENDIF.
                      t1010 = t1015.
                      t1002 = t1010.
                    ENDIF.
                    IF t1002 = abap_true.
                      DATA(t1017) = VALUE f( ).
                      DATA(t1018) = CONV f( 1 ).
                      t1017 = t1018.
                      DATA t1019 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t1019.
                      DATA t1020 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t1020.
                      DATA(t1021) = t1.
                      DATA(t1022) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
                      t1020 = t1021->find_direct_expression( i_type_9913 = t1022 ).
                      t1019 = t1020.
                      DATA(t1023) = VALUE abap_bool( ).
                      DATA(t1024) = t1019.
                      t1023 = xsdbool( t1024 IS BOUND ).
                      IF t1023 = abap_true.
                        DATA t1025 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t1025.
                        DATA t1026 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t1026.
                        DATA t1027 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t1027.
                        DATA(t1028) = t1019.
                        t1027 = t1028.
                        DATA(t1029) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
                        t1026 = t1027->find_direct_expression( i_type_9913 = t1029 ).
                        t1025 = t1026.
                        DATA(t1030) = VALUE abap_bool( ).
                        DATA(t1031) = t1025.
                        t1030 = xsdbool( t1031 IS BOUND ).
                        IF t1030 = abap_true.
                          DATA(t1032) = VALUE f( ).
                          DATA(t1033) = VALUE string( ).
                          DATA t1034 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t1034.
                          DATA(t1035) = t1025.
                          t1034 = t1035.
                          t1033 = t1034->concat_tokens( ).
                          DATA(t1036) = VALUE i( ).
                          DATA(t1037) = VALUE i( ).
                          DATA(t1038) = VALUE string( ).
                          DATA(t1039) = VALUE abap_bool( ).
                          DATA(t1040) = VALUE abap_bool( ).
                          DATA(t1041) = VALUE int8( ).
                          DATA(t1042) = VALUE i( ).
                          t1036 = 0.
                          t1041 = 0.
                          t1039 = abap_false.
                          t1040 = abap_false.
                          t1037 = strlen( t1033 ).
                          DATA(t1043) = VALUE i( ).
                          DATA(t1044) = VALUE i( ).
                          DATA(t1045) = VALUE string( ).
                          WHILE t1036 < t1037.
                            t1044 = t1036.
                            t1045 = t1033+t1044(1).
                            DATA t1046 TYPE c LENGTH 1.
                            CLEAR t1046.
                            DATA(t1047) = VALUE xstring( ).
                            DATA t1048 TYPE x LENGTH 1.
                            CLEAR t1048.
                            DATA t1049 TYPE x LENGTH 1.
                            CLEAR t1049.
                            DATA(t1050) = VALUE i( ).
                            t1046 = t1045.
                            t1043 = cl_abap_conv_out_ce=>uccpi( t1046 ).
                            IF t1043 >= 255.
                              IF zlnt_builtin_code_bb79b741c1de IS NOT BOUND.
                                zlnt_builtin_code_bb79b741c1de = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                              ENDIF.
                              zlnt_builtin_code_bb79b741c1de->convert( EXPORTING data = t1045 IMPORTING buffer = t1047 ).
                              t1048 = t1047(1).
                              t1049 = t1047+1(1).
                              t1043 = t1048.
                              t1050 = t1049.
                              t1043 = t1043 + t1050 * 256.
                            ENDIF.
                            IF t1043 = 9 OR t1043 = 10 OR t1043 = 11 OR t1043 = 12 OR t1043 = 13 OR t1043 = 32 OR t1043 = 160 OR t1043 = 5760 OR t1043 = 8232 OR t1043 = 8233 OR t1043 = 8239 OR t1043 = 8287 OR t1043 = 12288 OR t1043 = 65279
                            OR t1043 >= 8192 AND t1043 <= 8202.
                              t1036 = t1036 + 1.
                            ELSE.
                              EXIT.
                            ENDIF.
                          ENDWHILE.
                          IF t1036 < t1037.
                            t1038 = t1033+t1036(1).
                            IF t1038 = '-' OR t1038 = '+'.
                              t1039 = xsdbool( t1038 = '-' ).
                              t1036 = t1036 + 1.
                            ENDIF.
                          ENDIF.
                          WHILE t1036 < t1037.
                            t1038 = t1033+t1036(1).
                            IF t1038 CN '0123456789' OR t1038 = ` `.
                              EXIT.
                            ENDIF.
                            t1042 = t1038.
                            IF t1041 > range_parse_safe_prefix OR ( t1041 = range_parse_safe_prefix AND t1042 > 1 ).
                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                            ENDIF.
                            t1041 = t1041 * 10 + t1042.
                            t1040 = abap_true.
                            t1036 = t1036 + 1.
                          ENDWHILE.
                          IF t1040 = abap_false OR ( t1039 = abap_true AND t1041 = 0 ).
                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                          ENDIF.
                          IF t1039 = abap_true.
                            t1041 = 0 - t1041.
                          ENDIF.
                          t1032 = t1041.
                          t1017 = t1032.
                        ENDIF.
                      ENDIF.
                      DATA t1051 TYPE REF TO zcl_lnt_character_type.
                      CLEAR t1051.
                      DATA(t1052) = t1017.
                      DATA t1053 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t1053.
                      DATA(t1054) = abap_true.
                      IF t1054 = abap_true.
                        DATA t1055 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t1055.
                        DATA t1056 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1056.
                        DATA(t1057) = t2.
                        t1056 = t1057.
                        DATA t1058 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1058.
                        DATA t1059 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1059.
                        t1058 = t1059.
                        DATA t1060 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t1060.
                        DATA t1061 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t1061.
                        t1060 = t1061.
                        DATA t1062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1062.
                        DATA t1063 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1063.
                        t1062 = t1063.
                        DATA t1064 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1064.
                        DATA t1065 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1065.
                        t1064 = t1065.
                        DATA t1066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1066.
                        DATA t1067 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1067.
                        t1066 = t1067.
                        t1055 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1056 i_conversion_exit = t1058 i_derived_from_constant = t1060 i_ddic_name = t1062 i_rtti_name = t1064 i_description = t1066 ).
                        CREATE OBJECT t1055->zlnt_view_ownkeys_b0e8086400eb.
                        t1055->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1068.
                        IF t1055->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1055->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1068 ).
                        ENDIF.
                        CREATE OBJECT t1055->zlnt_json_ownkeys_70e5fd461788.
                        t1055->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t1069) = |qualifiedName|.
                        DATA t1070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1070.
                        IF t1055->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1055->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1069 p1 = t1070 ).
                        ENDIF.
                        t1053 = t1055.
                      ELSE.
                        DATA t1071 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t1071.
                        t1053 = t1071.
                      ENDIF.
                      t1051 = NEW zcl_lnt_character_type( i_length = t1052 i_extra = t1053 ).
                      t250 = t1051.
                      DATA(t1072) = VALUE abap_bool( ).
                      DATA t1073 TYPE REF TO zif_lnt_union_bb14dc41.
                      CLEAR t1073.
                      DATA(t1074) = t1.
                      t1073 = t1074.
                      DATA(t1075) = VALUE abap_bool( ).
                      DATA(t1076) = VALUE abap_bool( ).
                      DATA t1077 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t1077.
                      DATA(t1078) = t1073.
                      DATA(t1079) = |OCCURS|.
                      t1077 = t1078->find_direct_token_by_text( i_text = t1079 ).
                      t1076 = xsdbool( t1077 IS BOUND ).
                      IF t1076 = abap_true.
                        DATA(t1080) = abap_true.
                        t1075 = t1080.
                      ELSE.
                        DATA(t1081) = VALUE abap_bool( ).
                        DATA(t1082) = VALUE abap_bool( ).
                        DATA t1083 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t1083.
                        DATA t1084 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t1084.
                        DATA t1085 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t1085.
                        DATA(t1086) = t1073.
                        DATA(t1087) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
                        t1085 = t1086->find_first_expression( i_type_9913 = t1087 ).
                        t1084 = t1085.
                        DATA t1088 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t1088.
                        DATA(t1089) = VALUE abap_bool( ).
                        DATA(t1090) = t1084.
                        IF t1090 IS INITIAL.
                          t1089 = abap_true.
                        ENDIF.
                        IF t1089 = abap_true.
                          DATA t1091 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t1091.
                          t1088 = t1091.
                        ELSE.
                          DATA t1092 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t1092.
                          DATA t1093 TYPE REF TO zcl_lnt_expression_node.
                          CLEAR t1093.
                          DATA(t1094) = t1084.
                          t1093 = t1094.
                          DATA(t1095) = |OCCURS|.
                          t1092 = t1093->find_direct_token_by_text( i_text = t1095 ).
                          t1088 = t1092.
                        ENDIF.
                        t1083 = t1088.
                        t1082 = xsdbool( t1083 IS BOUND ).
                        IF t1082 = abap_true.
                          DATA(t1096) = abap_true.
                          t1081 = t1096.
                        ELSE.
                          DATA(t1097) = abap_false.
                          t1081 = t1097.
                        ENDIF.
                        t1075 = t1081.
                      ENDIF.
                      t1072 = t1075.
                      IF t1072 = abap_true.
                        DATA t1098 TYPE REF TO zcl_lnt_ty_table_type.
                        CLEAR t1098.
                        DATA t1099 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1099.
                        DATA(t1100) = t250.
                        t1099 = t1100.
                        DATA t1101 TYPE REF TO zcl_lnt_itable_options.
                        CLEAR t1101.
                        DATA(t1102) = VALUE abap_bool( ).
                        DATA(t1103) = VALUE abap_bool( ).
                        DATA(t1104) = VALUE i( ).
                        DATA(t1105) = t876.
                        DATA(t1106) = | WITH HEADER LINE|.
                        DATA(t1107) = strlen( t1105 ).
                        IF t1106 IS INITIAL.
                          t1104 = 0.
                        ELSE.
                          FIND t1106 IN t1105 MATCH OFFSET t1104.
                          IF sy-subrc <> 0.
                            t1104 = -1.
                          ENDIF.
                        ENDIF.
                        DATA(t1108) = 0.
                        t1103 = xsdbool( t1104 >= t1108 ).
                        t1102 = t1103.
                        DATA(t1109) = VALUE string( ).
                        DATA(t1110) = |DEFAULT|.
                        t1109 = t1110.
                        DATA t1111 TYPE REF TO zcl_lnt_itable_key.
                        CLEAR t1111.
                        DATA t1112 TYPE REF TO zcl_lnt_itable_key.
                        CLEAR t1112.
                        t1111 = t1112.
                        DATA t1113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        CLEAR t1113.
                        DATA t1114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        CLEAR t1114.
                        t1113 = t1114.
                        t1101 = NEW zcl_lnt_itable_options( i_with_header = t1102 i_key_type = t1109 i_primary_key = t1111 i_secondary = t1113 ).
                        CREATE OBJECT t1101->zlnt_view_ownkeys_b0e8086400eb.
                        t1101->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1115.
                        IF t1101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t1115 ).
                        ENDIF.
                        DATA t1116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1116.
                        IF t1101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t1116 ).
                        ENDIF.
                        CREATE OBJECT t1101->zlnt_json_ownkeys_70e5fd461788.
                        t1101->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t1117) = |withHeader|.
                        DATA t1118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1118.
                        IF t1101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1117 p1 = t1118 ).
                        ENDIF.
                        DATA(t1119) = |keyType|.
                        DATA t1120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1120.
                        IF t1101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1119 p1 = t1120 ).
                        ENDIF.
                        DATA(t1121) = t2.
                        DATA t1122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1122.
                        t1098 = NEW zcl_lnt_ty_table_type( i_row_type = t1099 i_options = t1101 i_qualified_name = t1121 i_description = t1122 ).
                        t250 = t1098.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t1123) = VALUE abap_bool( ).
    DATA(t1124) = VALUE i( ).
    DATA(t1125) = VALUE string( ).
    DATA(t1126) = t7.
    t1125 = t1126->value.
    DATA(t1127) = | WITH INDICATORS |.
    DATA(t1128) = strlen( t1125 ).
    IF t1127 IS INITIAL.
      t1124 = 0.
    ELSE.
      FIND t1127 IN t1125 MATCH OFFSET t1124.
      IF sy-subrc <> 0.
        t1124 = -1.
      ENDIF.
    ENDIF.
    DATA(t1129) = 0.
    t1123 = xsdbool( t1124 >= t1129 ).
    IF t1123 = abap_true.
      DATA t1130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1130.
      DATA t1131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1131.
      DATA t1132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1132.
      DATA t1133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1133.
      DATA t1134 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t1134.
      DATA t1135 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t1135.
      DATA t1136 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t1136.
      DATA t1137 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t1137.
      DATA(t1138) = t1.
      DATA(t1139) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
      t1137 = t1138->find_first_expression( i_type_9913 = t1139 ).
      t1136 = t1137.
      DATA t1140 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t1140.
      DATA(t1141) = VALUE abap_bool( ).
      DATA(t1142) = t1136.
      IF t1142 IS INITIAL.
        t1141 = abap_true.
      ENDIF.
      IF t1141 = abap_true.
        DATA t1143 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1143.
        t1140 = t1143.
      ELSE.
        DATA t1144 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1144.
        DATA t1145 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1145.
        DATA(t1146) = t1136.
        t1145 = t1146.
        DATA(t1147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
        t1144 = t1145->find_direct_expression( i_type_9913 = t1147 ).
        t1140 = t1144.
      ENDIF.
      t1135 = t1140.
      t1134 = t1135.
      DATA t1148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1148.
      DATA(t1149) = VALUE abap_bool( ).
      DATA(t1150) = t1134.
      IF t1150 IS INITIAL.
        t1149 = abap_true.
      ENDIF.
      IF t1149 = abap_true.
        DATA t1151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1151.
        t1148 = t1151.
      ELSE.
        DATA(t1152) = VALUE string( ).
        DATA t1153 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1153.
        DATA(t1154) = t1134.
        t1153 = t1154.
        t1152 = t1153->concat_tokens( ).
        DATA(t1155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1155->has = abap_true.
        t1155->value = t1152.
        t1148 = t1155.
      ENDIF.
      t1133 = t1148.
      t1132 = t1133.
      DATA t1156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1156.
      DATA(t1157) = VALUE abap_bool( ).
      DATA(t1158) = t1132.
      IF t1158 IS INITIAL.
        t1157 = abap_true.
      ELSEIF t1158->has = abap_false.
        t1157 = abap_true.
      ENDIF.
      IF t1157 = abap_true.
        DATA t1159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1159.
        t1156 = t1159.
      ELSE.
        DATA(t1160) = VALUE string( ).
        DATA(t1161) = VALUE string( ).
        DATA(t1162) = t1132.
        t1161 = t1162->value.
        DATA(t1163) = strlen( t1161 ).
        t1160 = t1161.
        IF t1160 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t1160 TO UPPER CASE.
        ELSE.
          t1160 = zlnt_runtime_uppe_91169605024d=>full( t1160 ).
        ENDIF.
        DATA(t1164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1164->has = abap_true.
        t1164->value = t1160.
        t1156 = t1164.
      ENDIF.
      t1131 = t1156.
      t1130 = t1131.
      DATA(t1165) = VALUE abap_bool( ).
      DATA t1166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1166.
      DATA(t1167) = t1130.
      t1166 = t1167.
      DATA t1168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1168.
      DATA t1169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1169.
      t1168 = t1169.
      DATA(t1170) = VALUE abap_bool( ).
      DATA(t1171) = t1166.
      IF t1171 IS INITIAL.
        t1170 = abap_true.
      ELSEIF t1171->has = abap_false.
        t1170 = abap_true.
      ENDIF.
      t1165 = t1170.
      IF t1165 = abap_true.
        DATA t1172 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t1172.
        DATA t1173 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t1173.
        DATA t1174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1174.
        DATA(t1175) = abap_true.
        IF t1175 = abap_true.
          DATA(t1176) = |parseType, componentName expected|.
          DATA(t1177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1177->has = abap_true.
          t1177->value = t1176.
          t1174 = t1177.
        ELSE.
          DATA t1178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1178.
          t1174 = t1178.
        ENDIF.
        t1173 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t1174 ).
        t1172 = NEW #( ).
        t1172->payload = t1173.
        CLEAR t1172->source_value.
        IF t1173 IS BOUND.
          DATA t1179 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1179.
          DATA t1180 TYPE REF TO object.
          CLEAR t1180.
          CLEAR t1179.
          t1180 = t1173.
          TRY.
              t1172->source_value ?= t1180.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1172->source_value IS NOT BOUND.
            TRY.
                t1179 ?= t1173.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1179 IS BOUND.
              t1172->source_value = t1179->source( ).
            ENDIF.
            IF t1172->source_value IS NOT BOUND.
              CREATE OBJECT t1172->source_value.
              t1172->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t1172->source_value->oval = t1173.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t1172.
      ENDIF.
      DATA(t1181) = VALUE abap_bool( ).
      DATA(t1182) = t250.
      t1181 = xsdbool( t1182 IS BOUND AND t1182 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t1181 = abap_true.
        DATA t1183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1183.
        DATA t1184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1184.
        DATA t1185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1185.
        DATA t1186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1186.
        CREATE OBJECT t1186.
        t1185 = t1186.
        DATA t1187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1187.
        DATA t1188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1188.
        DATA(t1189) = t1185.
        DATA t1190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1190.
        DATA t1191 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t1191.
        DATA t1192 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t1192.
        DATA(t1193) = t250.
        t1192 ?= t1193.
        t1191 = t1192.
        DATA t1194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1194.
        DATA(t1195) = t1191.
        t1194 = t1195->components.
        t1190 = t1194.
        t1188 = t1189->concat( p0 = t1190 ).
        t1187 = t1188.
        DATA(t1196) = t1187.
        t1184 = t1196.
        t1183 = t1184.
        DATA(t1197) = t1183.
        DATA t1198 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t1198.
        DATA(t1199) = VALUE string( ).
        DATA(t1200) = VALUE string( ).
        DATA(t1201) = t1130.
        t1200 = t1201->value.
        t1199 = t1200.
        DATA t1202 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t1202.
        DATA t1203 TYPE REF TO zcl_lnt_void_type.
        CLEAR t1203.
        DATA t1204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1204.
        DATA(t1205) = abap_true.
        IF t1205 = abap_true.
          DATA(t1206) = |INDICATORStodo|.
          DATA(t1207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1207->has = abap_true.
          t1207->value = t1206.
          t1204 = t1207.
        ELSE.
          DATA t1208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1208.
          t1204 = t1208.
        ENDIF.
        DATA t1209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1209.
        t1203 = zcl_lnt_void_type=>get_db65( i_voided = t1204 i_qualified_name = t1209 ).
        t1202 = t1203.
        DATA t1210 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t1210.
        DATA t1211 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t1211.
        t1210 = t1211.
        DATA t1212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1212.
        DATA t1213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1213.
        t1212 = t1213.
        t1198 = NEW zcl_lnt_istructure_component( i_name = t1199 i_type_9913 = t1202 i_as_include = t1210 i_suffix = t1212 ).
        CREATE OBJECT t1198->zlnt_view_ownkeys_b0e8086400eb.
        t1198->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1214.
        IF t1198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1214 ).
        ENDIF.
        DATA t1215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1215.
        IF t1198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1215 ).
        ENDIF.
        CREATE OBJECT t1198->zlnt_json_ownkeys_70e5fd461788.
        t1198->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t1216) = |name|.
        DATA t1217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1217.
        IF t1198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1216 p1 = t1217 ).
        ENDIF.
        DATA(t1218) = |type|.
        DATA t1219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1219.
        IF t1198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1218 p1 = t1219 ).
        ENDIF.
        t1197->load( ).
        APPEND t1198 TO t1197->items.
        t1197->save( ).
        DATA t1220 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t1220.
        DATA(t1221) = t1183.
        DATA(t1222) = t2.
        DATA t1223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1223.
        DATA t1224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1224.
        t1220 = NEW zcl_lnt_structure_type( i_components = t1221 i_qualified_name = t1222 i_ddic_name = t1223 i_description = t1224 ).
        t250 = t1220.
      ENDIF.
    ENDIF.
    DATA(t1225) = t250.
    result = t1225.

  ENDMETHOD.

  METHOD is_occurs.
    DATA(t1) = i_node.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t4) = t1.
    DATA(t5) = |OCCURS|.
    t3 = t4->find_direct_token_by_text( i_text = t5 ).
    t2 = xsdbool( t3 IS BOUND ).
    IF t2 = abap_true.
      DATA(t6) = abap_true.
      result = t6.
      RETURN.
    ELSE.
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = t1.
      DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
      t10 = t11->find_first_expression( i_type_9913 = t12 ).
      t9 = t10.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t9.
      IF t15 IS INITIAL.
        t14 = abap_true.
      ENDIF.
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t16.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        DATA(t19) = t9.
        t18 = t19.
        DATA(t20) = |OCCURS|.
        t17 = t18->find_direct_token_by_text( i_text = t20 ).
        t13 = t17.
      ENDIF.
      t8 = t13.
      t7 = xsdbool( t8 IS BOUND ).
      IF t7 = abap_true.
        DATA(t21) = abap_true.
        result = t21.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t22) = abap_false.
    result = t22.

  ENDMETHOD.

  METHOD get_rap_base_entity_name.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_name.
    DATA(t2) = VALUE i( ).
    DATA(t3) = VALUE i( ).
    DATA(t4) = t1.
    DATA(t5) = `\_`.
    DATA(t6) = strlen( t4 ).
    IF t5 IS INITIAL.
      t3 = 0.
    ELSE.
      FIND t5 IN t4 MATCH OFFSET t3.
      IF sy-subrc <> 0.
        t3 = -1.
      ENDIF.
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE i( ).
    DATA(t8) = VALUE i( ).
    DATA(t9) = t1.
    DATA(t10) = `\\`.
    DATA(t11) = strlen( t9 ).
    IF t10 IS INITIAL.
      t8 = 0.
    ELSE.
      FIND t10 IN t9 MATCH OFFSET t8.
      IF sy-subrc <> 0.
        t8 = -1.
      ENDIF.
    ENDIF.
    t7 = t8.
    DATA(t12) = VALUE i( ).
    DATA(t13) = VALUE i( ).
    DATA(t14) = t1.
    DATA(t15) = |~|.
    DATA(t16) = strlen( t14 ).
    IF t15 IS INITIAL.
      t13 = 0.
    ELSE.
      FIND t15 IN t14 MATCH OFFSET t13.
      IF sy-subrc <> 0.
        t13 = -1.
      ENDIF.
    ENDIF.
    t12 = t13.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t2.
    DATA(t21) = -1.
    t19 = xsdbool( t20 = t21 ).
    t18 = t19.
    IF t19 = abap_true.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t7.
      DATA(t24) = -1.
      t22 = xsdbool( t23 = t24 ).
      t18 = t22.
    ENDIF.
    t17 = t18.
    IF t18 = abap_true.
      DATA t25 TYPE abap_bool.
      DATA(t26) = t12.
      DATA(t27) = -1.
      t25 = xsdbool( t26 = t27 ).
      t17 = t25.
    ENDIF.
    IF t17 = abap_true.
      DATA(t28) = t1.
      result = t28.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t32 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t32.
    t31 = t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t34 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t35 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t35.
    t34 = t35.
    DATA(t36) = t34.
    DATA t37 TYPE f.
    DATA(t38) = t2.
    t37 = t38.
    t36->load( ).
    APPEND t37 TO t36->items.
    t36->save( ).
    DATA(t39) = t34.
    DATA t40 TYPE f.
    DATA(t41) = t7.
    t40 = t41.
    t39->load( ).
    APPEND t40 TO t39->items.
    t39->save( ).
    DATA(t42) = t34.
    DATA t43 TYPE f.
    DATA(t44) = t12.
    t43 = t44.
    t42->load( ).
    APPEND t43 TO t42->items.
    t42->save( ).
    DATA(t45) = t34.
    t33 = t45.
    DATA(t46) = VALUE f( ).
    t33->dense( ).
    DATA(t47) = VALUE i( ).
    DO.
      t33->load( ).
      IF t47 >= lines( t33->items ).
        EXIT.
      ENDIF.
      CLEAR t46.
      READ TABLE t33->items INDEX t47 + 1 INTO t46.
      IF t33->has( t47 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t47 = t47 + 1.
      DATA t48 TYPE abap_bool.
      DATA(t49) = t46.
      DATA(t50) = CONV f( -1 ).
      t48 = xsdbool( t49 <> t50 ).
      IF t48 = abap_true.
        DATA(t51) = t31.
        DATA(t52) = t46.
        t51->load( ).
        APPEND t52 TO t51->items.
        t51->save( ).
      ENDIF.
    ENDDO.
    DATA(t53) = t31.
    t30 = t53.
    t29 = t30.
    DATA(t54) = VALUE f( ).
    DATA(t55) = VALUE f( ).
    DATA t56 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t57 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t57.
    t56 = t57.
    DATA t58 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t59 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA(t60) = t56.
    DATA(t61) = t29.
    t59 = t60->concat( p0 = t61 ).
    t58 = t59.
    DATA(t62) = VALUE f( ).
    DATA(t63) = t58.
    t63->dense( ).
    IF lines( t63->items ) = 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    READ TABLE t63->items INDEX 1 INTO t62.
    DATA(t64) = VALUE f( ).
    LOOP AT t63->items INTO t64 FROM 2.
      IF t62 = 0 AND t64 = 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      IF t64 < t62.
        t62 = t64.
      ENDIF.
    ENDLOOP.
    t55 = t62.
    t54 = t55.
    DATA(t65) = VALUE string( ).
    DATA(t66) = t1.
    DATA(t67) = 0.
    DATA(t68) = VALUE i( ).
    DATA(t69) = t54.
    IF t69 > range_i32_upper.
      t68 = range_i32_upper.
    ELSEIF t69 < range_i32_lower.
      t68 = range_i32_lower.
    ELSE.
      t68 = trunc( t69 ).
    ENDIF.
    DATA(t70) = strlen( t66 ).
    t67 = COND i( WHEN t67 < 0 THEN 0 WHEN t67 > t70 THEN t70 ELSE t67 ).
    t68 = COND i( WHEN t68 < 0 THEN 0 WHEN t68 > t70 THEN t70 ELSE t68 ).
    IF t67 > t68.
      t70 = t67.
      t67 = t68.
      t68 = t70.
    ENDIF.
    t70 = t68 - t67.
    t65 = t66+t67(t70).
    result = t65.

  ENDMETHOD.

  METHOD resolve_rap_alias.
    DATA(t1) = i_name.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_behavior_definition.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_behavior_definition.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_current_scope.
    DATA t8 TYPE REF TO zcl_lnt_current_scope.
    DATA(t9) = me->input_2fd0.
    t8 = t9->scope.
    t7 = t8.
    DATA t10 TYPE REF TO zcl_lnt_behavior_definition.
    CLEAR t10.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE string.
    DATA t13 TYPE REF TO zif_lnt_object.
    DATA(t14) = t7.
    t13 = t14->parent_obj.
    t12 = t13->get_type( ).
    DATA(t15) = |CLAS|.
    t11 = xsdbool( t12 <> t15 ).
    IF t11 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_behavior_definition.
      CLEAR t16.
      t10 = t16.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_behavior_definition.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_class.
      DATA t23 TYPE REF TO zcl_lnt_class.
      DATA t24 TYPE REF TO zif_lnt_object.
      DATA(t25) = t7.
      t24 = t25->parent_obj.
      t23 ?= t24.
      t22 = t23.
      DATA t26 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t26.
      DATA t27 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t27.
      DATA t28 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_abap_file.
      DATA t30 TYPE REF TO zcl_lnt_abap_file.
      DATA(t31) = t22.
      t30 = t31->get_main_abap_file( ).
      t29 = t30.
      DATA t32 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t29.
      IF t34 IS INITIAL.
        t33 = abap_true.
      ENDIF.
      IF t33 = abap_true.
        DATA t35 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t35.
        t32 = t35.
      ELSE.
        DATA t36 TYPE REF TO zif_lnt_abap_file_information.
        DATA t37 TYPE REF TO zcl_lnt_abap_file.
        DATA t38 TYPE REF TO zcl_lnt_abap_file.
        DATA(t39) = t29.
        t38 = t39.
        t37 = t38.
        DATA t40 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t41) = t37.
        t40 = t41->info.
        t36 = t40.
        t32 = t36.
      ENDIF.
      t28 = t32.
      t27 = t28.
      DATA t42 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = t27.
      IF t44 IS INITIAL.
        t43 = abap_true.
      ENDIF.
      IF t43 = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t45.
        t42 = t45.
      ELSE.
        DATA t46 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t47 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t48) = t27.
        t47 = t48.
        DATA t49 TYPE string.
        DATA t50 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t51) = t22.
        t50 = t51.
        DATA t52 TYPE string.
        DATA(t53) = t50.
        t52 = t53->name.
        t49 = t52.
        t46 = t47->get_class_definition_by_name( i_name = t49 ).
        t42 = t46.
      ENDIF.
      t26 = t42.
      t21 = t26.
      t20 = t21.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = t20.
      IF t56 IS INITIAL.
        t55 = abap_true.
      ENDIF.
      IF t55 = abap_true.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        t54 = t57.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t59 TYPE REF TO zcl_lnt_info_class_definition.
        DATA(t60) = t20.
        t59 = t60.
        t58 = t59->behavior_definition_name.
        t54 = t58.
      ENDIF.
      t19 = t54.
      t18 = t19.
      DATA t61 TYPE REF TO zcl_lnt_behavior_definition.
      CLEAR t61.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t64) = t18.
      t63 = t64.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      t65 = t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = t63.
      IF t68 IS INITIAL.
        t67 = abap_true.
      ELSEIF t68->has = abap_false.
        t67 = abap_true.
      ENDIF.
      t62 = t67.
      IF t62 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_behavior_definition.
        CLEAR t69.
        t61 = t69.
      ELSE.
        DATA t70 TYPE REF TO zcl_lnt_behavior_definition.
        CLEAR t70.
        DATA t71 TYPE REF TO zif_lnt_object.
        CLEAR t71.
        DATA t72 TYPE REF TO zif_lnt_registry.
        DATA(t73) = t7.
        t72 = t73->reg.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA(t76) = |BDEF|.
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = t76.
          t74 = t77.
        ELSE.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t78.
          t74 = t78.
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA(t80) = abap_true.
        IF t80 = abap_true.
          DATA t81 TYPE string.
          DATA(t82) = t18.
          t81 = t82->value.
          DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t83->has = abap_true.
          t83->value = t81.
          t79 = t83.
        ELSE.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t84.
          t79 = t84.
        ENDIF.
        t71 = t72->get_object( i_type_9913 = t74 i_name = t79 ).
        DATA t85 TYPE REF TO object.
        t85 = t71.
        t70 ?= t85.
        t61 = t70.
      ENDIF.
      t17 = t61.
      t10 = t17.
    ENDIF.
    t6 = t10.
    t5 = t6.
    DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t86.
    DATA(t87) = VALUE abap_bool( ).
    DATA(t88) = t5.
    IF t88 IS INITIAL.
      t87 = abap_true.
    ENDIF.
    IF t87 = abap_true.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t89.
      t86 = t89.
    ELSE.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t91 TYPE REF TO zcl_lnt_behavior_definition.
      DATA(t92) = t5.
      t91 = t92.
      DATA(t93) = t1.
      t90 = t91->find_entity_name_by_alias( i_alias = t93 ).
      t86 = t90.
    ENDIF.
    t4 = t86.
    t3 = t4.
    DATA(t94) = VALUE string( ).
    DATA(t95) = VALUE abap_bool( ).
    DATA(t96) = t3.
    IF t96 IS INITIAL.
      t95 = abap_true.
    ELSEIF t96->has = abap_false.
      t95 = abap_true.
    ENDIF.
    IF t95 = abap_true.
      DATA(t97) = t1.
      t94 = t97.
    ELSE.
      DATA t98 TYPE string.
      DATA(t99) = t3.
      t98 = t99->value.
      t94 = t98.
    ENDIF.
    t2 = t94.
    result = t2.

  ENDMETHOD.

  METHOD is_rap_derived_entity_name.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE i( ).
    DATA(t5) = t1.
    DATA(t6) = `\`.
    DATA(t7) = strlen( t5 ).
    IF t6 IS INITIAL.
      t4 = 0.
    ELSE.
      FIND t6 IN t5 MATCH OFFSET t4.
      IF sy-subrc <> 0.
        t4 = -1.
      ENDIF.
    ENDIF.
    DATA(t8) = 0.
    t3 = xsdbool( t4 >= t8 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE i( ).
      DATA(t11) = t1.
      DATA(t12) = |~|.
      DATA(t13) = strlen( t11 ).
      IF t12 IS INITIAL.
        t10 = 0.
      ELSE.
        FIND t12 IN t11 MATCH OFFSET t10.
        IF sy-subrc <> 0.
          t10 = -1.
        ENDIF.
      ENDIF.
      DATA(t14) = 0.
      t9 = xsdbool( t10 >= t14 ).
      t2 = t9.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_rap_table_for.
    DATA(t1) = i_text.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = t1.
    DATA(t4) = |TYPE TABLE FOR |.
    DATA(t5) = strlen( t3 ).
    DATA t6 TYPE i.
    DATA(t7) = VALUE i( ).
    DATA(t8) = VALUE string( ).
    t6 = strlen( t4 ).
    IF t6 = 0.
      t2 = abap_true.
    ELSEIF t6 <= t5.
      t7 = 0.
      t8 = t3+t7(t6).
      IF t8 = t4.
        t2 = abap_true.
      ENDIF.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_rap_type_structure.
    DATA(t1) = i_text.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t1.
    DATA(t6) = |TYPE STRUCTURE FOR |.
    DATA(t7) = strlen( t5 ).
    DATA t8 TYPE i.
    DATA(t9) = VALUE i( ).
    DATA(t10) = VALUE string( ).
    t8 = strlen( t6 ).
    IF t8 = 0.
      t4 = abap_true.
    ELSEIF t8 <= t7.
      t9 = 0.
      t10 = t5+t9(t8).
      IF t10 = t6.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = t1.
      DATA(t13) = |TYPE RESPONSE FOR |.
      DATA(t14) = strlen( t12 ).
      DATA t15 TYPE i.
      DATA(t16) = VALUE i( ).
      DATA(t17) = VALUE string( ).
      t15 = strlen( t13 ).
      IF t15 = 0.
        t11 = abap_true.
      ELSEIF t15 <= t14.
        t16 = 0.
        t17 = t12+t16(t15).
        IF t17 = t13.
          t11 = abap_true.
        ENDIF.
      ENDIF.
      t3 = t11.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t1.
      DATA(t20) = |TYPE REQUEST FOR |.
      DATA(t21) = strlen( t19 ).
      DATA t22 TYPE i.
      DATA(t23) = VALUE i( ).
      DATA(t24) = VALUE string( ).
      t22 = strlen( t20 ).
      IF t22 = 0.
        t18 = abap_true.
      ELSEIF t22 <= t21.
        t23 = 0.
        t24 = t19+t23(t22).
        IF t24 = t20.
          t18 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t18.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD resolve_type_chain.
    DATA(t1) = i_expr.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = t1.
    t4 = t5->concat_tokens( ).
    DATA(t6) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE i( ).
    DATA(t9) = t2.
    DATA(t10) = |-|.
    DATA(t11) = strlen( t9 ).
    IF t10 IS INITIAL.
      t8 = 0.
    ELSE.
      FIND t10 IN t9 MATCH OFFSET t8.
      IF sy-subrc <> 0.
        t8 = -1.
      ENDIF.
    ENDIF.
    DATA(t12) = 0.
    t7 = xsdbool( t8 >= t12 ).
    IF t7 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_current_scope.
      DATA t16 TYPE REF TO zcl_lnt_current_scope.
      DATA(t17) = me->input_2fd0.
      t16 = t17->scope.
      t15 = t16.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA(t21) = t2.
        DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t22->has = abap_true.
        t22->value = t21.
        t19 = t22.
      ELSE.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        t19 = t23.
      ENDIF.
      t18 = t19.
      DATA t24 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t27) = t18.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      t28 = t29.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = t26.
      IF t31 IS INITIAL.
        t30 = abap_true.
      ELSEIF t31->has = abap_false.
        t30 = abap_true.
      ENDIF.
      t25 = t30.
      IF t25 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t32.
        t24 = t32.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t36) = t15.
        t35 = t36->current.
        t34 = t35.
        DATA t37 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t37.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t34.
        IF t39 IS INITIAL.
          t38 = abap_true.
        ENDIF.
        IF t38 = abap_true.
          DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t40.
          t37 = t40.
        ELSE.
          DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t43) = t34.
          t42 = t43.
          DATA t44 TYPE string.
          DATA(t45) = t18.
          t44 = t45->value.
          t41 = t42->find_type( i_name = t44 ).
          t37 = t41.
        ENDIF.
        t33 = t37.
        t24 = t33.
      ENDIF.
      t14 = t24.
      t13 = t14.
      DATA t46 TYPE abap_bool.
      DATA(t47) = t13.
      t46 = xsdbool( t47 IS BOUND ).
      IF t46 = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_current_scope.
        DATA(t49) = me->input_2fd0.
        t48 = t49->scope.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA t52 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t53) = t1.
          t52 = t53->get_first_token( ).
          t50 = t52.
        ELSE.
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t54.
          t50 = t54.
        ENDIF.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t56) = t13.
        t55 = t56.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        DATA(t58) = |Type|.
        CLEAR t57.
        CREATE OBJECT t57.
        t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t57->sval = t58.
        DATA t59 TYPE string.
        DATA(t60) = me->input_2fd0.
        t59 = t60->filename.
        DATA t61 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t61.
        t48->add_reference( i_usage = t50 i_referencing = t55 i_type_9913 = t57 i_filename = t59 i_extra = t61 ).
        DATA t62 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t62.
        DATA(t63) = abap_true.
        IF t63 = abap_true.
          DATA t64 TYPE REF TO zcl_lnt_abstract_type.
          DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t66 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t67) = t13.
          t66 = t67.
          t65 = t66.
          DATA t68 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t69) = t65.
          t68 = t69->type_cba0.
          t64 = t68.
          t62 = t64.
        ELSE.
          DATA t70 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t70.
          t62 = t70.
        ENDIF.
        result = t62.
        RETURN.
      ENDIF.
    ELSE.
      DATA(t71) = VALUE abap_bool( ).
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = VALUE i( ).
      DATA(t75) = t2.
      DATA(t76) = |=>|.
      DATA(t77) = strlen( t75 ).
      IF t76 IS INITIAL.
        t74 = 0.
      ELSE.
        FIND t76 IN t75 MATCH OFFSET t74.
        IF sy-subrc <> 0.
          t74 = -1.
        ENDIF.
      ENDIF.
      DATA(t78) = 0.
      t73 = xsdbool( t74 >= t78 ).
      DATA(t79) = abap_false.
      t72 = xsdbool( t73 = t79 ).
      t71 = t72.
      IF t72 = abap_true.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = VALUE i( ).
        DATA(t83) = t2.
        DATA(t84) = |-|.
        DATA(t85) = strlen( t83 ).
        IF t84 IS INITIAL.
          t82 = 0.
        ELSE.
          FIND t84 IN t83 MATCH OFFSET t82.
          IF sy-subrc <> 0.
            t82 = -1.
          ENDIF.
        ENDIF.
        DATA(t86) = 0.
        t81 = xsdbool( t82 >= t86 ).
        DATA(t87) = abap_false.
        t80 = xsdbool( t81 = t87 ).
        t71 = t80.
      ENDIF.
      IF t71 = abap_true.
        DATA t88 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t88.
        result = t88.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t89.
    DATA t90 TYPE string.
    DATA(t91) = t2.
    t90 = t91.
    DATA(t92) = VALUE abap_bool( ).
    DATA(t93) = VALUE i( ).
    DATA(t94) = t2.
    DATA(t95) = |=>|.
    DATA(t96) = strlen( t94 ).
    IF t95 IS INITIAL.
      t93 = 0.
    ELSE.
      FIND t95 IN t94 MATCH OFFSET t93.
      IF sy-subrc <> 0.
        t93 = -1.
      ENDIF.
    ENDIF.
    DATA(t97) = 0.
    t92 = xsdbool( t93 >= t97 ).
    IF t92 = abap_true.
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t98.
      DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t100) = t2.
      DATA(t101) = |=>|.
      DATA(t102) = strlen( t100 ).
      DATA t103 TYPE i.
      DATA(t104) = VALUE i( ).
      DATA(t105) = VALUE i( ).
      DATA t106 TYPE i.
      DATA(t107) = VALUE string( ).
      CREATE OBJECT t99.
      t106 = strlen( t101 ).
      t103 = 0.
      IF t106 = 0.
        WHILE t103 < t102.
          t107 = t100+t103(1).
          APPEND t107 TO t99->items.
          t103 = t103 + 1.
        ENDWHILE.
      ELSE.
        WHILE t103 <= t102.
          FIND FIRST OCCURRENCE OF t101 IN SECTION OFFSET t103 OF t100 MATCH OFFSET t104.
          IF sy-subrc = 0.
            t105 = t104 - t103.
          ELSE.
            t104 = -1.
            t105 = t102 - t103.
          ENDIF.
          CLEAR t107.
          IF t105 > 0.
            t107 = t100+t103(t105).
          ENDIF.
          APPEND t107 TO t99->items.
          IF t104 < 0.
            EXIT.
          ENDIF.
          t103 = t104 + t106.
        ENDWHILE.
      ENDIF.
      t98 = t99.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t108.
      DATA(t109) = abap_true.
      IF t109 = abap_true.
        DATA(t110) = VALUE string( ).
        DATA(t111) = t98.
        IF t111->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t111->load( ).
        CLEAR t110.
        READ TABLE t111->items INDEX 1 INTO t110.
        DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t112->has = abap_true.
        t112->value = t110.
        t108 = t112.
      ELSE.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        t108 = t113.
      ENDIF.
      t89 = t108.
      DATA(t114) = VALUE string( ).
      DATA(t115) = t98.
      IF t115->has( 2 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t115->load( ).
      CLEAR t114.
      READ TABLE t115->items INDEX 2 INTO t114.
      t90 = t114.
    ELSE.
      DATA(t116) = VALUE abap_bool( ).
      DATA(t117) = VALUE i( ).
      DATA(t118) = t2.
      DATA(t119) = |->|.
      DATA(t120) = strlen( t118 ).
      IF t119 IS INITIAL.
        t117 = 0.
      ELSE.
        FIND t119 IN t118 MATCH OFFSET t117.
        IF sy-subrc <> 0.
          t117 = -1.
        ENDIF.
      ENDIF.
      DATA(t121) = 0.
      t116 = xsdbool( t117 >= t121 ).
      IF t116 = abap_true.
        DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t124) = t2.
        DATA(t125) = |->|.
        DATA(t126) = strlen( t124 ).
        DATA t127 TYPE i.
        DATA(t128) = VALUE i( ).
        DATA(t129) = VALUE i( ).
        DATA t130 TYPE i.
        DATA(t131) = VALUE string( ).
        CREATE OBJECT t123.
        t130 = strlen( t125 ).
        t127 = 0.
        IF t130 = 0.
          WHILE t127 < t126.
            t131 = t124+t127(1).
            APPEND t131 TO t123->items.
            t127 = t127 + 1.
          ENDWHILE.
        ELSE.
          WHILE t127 <= t126.
            FIND FIRST OCCURRENCE OF t125 IN SECTION OFFSET t127 OF t124 MATCH OFFSET t128.
            IF sy-subrc = 0.
              t129 = t128 - t127.
            ELSE.
              t128 = -1.
              t129 = t126 - t127.
            ENDIF.
            CLEAR t131.
            IF t129 > 0.
              t131 = t124+t127(t129).
            ENDIF.
            APPEND t131 TO t123->items.
            IF t128 < 0.
              EXIT.
            ENDIF.
            t127 = t128 + t130.
          ENDWHILE.
        ENDIF.
        t122 = t123.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t132.
        DATA(t133) = abap_true.
        IF t133 = abap_true.
          DATA(t134) = VALUE string( ).
          DATA(t135) = t122.
          IF t135->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t135->load( ).
          CLEAR t134.
          READ TABLE t135->items INDEX 1 INTO t134.
          DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t136->has = abap_true.
          t136->value = t134.
          t132 = t136.
        ELSE.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          t132 = t137.
        ENDIF.
        t89 = t132.
        DATA(t138) = VALUE string( ).
        DATA(t139) = t122.
        IF t139->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t139->load( ).
        CLEAR t138.
        READ TABLE t139->items INDEX 2 INTO t138.
        t90 = t138.
      ENDIF.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t142) = t90.
    DATA(t143) = |-|.
    DATA(t144) = strlen( t142 ).
    DATA t145 TYPE i.
    DATA(t146) = VALUE i( ).
    DATA(t147) = VALUE i( ).
    DATA t148 TYPE i.
    DATA(t149) = VALUE string( ).
    CREATE OBJECT t141.
    t148 = strlen( t143 ).
    t145 = 0.
    IF t148 = 0.
      WHILE t145 < t144.
        t149 = t142+t145(1).
        APPEND t149 TO t141->items.
        t145 = t145 + 1.
      ENDWHILE.
    ELSE.
      WHILE t145 <= t144.
        FIND FIRST OCCURRENCE OF t143 IN SECTION OFFSET t145 OF t142 MATCH OFFSET t146.
        IF sy-subrc = 0.
          t147 = t146 - t145.
        ELSE.
          t146 = -1.
          t147 = t144 - t145.
        ENDIF.
        CLEAR t149.
        IF t147 > 0.
          t149 = t142+t145(t147).
        ENDIF.
        APPEND t149 TO t141->items.
        IF t146 < 0.
          EXIT.
        ENDIF.
        t145 = t146 + t148.
      ENDWHILE.
    ENDIF.
    t140 = t141.
    DATA t150 TYPE REF TO zcl_lnt_abstract_type.
    DATA t151 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t151.
    t150 = t151.
    DATA(t152) = VALUE abap_bool( ).
    DATA(t153) = VALUE abap_bool( ).
    DATA(t154) = t89.
    IF t154 IS BOUND.
      IF t154->has = abap_true.
        t153 = xsdbool( strlen( t154->value ) > 0 ).
      ENDIF.
    ENDIF.
    t152 = t153.
    IF t153 = abap_true.
      DATA(t155) = VALUE abap_bool( ).
      DATA(t156) = VALUE i( ).
      DATA(t157) = t2.
      DATA(t158) = |=>|.
      DATA(t159) = strlen( t157 ).
      IF t158 IS INITIAL.
        t156 = 0.
      ELSE.
        FIND t158 IN t157 MATCH OFFSET t156.
        IF sy-subrc <> 0.
          t156 = -1.
        ENDIF.
      ENDIF.
      DATA(t160) = 0.
      t155 = xsdbool( t156 >= t160 ).
      t152 = t155.
    ENDIF.
    IF t152 = abap_true.
      DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t161.
      DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t163) = t2.
      DATA(t164) = |=>|.
      DATA(t165) = strlen( t163 ).
      DATA t166 TYPE i.
      DATA(t167) = VALUE i( ).
      DATA(t168) = VALUE i( ).
      DATA t169 TYPE i.
      DATA(t170) = VALUE string( ).
      CREATE OBJECT t162.
      t169 = strlen( t164 ).
      t166 = 0.
      IF t169 = 0.
        WHILE t166 < t165.
          t170 = t163+t166(1).
          APPEND t170 TO t162->items.
          t166 = t166 + 1.
        ENDWHILE.
      ELSE.
        WHILE t166 <= t165.
          FIND FIRST OCCURRENCE OF t164 IN SECTION OFFSET t166 OF t163 MATCH OFFSET t167.
          IF sy-subrc = 0.
            t168 = t167 - t166.
          ELSE.
            t167 = -1.
            t168 = t165 - t166.
          ENDIF.
          CLEAR t170.
          IF t168 > 0.
            t170 = t163+t166(t168).
          ENDIF.
          APPEND t170 TO t162->items.
          IF t167 < 0.
            EXIT.
          ENDIF.
          t166 = t167 + t169.
        ENDWHILE.
      ENDIF.
      t161 = t162.
      DATA(t171) = VALUE string( ).
      DATA(t172) = VALUE string( ).
      DATA(t173) = t161.
      IF t173->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t173->load( ).
      CLEAR t172.
      READ TABLE t173->items INDEX 1 INTO t172.
      t171 = t172.
      DATA(t174) = VALUE abap_bool( ).
      DATA t175 TYPE abap_bool.
      DATA t176 TYPE abap_bool.
      DATA t177 TYPE string.
      DATA t178 TYPE REF TO zcl_lnt_current_scope.
      DATA(t179) = me->input_2fd0.
      t178 = t179->scope.
      t177 = t178->get_type( ).
      DATA(t180) = |interface|.
      t176 = xsdbool( t177 = t180 ).
      t175 = t176.
      IF t176 = abap_false.
        DATA t181 TYPE abap_bool.
        DATA t182 TYPE string.
        DATA t183 TYPE REF TO zcl_lnt_current_scope.
        DATA(t184) = me->input_2fd0.
        t183 = t184->scope.
        t182 = t183->get_type( ).
        DATA(t185) = |class_definition|.
        t181 = xsdbool( t182 = t185 ).
        t175 = t181.
      ENDIF.
      t174 = t175.
      IF t175 = abap_true.
        DATA(t186) = VALUE abap_bool( ).
        DATA t187 TYPE string.
        DATA t188 TYPE string.
        DATA t189 TYPE REF TO zcl_lnt_current_scope.
        DATA(t190) = me->input_2fd0.
        t189 = t190->scope.
        t188 = t189->get_name( ).
        DATA(t191) = strlen( t188 ).
        t187 = t188.
        IF t187 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t187 TO UPPER CASE.
        ELSE.
          t187 = zlnt_runtime_uppe_91169605024d=>full( t187 ).
        ENDIF.
        DATA t192 TYPE string.
        DATA(t193) = t171.
        DATA(t194) = strlen( t193 ).
        t192 = t193.
        IF t192 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t192 TO UPPER CASE.
        ELSE.
          t192 = zlnt_runtime_uppe_91169605024d=>full( t192 ).
        ENDIF.
        t186 = xsdbool( t187 = t192 ).
        t174 = t186.
      ENDIF.
      IF t174 = abap_true.
        DATA t195 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t195.
        DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t196.
        DATA t197 TYPE REF TO zcl_lnt_current_scope.
        DATA t198 TYPE REF TO zcl_lnt_current_scope.
        DATA(t199) = me->input_2fd0.
        t198 = t199->scope.
        t197 = t198.
        DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t202) = t140.
        DATA(t203) = 0.
        t201 = t202->get( p0 = t203 ).
        t200 = t201.
        DATA t204 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t204.
        DATA(t205) = VALUE abap_bool( ).
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t207) = t200.
        t206 = t207.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t209.
        t208 = t209.
        DATA(t210) = VALUE abap_bool( ).
        DATA(t211) = t206.
        IF t211 IS INITIAL.
          t210 = abap_true.
        ELSEIF t211->has = abap_false.
          t210 = abap_true.
        ENDIF.
        t205 = t210.
        IF t205 = abap_true.
          DATA t212 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t212.
          t204 = t212.
        ELSE.
          DATA t213 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t213.
          DATA t214 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t215 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t216) = t197.
          t215 = t216->current.
          t214 = t215.
          DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t217.
          DATA(t218) = VALUE abap_bool( ).
          DATA(t219) = t214.
          IF t219 IS INITIAL.
            t218 = abap_true.
          ENDIF.
          IF t218 = abap_true.
            DATA t220 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t220.
            t217 = t220.
          ELSE.
            DATA t221 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t222 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t223) = t214.
            t222 = t223.
            DATA t224 TYPE string.
            DATA(t225) = t200.
            t224 = t225->value.
            t221 = t222->find_type( i_name = t224 ).
            t217 = t221.
          ENDIF.
          t213 = t217.
          t204 = t213.
        ENDIF.
        t196 = t204.
        t195 = t196.
        DATA t226 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t226.
        DATA t227 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t228) = t195.
        t227 = t228.
        DATA t229 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t229.
        DATA(t230) = VALUE abap_bool( ).
        DATA(t231) = t227.
        IF t231 IS INITIAL.
          t230 = abap_true.
        ENDIF.
        IF t230 = abap_true.
          DATA t232 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t232.
          t229 = t232.
        ELSE.
          DATA t233 TYPE REF TO zcl_lnt_abstract_type.
          DATA t234 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t235 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t236) = t227.
          t235 = t236.
          t234 = t235.
          DATA t237 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t238) = t234.
          t237 = t238->type_cba0.
          t233 = t237.
          t229 = t233.
        ENDIF.
        t226 = t229.
        t150 = t226.
        DATA(t239) = VALUE abap_bool( ).
        DATA t240 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t241) = t150.
        t240 = t241.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        t242 = t243.
        DATA(t244) = VALUE abap_bool( ).
        DATA(t245) = t240.
        IF t245 IS INITIAL.
          t244 = abap_true.
        ENDIF.
        t239 = t244.
        IF t239 = abap_true.
          DATA t246 TYPE REF TO zcl_lnt_unknown_type.
          DATA t247 TYPE string.
          DATA(t248) = |Could not resolve type |.
          DATA(t249) = t2.
          DATA(t250) = strlen( t248 ).
          t247 = |{ t248 }{ t249 }|.
          DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t251.
          t246 = NEW zcl_lnt_unknown_type( i_error = t247 i_qualified_name = t251 ).
          result = t246.
          RETURN.
        ENDIF.
        DATA t252 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t252.
        DATA t253 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t253.
        DATA t254 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t254.
        DATA t255 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t255.
        DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t258 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t259) = t1.
        t258 = t259.
        DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t261) = t258.
        t260 = t261->children.
        t257 = t260.
        t256 ?= t257.
        DATA(t262) = 2.
        DATA t263 TYPE REF TO object.
        t263 = t256->get( p0 = t262 ).
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t264.
        CLEAR t255.
        IF t263 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t264 ?= t263.
          DATA t265 TYPE REF TO object.
          t265 = t264->as_ref( ).
          t255 ?= t265.
        ELSE.
          t255 ?= t263.
        ENDIF.
        t254 = t255.
        DATA t266 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t266.
        DATA(t267) = VALUE abap_bool( ).
        DATA(t268) = t254.
        IF t268 IS INITIAL.
          t267 = abap_true.
        ENDIF.
        IF t267 = abap_true.
          DATA t269 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t269.
          t266 = t269.
        ELSE.
          DATA t270 TYPE REF TO zcl_lnt_abstract_token.
          DATA t271 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t272) = t254.
          t271 = t272.
          t270 = t271->get_first_token( ).
          t266 = t270.
        ENDIF.
        t253 = t266.
        t252 = t253.
        DATA t273 TYPE abap_bool.
        DATA t274 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t275) = t252.
        t274 = t275.
        t273 = xsdbool( t274 IS BOUND ).
        IF t273 = abap_true.
          DATA t276 TYPE REF TO zcl_lnt_current_scope.
          DATA(t277) = me->input_2fd0.
          t276 = t277->scope.
          DATA t278 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t278.
          DATA(t279) = abap_true.
          IF t279 = abap_true.
            DATA t280 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t281) = t252.
            t280 = t281.
            t278 = t280.
          ELSE.
            DATA t282 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t282.
            t278 = t282.
          ENDIF.
          DATA(t283) = t195.
          DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t284.
          DATA(t285) = |Type|.
          CLEAR t284.
          CREATE OBJECT t284.
          t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t284->sval = t285.
          DATA t286 TYPE string.
          DATA(t287) = me->input_2fd0.
          t286 = t287->filename.
          DATA t288 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t288.
          t276->add_reference( i_usage = t278 i_referencing = t283 i_type_9913 = t284 i_filename = t286 i_extra = t288 ).
        ENDIF.
      ELSE.
        DATA t289 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t289.
        DATA t290 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t290.
        DATA t291 TYPE REF TO zcl_lnt_current_scope.
        DATA t292 TYPE REF TO zcl_lnt_current_scope.
        DATA(t293) = me->input_2fd0.
        t292 = t293->scope.
        t291 = t292.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t294.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        DATA(t296) = abap_true.
        IF t296 = abap_true.
          DATA(t297) = t171.
          DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t298->has = abap_true.
          t298->value = t297.
          t295 = t298.
        ELSE.
          DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t299.
          t295 = t299.
        ENDIF.
        t294 = t295.
        DATA t300 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t300.
        DATA(t301) = VALUE abap_bool( ).
        DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t303) = t294.
        t302 = t303.
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t305.
        t304 = t305.
        DATA(t306) = VALUE abap_bool( ).
        DATA(t307) = t302.
        IF t307 IS INITIAL.
          t306 = abap_true.
        ELSEIF t307->has = abap_false.
          t306 = abap_true.
        ENDIF.
        t301 = t306.
        IF t301 = abap_true.
          DATA t308 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t308.
          t300 = t308.
        ELSE.
          DATA t309 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t309.
          DATA t310 TYPE REF TO zif_lnt_class_definition.
          CLEAR t310.
          DATA t311 TYPE REF TO zif_lnt_class_definition.
          CLEAR t311.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t312.
          DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t313.
          DATA(t314) = abap_true.
          IF t314 = abap_true.
            DATA t315 TYPE string.
            DATA(t316) = t294.
            t315 = t316->value.
            DATA(t317) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t317->has = abap_true.
            t317->value = t315.
            t313 = t317.
          ELSE.
            DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t318.
            t313 = t318.
          ENDIF.
          t312 = t313.
          DATA t319 TYPE REF TO zif_lnt_class_definition.
          CLEAR t319.
          DATA(t320) = VALUE abap_bool( ).
          DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t322) = t312.
          t321 = t322.
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t324.
          t323 = t324.
          DATA(t325) = VALUE abap_bool( ).
          DATA(t326) = t321.
          IF t326 IS INITIAL.
            t325 = abap_true.
          ELSEIF t326->has = abap_false.
            t325 = abap_true.
          ENDIF.
          t320 = t325.
          IF t320 = abap_true.
            DATA t327 TYPE REF TO zif_lnt_class_definition.
            CLEAR t327.
            t319 = t327.
          ELSE.
            DATA t328 TYPE REF TO zif_lnt_class_definition.
            CLEAR t328.
            DATA t329 TYPE REF TO zif_lnt_class_definition.
            CLEAR t329.
            DATA t330 TYPE REF TO zif_lnt_class_definition.
            CLEAR t330.
            DATA t331 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t332 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t333) = t291.
            t332 = t333->current.
            t331 = t332.
            DATA t334 TYPE REF TO zif_lnt_class_definition.
            CLEAR t334.
            DATA(t335) = VALUE abap_bool( ).
            DATA(t336) = t331.
            IF t336 IS INITIAL.
              t335 = abap_true.
            ENDIF.
            IF t335 = abap_true.
              DATA t337 TYPE REF TO zif_lnt_class_definition.
              CLEAR t337.
              t334 = t337.
            ELSE.
              DATA t338 TYPE REF TO zif_lnt_class_definition.
              DATA t339 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t340) = t331.
              t339 = t340.
              DATA t341 TYPE string.
              DATA(t342) = t312.
              t341 = t342->value.
              t338 = t339->find_class_definition( i_name = t341 ).
              t334 = t338.
            ENDIF.
            t330 = t334.
            t329 = t330.
            DATA t343 TYPE REF TO zif_lnt_class_definition.
            CLEAR t343.
            DATA t344 TYPE abap_bool.
            DATA(t345) = t329.
            t344 = xsdbool( t345 IS BOUND ).
            IF t344 = abap_true.
              DATA t346 TYPE REF TO zif_lnt_class_definition.
              CLEAR t346.
              DATA(t347) = abap_true.
              IF t347 = abap_true.
                DATA t348 TYPE REF TO zif_lnt_class_definition.
                DATA(t349) = t329.
                t348 = t349.
                t346 = t348.
              ELSE.
                DATA t350 TYPE REF TO zif_lnt_class_definition.
                CLEAR t350.
                t346 = t350.
              ENDIF.
              t343 = t346.
            ELSE.
              DATA t351 TYPE REF TO zif_lnt_class_definition.
              CLEAR t351.
              DATA t352 TYPE REF TO zcl_lnt_class.
              CLEAR t352.
              DATA t353 TYPE REF TO zcl_lnt_class.
              CLEAR t353.
              DATA t354 TYPE REF TO zif_lnt_object.
              CLEAR t354.
              DATA t355 TYPE REF TO zif_lnt_registry.
              DATA(t356) = t291.
              t355 = t356->reg.
              DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t357.
              DATA(t358) = abap_true.
              IF t358 = abap_true.
                DATA(t359) = |CLAS|.
                DATA(t360) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t360->has = abap_true.
                t360->value = t359.
                t357 = t360.
              ELSE.
                DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t361.
                t357 = t361.
              ENDIF.
              DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t362.
              DATA(t363) = abap_true.
              IF t363 = abap_true.
                DATA t364 TYPE string.
                DATA(t365) = t312.
                t364 = t365->value.
                DATA(t366) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t366->has = abap_true.
                t366->value = t364.
                t362 = t366.
              ELSE.
                DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t367.
                t362 = t367.
              ENDIF.
              t354 = t355->get_object( i_type_9913 = t357 i_name = t362 ).
              DATA t368 TYPE REF TO object.
              t368 = t354.
              t353 ?= t368.
              t352 = t353.
              DATA t369 TYPE REF TO zif_lnt_class_definition.
              CLEAR t369.
              DATA t370 TYPE abap_bool.
              DATA(t371) = t352.
              t370 = xsdbool( t371 IS BOUND ).
              IF t370 = abap_true.
                DATA t372 TYPE REF TO zif_lnt_class_definition.
                DATA t373 TYPE REF TO zcl_lnt_class.
                DATA(t374) = t352.
                t373 = t374.
                t372 = t373->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t369 = t372.
              ELSE.
                DATA t375 TYPE REF TO zif_lnt_class_definition.
                CLEAR t375.
                t369 = t375.
              ENDIF.
              t351 = t369.
              t343 = t351.
            ENDIF.
            t328 = t343.
            t319 = t328.
          ENDIF.
          t311 = t319.
          t310 = t311.
          DATA t376 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t376.
          DATA t377 TYPE abap_bool.
          DATA(t378) = t310.
          t377 = xsdbool( t378 IS BOUND ).
          IF t377 = abap_true.
            DATA t379 TYPE REF TO zif_lnt_interface_definition.
            DATA t380 TYPE REF TO zif_lnt_class_definition.
            DATA(t381) = t310.
            t380 = t381.
            t379 ?= t380.
            t376 = t379.
          ELSE.
            DATA t382 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t382.
            DATA t383 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t383.
            DATA t384 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t384.
            DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t385.
            DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t386.
            DATA(t387) = abap_true.
            IF t387 = abap_true.
              DATA t388 TYPE string.
              DATA(t389) = t294.
              t388 = t389->value.
              DATA(t390) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t390->has = abap_true.
              t390->value = t388.
              t386 = t390.
            ELSE.
              DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t391.
              t386 = t391.
            ENDIF.
            t385 = t386.
            DATA t392 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t392.
            DATA(t393) = VALUE abap_bool( ).
            DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t395) = t385.
            t394 = t395.
            DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t397.
            t396 = t397.
            DATA(t398) = VALUE abap_bool( ).
            DATA(t399) = t394.
            IF t399 IS INITIAL.
              t398 = abap_true.
            ELSEIF t399->has = abap_false.
              t398 = abap_true.
            ENDIF.
            t393 = t398.
            IF t393 = abap_true.
              DATA t400 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t400.
              t392 = t400.
            ELSE.
              DATA t401 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t401.
              DATA t402 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t402.
              DATA t403 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t403.
              DATA t404 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t405 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t406) = t291.
              t405 = t406->current.
              t404 = t405.
              DATA t407 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t407.
              DATA(t408) = VALUE abap_bool( ).
              DATA(t409) = t404.
              IF t409 IS INITIAL.
                t408 = abap_true.
              ENDIF.
              IF t408 = abap_true.
                DATA t410 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t410.
                t407 = t410.
              ELSE.
                DATA t411 TYPE REF TO zif_lnt_interface_definition.
                DATA t412 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t413) = t404.
                t412 = t413.
                DATA t414 TYPE string.
                DATA(t415) = t385.
                t414 = t415->value.
                t411 = t412->find_interface_definition( i_name = t414 ).
                t407 = t411.
              ENDIF.
              t403 = t407.
              t402 = t403.
              DATA t416 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t416.
              DATA t417 TYPE abap_bool.
              DATA(t418) = t402.
              t417 = xsdbool( t418 IS BOUND ).
              IF t417 = abap_true.
                DATA t419 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t419.
                DATA(t420) = abap_true.
                IF t420 = abap_true.
                  DATA t421 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t422) = t402.
                  t421 = t422.
                  t419 = t421.
                ELSE.
                  DATA t423 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t423.
                  t419 = t423.
                ENDIF.
                t416 = t419.
              ELSE.
                DATA t424 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t424.
                DATA t425 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t425.
                DATA t426 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t426.
                DATA t427 TYPE REF TO zif_lnt_object.
                CLEAR t427.
                DATA t428 TYPE REF TO zif_lnt_registry.
                DATA(t429) = t291.
                t428 = t429->reg.
                DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t430.
                DATA(t431) = abap_true.
                IF t431 = abap_true.
                  DATA(t432) = |INTF|.
                  DATA(t433) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t433->has = abap_true.
                  t433->value = t432.
                  t430 = t433.
                ELSE.
                  DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t434.
                  t430 = t434.
                ENDIF.
                DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t435.
                DATA(t436) = abap_true.
                IF t436 = abap_true.
                  DATA t437 TYPE string.
                  DATA(t438) = t385.
                  t437 = t438->value.
                  DATA(t439) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t439->has = abap_true.
                  t439->value = t437.
                  t435 = t439.
                ELSE.
                  DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t440.
                  t435 = t440.
                ENDIF.
                t427 = t428->get_object( i_type_9913 = t430 i_name = t435 ).
                DATA t441 TYPE REF TO object.
                t441 = t427.
                t426 ?= t441.
                t425 = t426.
                DATA t442 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t442.
                DATA t443 TYPE abap_bool.
                DATA(t444) = t425.
                t443 = xsdbool( t444 IS BOUND ).
                IF t443 = abap_true.
                  DATA t445 TYPE REF TO zif_lnt_interface_definition.
                  DATA t446 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t447 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t448) = t425.
                  t447 = t448.
                  t446 = t447.
                  DATA t449 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t450) = t446.
                  t449 = t450->def.
                  t445 = t449.
                  t442 = t445.
                ELSE.
                  DATA t451 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t451.
                  t442 = t451.
                ENDIF.
                t424 = t442.
                t416 = t424.
              ENDIF.
              t401 = t416.
              t392 = t401.
            ENDIF.
            t384 = t392.
            t383 = t384.
            DATA t452 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t452.
            DATA t453 TYPE abap_bool.
            DATA(t454) = t383.
            t453 = xsdbool( t454 IS BOUND ).
            IF t453 = abap_true.
              DATA t455 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t455.
              DATA(t456) = abap_true.
              IF t456 = abap_true.
                DATA t457 TYPE REF TO zif_lnt_interface_definition.
                DATA(t458) = t383.
                t457 = t458.
                t455 = t457.
              ELSE.
                DATA t459 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t459.
                t455 = t459.
              ENDIF.
              t452 = t455.
            ELSE.
              DATA t460 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t460.
              t452 = t460.
            ENDIF.
            t382 = t452.
            t376 = t382.
          ENDIF.
          t309 = t376.
          t300 = t309.
        ENDIF.
        t290 = t300.
        t289 = t290.
        DATA(t461) = VALUE abap_bool( ).
        DATA(t462) = VALUE abap_bool( ).
        DATA t463 TYPE REF TO zif_lnt_interface_definition.
        DATA(t464) = t289.
        t463 = t464.
        DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t466.
        t465 = t466.
        DATA(t467) = VALUE abap_bool( ).
        DATA(t468) = t463.
        IF t468 IS INITIAL.
          t467 = abap_true.
        ENDIF.
        t462 = t467.
        t461 = t462.
        IF t462 = abap_true.
          DATA(t469) = VALUE abap_bool( ).
          DATA(t470) = VALUE abap_bool( ).
          DATA t471 TYPE REF TO zcl_lnt_ddic.
          DATA t472 TYPE REF TO zcl_lnt_ddic.
          DATA t473 TYPE REF TO zcl_lnt_current_scope.
          DATA t474 TYPE REF TO zcl_lnt_current_scope.
          DATA(t475) = me->input_2fd0.
          t474 = t475->scope.
          t473 = t474.
          DATA t476 TYPE REF TO zcl_lnt_ddic.
          DATA t477 TYPE REF TO zif_lnt_registry.
          DATA(t478) = t473.
          t477 = t478->reg.
          t476 = NEW zcl_lnt_ddic( i_reg_f149 = t477 ).
          t472 = t476.
          t471 = t472.
          DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t479.
          DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t480.
          DATA(t481) = abap_true.
          IF t481 = abap_true.
            DATA(t482) = t171.
            DATA(t483) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t483->has = abap_true.
            t483->value = t482.
            t480 = t483.
          ELSE.
            DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t484.
            t480 = t484.
          ENDIF.
          t479 = t480.
          DATA(t485) = VALUE abap_bool( ).
          DATA(t486) = VALUE abap_bool( ).
          DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t488) = t479.
          t487 = t488.
          DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t490.
          t489 = t490.
          DATA(t491) = VALUE abap_bool( ).
          DATA(t492) = t487.
          IF t492 IS INITIAL.
            t491 = abap_true.
          ELSEIF t492->has = abap_false.
            t491 = abap_true.
          ENDIF.
          t486 = t491.
          IF t486 = abap_true.
            DATA(t493) = abap_true.
            t485 = t493.
          ELSE.
            DATA t494 TYPE abap_bool.
            DATA t495 TYPE REF TO zif_lnt_registry.
            DATA(t496) = t471.
            t495 = t496->reg.
            DATA t497 TYPE string.
            DATA(t498) = t479.
            t497 = t498->value.
            t494 = t495->in_error_namespace( i_name = t497 ).
            t485 = t494.
          ENDIF.
          t470 = t485.
          DATA(t499) = abap_false.
          t469 = xsdbool( t470 = t499 ).
          t461 = t469.
        ENDIF.
        IF t461 = abap_true.
          DATA t500 TYPE REF TO zcl_lnt_current_scope.
          DATA(t501) = me->input_2fd0.
          t500 = t501->scope.
          DATA t502 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t502.
          DATA(t503) = abap_true.
          IF t503 = abap_true.
            DATA t504 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t505) = t1.
            t504 = t505->get_first_token( ).
            t502 = t504.
          ELSE.
            DATA t506 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t506.
            t502 = t506.
          ENDIF.
          DATA t507 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t507.
          DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t508.
          DATA(t509) = |Object (Void)|.
          CLEAR t508.
          CREATE OBJECT t508.
          t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t508->sval = t509.
          DATA t510 TYPE string.
          DATA(t511) = me->input_2fd0.
          t510 = t511->filename.
          DATA t512 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t512.
          DATA(t513) = abap_true.
          IF t513 = abap_true.
            DATA t514 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t514.
            DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t515.
            DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t516.
            DATA(t517) = abap_true.
            IF t517 = abap_true.
              DATA t518 TYPE string.
              DATA(t519) = t171.
              DATA(t520) = strlen( t519 ).
              t518 = t519.
              IF t518 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t518 TO UPPER CASE.
              ELSE.
                t518 = zlnt_runtime_uppe_91169605024d=>full( t518 ).
              ENDIF.
              DATA(t521) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t521->has = abap_true.
              t521->value = t518.
              t516 = t521.
            ELSE.
              DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t522.
              t516 = t522.
            ENDIF.
            t515 = t516.
            DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t524.
            t523 = t524.
            DATA t525 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t526 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t526.
            t525 = t526.
            t514 = NEW zcl_lnt_ireference_extras( i_oo_name = t515 i_oo_type = t523 i_found_qualified = t525 ).
            CREATE OBJECT t514->zlnt_view_ownkeys_b0e8086400eb.
            t514->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t527.
            IF t514->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t527 ).
            ENDIF.
            CREATE OBJECT t514->zlnt_json_ownkeys_70e5fd461788.
            t514->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t528) = |ooName|.
            DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t529.
            IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = t528 p1 = t529 ).
            ENDIF.
            t512 = t514.
          ELSE.
            DATA t530 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t530.
            t512 = t530.
          ENDIF.
          t500->add_reference( i_usage = t502 i_referencing = t507 i_type_9913 = t508 i_filename = t510 i_extra = t512 ).
          DATA t531 TYPE REF TO zcl_lnt_void_type.
          CLEAR t531.
          DATA t532 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t532.
          DATA(t533) = abap_true.
          IF t533 = abap_true.
            DATA(t534) = t171.
            DATA(t535) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t535->has = abap_true.
            t535->value = t534.
            t532 = t535.
          ELSE.
            DATA t536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t536.
            t532 = t536.
          ENDIF.
          DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t537.
          t531 = zcl_lnt_void_type=>get_db65( i_voided = t532 i_qualified_name = t537 ).
          result = t531.
          RETURN.
        ELSE.
          DATA(t538) = VALUE abap_bool( ).
          DATA t539 TYPE REF TO zif_lnt_interface_definition.
          DATA(t540) = t289.
          t539 = t540.
          DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t542.
          t541 = t542.
          DATA(t543) = VALUE abap_bool( ).
          DATA(t544) = t539.
          IF t544 IS INITIAL.
            t543 = abap_true.
          ENDIF.
          t538 = t543.
          IF t538 = abap_true.
            DATA t545 TYPE REF TO zcl_lnt_unknown_type.
            DATA t546 TYPE string.
            DATA t547 TYPE string.
            DATA(t548) = |Could not resolve top |.
            DATA(t549) = t171.
            DATA(t550) = strlen( t548 ).
            t547 = |{ t548 }{ t549 }|.
            DATA(t551) = |, resolveTypeChain|.
            DATA(t552) = strlen( t547 ).
            t546 = |{ t547 }{ t551 }|.
            DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t553.
            t545 = NEW zcl_lnt_unknown_type( i_error = t546 i_qualified_name = t553 ).
            result = t545.
            RETURN.
          ENDIF.
        ENDIF.
        DATA(t554) = VALUE string( ).
        DATA(t555) = VALUE string( ).
        DATA t556 TYPE abap_bool.
        DATA(t557) = t289.
        t556 = xsdbool( t557 IS BOUND AND t557 IS INSTANCE OF zcl_lnt_ty_class_definition ).
        IF t556 = abap_true.
          DATA(t558) = |CLAS|.
          t555 = t558.
        ELSE.
          DATA(t559) = |INTF|.
          t555 = t559.
        ENDIF.
        t554 = t555.
        DATA t560 TYPE REF TO zcl_lnt_current_scope.
        DATA(t561) = me->input_2fd0.
        t560 = t561->scope.
        DATA t562 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t562.
        DATA(t563) = abap_true.
        IF t563 = abap_true.
          DATA t564 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t565) = t1.
          t564 = t565->get_first_token( ).
          t562 = t564.
        ELSE.
          DATA t566 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t566.
          t562 = t566.
        ENDIF.
        DATA t567 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t567.
        DATA(t568) = abap_true.
        IF t568 = abap_true.
          DATA t569 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t570 TYPE REF TO zif_lnt_interface_definition.
          DATA(t571) = t289.
          t570 = t571.
          t569 ?= t570.
          t567 = t569.
        ELSE.
          DATA t572 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t572.
          t567 = t572.
        ENDIF.
        DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t573.
        DATA(t574) = |Object|.
        CLEAR t573.
        CREATE OBJECT t573.
        t573->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t573->sval = t574.
        DATA t575 TYPE string.
        DATA(t576) = me->input_2fd0.
        t575 = t576->filename.
        DATA t577 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t577.
        DATA(t578) = abap_true.
        IF t578 = abap_true.
          DATA t579 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t579.
          DATA t580 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t580.
          DATA t581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t581.
          DATA(t582) = abap_true.
          IF t582 = abap_true.
            DATA(t583) = t554.
            DATA(t584) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t584->has = abap_true.
            t584->value = t583.
            t581 = t584.
          ELSE.
            DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t585.
            t581 = t585.
          ENDIF.
          t580 = t581.
          DATA t586 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t586.
          DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t587.
          DATA(t588) = abap_true.
          IF t588 = abap_true.
            DATA(t589) = t171.
            DATA(t590) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t590->has = abap_true.
            t590->value = t589.
            t587 = t590.
          ELSE.
            DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t591.
            t587 = t591.
          ENDIF.
          t586 = t587.
          DATA t592 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t593 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t593.
          t592 = t593.
          t579 = NEW zcl_lnt_ireference_extras( i_oo_name = t586 i_oo_type = t580 i_found_qualified = t592 ).
          CREATE OBJECT t579->zlnt_view_ownkeys_b0e8086400eb.
          t579->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t594.
          IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t594 ).
          ENDIF.
          DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t595.
          IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t595 ).
          ENDIF.
          CREATE OBJECT t579->zlnt_json_ownkeys_70e5fd461788.
          t579->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t596) = |ooType|.
          DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t597.
          IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t596 p1 = t597 ).
          ENDIF.
          DATA(t598) = |ooName|.
          DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t599.
          IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t598 p1 = t599 ).
          ENDIF.
          t577 = t579.
        ELSE.
          DATA t600 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t600.
          t577 = t600.
        ENDIF.
        t560->add_reference( i_usage = t562 i_referencing = t567 i_type_9913 = t573 i_filename = t575 i_extra = t577 ).
        DATA t601 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t601.
        DATA t602 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t602.
        DATA t603 TYPE REF TO zcl_lnt_object_oriented.
        DATA t604 TYPE REF TO zcl_lnt_current_scope.
        DATA(t605) = me->input_2fd0.
        t604 = t605->scope.
        t603 = NEW zcl_lnt_object_oriented( i_scope = t604 ).
        DATA t606 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t606.
        DATA(t607) = abap_true.
        IF t607 = abap_true.
          DATA t608 TYPE REF TO zif_lnt_interface_definition.
          DATA(t609) = t289.
          t608 = t609.
          t606 = t608.
        ELSE.
          DATA t610 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t610.
          t606 = t610.
        ENDIF.
        DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t612) = t140.
        DATA(t613) = 0.
        t611 = t612->get( p0 = t613 ).
        t602 = t603->search_type_name( i_def = t606 i_name = t611 ).
        t601 = t602.
        DATA t614 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t614.
        DATA t615 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t616) = t601.
        t615 = t616.
        DATA t617 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t617.
        DATA(t618) = VALUE abap_bool( ).
        DATA(t619) = t615.
        IF t619 IS INITIAL.
          t618 = abap_true.
        ENDIF.
        IF t618 = abap_true.
          DATA t620 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t620.
          t617 = t620.
        ELSE.
          DATA t621 TYPE REF TO zcl_lnt_abstract_type.
          DATA t622 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t623 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t624) = t615.
          t623 = t624.
          t622 = t623.
          DATA t625 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t626) = t622.
          t625 = t626->type_cba0.
          t621 = t625.
          t617 = t621.
        ENDIF.
        t614 = t617.
        t150 = t614.
        DATA(t627) = VALUE abap_bool( ).
        DATA(t628) = VALUE abap_bool( ).
        DATA t629 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t630) = t601.
        t629 = t630.
        DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t632.
        t631 = t632.
        DATA(t633) = VALUE abap_bool( ).
        DATA(t634) = t629.
        IF t634 IS INITIAL.
          t633 = abap_true.
        ENDIF.
        t628 = t633.
        t627 = t628.
        IF t628 = abap_false.
          DATA(t635) = VALUE abap_bool( ).
          DATA t636 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t637) = t150.
          t636 = t637.
          DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t639.
          t638 = t639.
          DATA(t640) = VALUE abap_bool( ).
          DATA(t641) = t636.
          IF t641 IS INITIAL.
            t640 = abap_true.
          ENDIF.
          t635 = t640.
          t627 = t635.
        ENDIF.
        IF t627 = abap_true.
          DATA t642 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t642.
          DATA(t643) = VALUE string( ).
          DATA(t644) = VALUE string( ).
          DATA(t645) = t140.
          IF t645->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t645->load( ).
          CLEAR t644.
          READ TABLE t645->items INDEX 1 INTO t644.
          DATA(t646) = | not found in class or interface|.
          DATA(t647) = strlen( t644 ).
          t643 = |{ t644 }{ t646 }|.
          DATA t648 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t648.
          t642 = NEW zcl_lnt_unknown_type( i_error = t643 i_qualified_name = t648 ).
          result = t642.
          RETURN.
        ENDIF.
        DATA t649 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t649.
        DATA t650 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t650.
        DATA t651 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t651.
        DATA t652 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t652.
        DATA t653 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t654 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t655 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t656) = t1.
        t655 = t656.
        DATA t657 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t658) = t655.
        t657 = t658->children.
        t654 = t657.
        t653 ?= t654.
        DATA(t659) = 2.
        DATA t660 TYPE REF TO object.
        t660 = t653->get( p0 = t659 ).
        DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t661.
        CLEAR t652.
        IF t660 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t661 ?= t660.
          DATA t662 TYPE REF TO object.
          t662 = t661->as_ref( ).
          t652 ?= t662.
        ELSE.
          t652 ?= t660.
        ENDIF.
        t651 = t652.
        DATA t663 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t663.
        DATA(t664) = VALUE abap_bool( ).
        DATA(t665) = t651.
        IF t665 IS INITIAL.
          t664 = abap_true.
        ENDIF.
        IF t664 = abap_true.
          DATA t666 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t666.
          t663 = t666.
        ELSE.
          DATA t667 TYPE REF TO zcl_lnt_abstract_token.
          DATA t668 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t669) = t651.
          t668 = t669.
          t667 = t668->get_first_token( ).
          t663 = t667.
        ENDIF.
        t650 = t663.
        t649 = t650.
        DATA t670 TYPE abap_bool.
        DATA t671 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t672) = t649.
        t671 = t672.
        t670 = xsdbool( t671 IS BOUND ).
        IF t670 = abap_true.
          DATA t673 TYPE REF TO zcl_lnt_current_scope.
          DATA(t674) = me->input_2fd0.
          t673 = t674->scope.
          DATA t675 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t675.
          DATA(t676) = abap_true.
          IF t676 = abap_true.
            DATA t677 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t678) = t649.
            t677 = t678.
            t675 = t677.
          ELSE.
            DATA t679 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t679.
            t675 = t679.
          ENDIF.
          DATA t680 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t681) = t601.
          t680 = t681.
          DATA t682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t682.
          DATA(t683) = |Type|.
          CLEAR t682.
          CREATE OBJECT t682.
          t682->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t682->sval = t683.
          DATA t684 TYPE string.
          DATA(t685) = me->input_2fd0.
          t684 = t685->filename.
          DATA t686 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t686.
          t673->add_reference( i_usage = t675 i_referencing = t680 i_type_9913 = t682 i_filename = t684 i_extra = t686 ).
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t687) = VALUE abap_bool( ).
      DATA(t688) = VALUE abap_bool( ).
      DATA(t689) = t89.
      IF t689 IS BOUND.
        IF t689->has = abap_true.
          t688 = xsdbool( strlen( t689->value ) > 0 ).
        ENDIF.
      ENDIF.
      t687 = t688.
      IF t688 = abap_true.
        DATA(t690) = VALUE abap_bool( ).
        DATA(t691) = VALUE i( ).
        DATA(t692) = t2.
        DATA(t693) = |->|.
        DATA(t694) = strlen( t692 ).
        IF t693 IS INITIAL.
          t691 = 0.
        ELSE.
          FIND t693 IN t692 MATCH OFFSET t691.
          IF sy-subrc <> 0.
            t691 = -1.
          ENDIF.
        ENDIF.
        DATA(t695) = 0.
        t690 = xsdbool( t691 >= t695 ).
        t687 = t690.
      ENDIF.
      IF t687 = abap_true.
        DATA t696 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t696.
        DATA t697 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t697.
        DATA t698 TYPE REF TO zcl_lnt_current_scope.
        DATA t699 TYPE REF TO zcl_lnt_current_scope.
        DATA(t700) = me->input_2fd0.
        t699 = t700->scope.
        t698 = t699.
        DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t701.
        DATA t702 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t702.
        DATA(t703) = abap_true.
        IF t703 = abap_true.
          DATA t704 TYPE string.
          DATA(t705) = t89.
          t704 = t705->value.
          DATA(t706) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t706->has = abap_true.
          t706->value = t704.
          t702 = t706.
        ELSE.
          DATA t707 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t707.
          t702 = t707.
        ENDIF.
        t701 = t702.
        DATA t708 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t708.
        DATA(t709) = VALUE abap_bool( ).
        DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t711) = t701.
        t710 = t711.
        DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t713.
        t712 = t713.
        DATA(t714) = VALUE abap_bool( ).
        DATA(t715) = t710.
        IF t715 IS INITIAL.
          t714 = abap_true.
        ELSEIF t715->has = abap_false.
          t714 = abap_true.
        ENDIF.
        t709 = t714.
        IF t709 = abap_true.
          DATA t716 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t716.
          t708 = t716.
        ELSE.
          DATA t717 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t717.
          DATA t718 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t718.
          DATA t719 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t719.
          DATA t720 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t721 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t722) = t698.
          t721 = t722->current.
          t720 = t721.
          DATA t723 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t723.
          DATA(t724) = VALUE abap_bool( ).
          DATA(t725) = t720.
          IF t725 IS INITIAL.
            t724 = abap_true.
          ENDIF.
          IF t724 = abap_true.
            DATA t726 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t726.
            t723 = t726.
          ELSE.
            DATA t727 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t728 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t729) = t720.
            t728 = t729.
            DATA t730 TYPE string.
            DATA(t731) = t701.
            t730 = t731->value.
            t727 = t728->find_variable( i_name = t730 ).
            t723 = t727.
          ENDIF.
          t719 = t723.
          t718 = t719.
          DATA t732 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t732.
          DATA t733 TYPE abap_bool.
          DATA(t734) = t718.
          t733 = xsdbool( t734 IS BOUND ).
          IF t733 = abap_true.
            DATA t735 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t735.
            DATA(t736) = abap_true.
            IF t736 = abap_true.
              DATA t737 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t738) = t718.
              t737 = t738.
              t735 = t737.
            ELSE.
              DATA t739 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t739.
              t735 = t739.
            ENDIF.
            t732 = t735.
          ELSE.
            DATA t740 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t740.
            DATA(t741) = t698.
            DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t742.
            DATA(t743) = abap_true.
            IF t743 = abap_true.
              DATA t744 TYPE string.
              DATA(t745) = t701.
              t744 = t745->value.
              DATA(t746) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t746->has = abap_true.
              t746->value = t744.
              t742 = t746.
            ELSE.
              DATA t747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t747.
              t742 = t747.
            ENDIF.
            t740 = t741->find_type_pool_constant( i_name = t742 ).
            t732 = t740.
          ENDIF.
          t717 = t732.
          t708 = t717.
        ENDIF.
        t697 = t708.
        t696 = t697.
        DATA t748 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t748.
        DATA t749 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t749.
        DATA t750 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t751) = t696.
        t750 = t751.
        DATA t752 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t752.
        DATA(t753) = VALUE abap_bool( ).
        DATA(t754) = t750.
        IF t754 IS INITIAL.
          t753 = abap_true.
        ENDIF.
        IF t753 = abap_true.
          DATA t755 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t755.
          t752 = t755.
        ELSE.
          DATA t756 TYPE REF TO zcl_lnt_abstract_type.
          DATA t757 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t758 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t759) = t750.
          t758 = t759.
          t757 = t758.
          DATA t760 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t761) = t757.
          t760 = t761->type_cba0.
          t756 = t760.
          t752 = t756.
        ENDIF.
        t749 = t752.
        t748 = t749.
        DATA t762 TYPE abap_bool.
        DATA(t763) = t748.
        t762 = xsdbool( t763 IS BOUND AND t763 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t762 = abap_true.
          DATA(t764) = VALUE string( ).
          DATA(t765) = VALUE string( ).
          DATA(t766) = t140.
          IF t766->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t766->load( ).
          CLEAR t765.
          READ TABLE t766->items INDEX 1 INTO t765.
          t764 = t765.
          DATA t767 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t768 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t769 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t770 TYPE REF TO zcl_lnt_object_reference_type.
          DATA(t771) = t748.
          t770 ?= t771.
          t769 = t770.
          DATA t772 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t773) = t769.
          t772 = t773->identifier.
          t768 = t772.
          t767 = t768.
          DATA(t774) = VALUE abap_bool( ).
          DATA t775 TYPE abap_bool.
          DATA t776 TYPE abap_bool.
          DATA(t777) = t767.
          t776 = xsdbool( t777 IS BOUND AND t777 IS INSTANCE OF zcl_lnt_ty_class_definition ).
          t775 = t776.
          IF t776 = abap_false.
            DATA t778 TYPE abap_bool.
            DATA(t779) = t767.
            t778 = xsdbool( t779 IS BOUND AND t779 IS INSTANCE OF zcl_lnt_interface_definition ).
            t775 = t778.
          ENDIF.
          t774 = xsdbool( t775 = abap_false ).
          IF t774 = abap_true.
            DATA t780 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t780.
            DATA t781 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t781.
            DATA t782 TYPE REF TO zcl_lnt_current_scope.
            DATA t783 TYPE REF TO zcl_lnt_current_scope.
            DATA(t784) = me->input_2fd0.
            t783 = t784->scope.
            t782 = t783.
            DATA t785 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t785.
            DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t786.
            DATA(t787) = abap_true.
            IF t787 = abap_true.
              DATA(t788) = VALUE string( ).
              DATA t789 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t790 TYPE REF TO zcl_lnt_object_reference_type.
              DATA(t791) = t748.
              t790 ?= t791.
              t789 = t790.
              DATA(t792) = VALUE string( ).
              DATA t793 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t794 TYPE REF TO zcl_lnt_fi_identifier.
              DATA(t795) = t789.
              t794 = t795->identifier.
              t793 = t794.
              DATA(t796) = VALUE string( ).
              DATA t797 TYPE string.
              DATA t798 TYPE string.
              DATA t799 TYPE REF TO zcl_lnt_abstract_token.
              DATA t800 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t801) = t793.
              t800 = t801->token.
              t799 = t800.
              DATA t802 TYPE string.
              DATA(t803) = t799.
              t802 = t803->str.
              t798 = t802.
              t797 = t798.
              DATA(t804) = VALUE abap_bool( ).
              DATA(t805) = VALUE string( ).
              DATA(t806) = t797.
              DATA(t807) = 0.
              DATA(t808) = 1.
              DATA(t809) = strlen( t806 ).
              IF t807 < 0.
                t807 = t807 + t809.
                IF t807 < 0.
                  t807 = 0.
                ENDIF.
              ENDIF.
              IF t807 > t809 OR t808 <= 0.
                CLEAR t805.
              ELSE.
                IF t808 > t809 - t807.
                  t808 = t809 - t807.
                ENDIF.
                t805 = t806+t807(t808).
              ENDIF.
              DATA(t810) = |!|.
              t804 = xsdbool( t805 = t810 ).
              IF t804 = abap_true.
                DATA(t811) = VALUE string( ).
                DATA t812 TYPE string.
                DATA(t813) = t797.
                t812 = t813.
                DATA(t814) = VALUE string( ).
                DATA(t815) = t812.
                DATA(t816) = 1.
                DATA t817 TYPE i.
                DATA(t818) = t812.
                DATA(t819) = strlen( t818 ).
                t817 = t819.
                DATA(t820) = strlen( t815 ).
                IF t816 < 0.
                  t816 = t816 + t820.
                  IF t816 < 0.
                    t816 = 0.
                  ENDIF.
                ENDIF.
                IF t816 > t820 OR t817 <= 0.
                  CLEAR t814.
                ELSE.
                  IF t817 > t820 - t816.
                    t817 = t820 - t816.
                  ENDIF.
                  t814 = t815+t816(t817).
                ENDIF.
                t811 = t814.
                t797 = t811.
              ENDIF.
              DATA(t821) = t797.
              t796 = t821.
              t792 = t796.
              t788 = t792.
              DATA(t822) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t822->has = abap_true.
              t822->value = t788.
              t786 = t822.
            ELSE.
              DATA t823 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t823.
              t786 = t823.
            ENDIF.
            t785 = t786.
            DATA t824 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t824.
            DATA(t825) = VALUE abap_bool( ).
            DATA t826 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t827) = t785.
            t826 = t827.
            DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t829.
            t828 = t829.
            DATA(t830) = VALUE abap_bool( ).
            DATA(t831) = t826.
            IF t831 IS INITIAL.
              t830 = abap_true.
            ELSEIF t831->has = abap_false.
              t830 = abap_true.
            ENDIF.
            t825 = t830.
            IF t825 = abap_true.
              DATA t832 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t832.
              t824 = t832.
            ELSE.
              DATA t833 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t833.
              DATA t834 TYPE REF TO zif_lnt_class_definition.
              CLEAR t834.
              DATA t835 TYPE REF TO zif_lnt_class_definition.
              CLEAR t835.
              DATA t836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t836.
              DATA t837 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t837.
              DATA(t838) = abap_true.
              IF t838 = abap_true.
                DATA t839 TYPE string.
                DATA(t840) = t785.
                t839 = t840->value.
                DATA(t841) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t841->has = abap_true.
                t841->value = t839.
                t837 = t841.
              ELSE.
                DATA t842 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t842.
                t837 = t842.
              ENDIF.
              t836 = t837.
              DATA t843 TYPE REF TO zif_lnt_class_definition.
              CLEAR t843.
              DATA(t844) = VALUE abap_bool( ).
              DATA t845 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t846) = t836.
              t845 = t846.
              DATA t847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t848 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t848.
              t847 = t848.
              DATA(t849) = VALUE abap_bool( ).
              DATA(t850) = t845.
              IF t850 IS INITIAL.
                t849 = abap_true.
              ELSEIF t850->has = abap_false.
                t849 = abap_true.
              ENDIF.
              t844 = t849.
              IF t844 = abap_true.
                DATA t851 TYPE REF TO zif_lnt_class_definition.
                CLEAR t851.
                t843 = t851.
              ELSE.
                DATA t852 TYPE REF TO zif_lnt_class_definition.
                CLEAR t852.
                DATA t853 TYPE REF TO zif_lnt_class_definition.
                CLEAR t853.
                DATA t854 TYPE REF TO zif_lnt_class_definition.
                CLEAR t854.
                DATA t855 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t856 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t857) = t782.
                t856 = t857->current.
                t855 = t856.
                DATA t858 TYPE REF TO zif_lnt_class_definition.
                CLEAR t858.
                DATA(t859) = VALUE abap_bool( ).
                DATA(t860) = t855.
                IF t860 IS INITIAL.
                  t859 = abap_true.
                ENDIF.
                IF t859 = abap_true.
                  DATA t861 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t861.
                  t858 = t861.
                ELSE.
                  DATA t862 TYPE REF TO zif_lnt_class_definition.
                  DATA t863 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t864) = t855.
                  t863 = t864.
                  DATA t865 TYPE string.
                  DATA(t866) = t836.
                  t865 = t866->value.
                  t862 = t863->find_class_definition( i_name = t865 ).
                  t858 = t862.
                ENDIF.
                t854 = t858.
                t853 = t854.
                DATA t867 TYPE REF TO zif_lnt_class_definition.
                CLEAR t867.
                DATA t868 TYPE abap_bool.
                DATA(t869) = t853.
                t868 = xsdbool( t869 IS BOUND ).
                IF t868 = abap_true.
                  DATA t870 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t870.
                  DATA(t871) = abap_true.
                  IF t871 = abap_true.
                    DATA t872 TYPE REF TO zif_lnt_class_definition.
                    DATA(t873) = t853.
                    t872 = t873.
                    t870 = t872.
                  ELSE.
                    DATA t874 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t874.
                    t870 = t874.
                  ENDIF.
                  t867 = t870.
                ELSE.
                  DATA t875 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t875.
                  DATA t876 TYPE REF TO zcl_lnt_class.
                  CLEAR t876.
                  DATA t877 TYPE REF TO zcl_lnt_class.
                  CLEAR t877.
                  DATA t878 TYPE REF TO zif_lnt_object.
                  CLEAR t878.
                  DATA t879 TYPE REF TO zif_lnt_registry.
                  DATA(t880) = t782.
                  t879 = t880->reg.
                  DATA t881 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t881.
                  DATA(t882) = abap_true.
                  IF t882 = abap_true.
                    DATA(t883) = |CLAS|.
                    DATA(t884) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t884->has = abap_true.
                    t884->value = t883.
                    t881 = t884.
                  ELSE.
                    DATA t885 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t885.
                    t881 = t885.
                  ENDIF.
                  DATA t886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t886.
                  DATA(t887) = abap_true.
                  IF t887 = abap_true.
                    DATA t888 TYPE string.
                    DATA(t889) = t836.
                    t888 = t889->value.
                    DATA(t890) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t890->has = abap_true.
                    t890->value = t888.
                    t886 = t890.
                  ELSE.
                    DATA t891 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t891.
                    t886 = t891.
                  ENDIF.
                  t878 = t879->get_object( i_type_9913 = t881 i_name = t886 ).
                  DATA t892 TYPE REF TO object.
                  t892 = t878.
                  t877 ?= t892.
                  t876 = t877.
                  DATA t893 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t893.
                  DATA t894 TYPE abap_bool.
                  DATA(t895) = t876.
                  t894 = xsdbool( t895 IS BOUND ).
                  IF t894 = abap_true.
                    DATA t896 TYPE REF TO zif_lnt_class_definition.
                    DATA t897 TYPE REF TO zcl_lnt_class.
                    DATA(t898) = t876.
                    t897 = t898.
                    t896 = t897->gt_dfn_ins_src_obj_cls_ts_clss( ).
                    t893 = t896.
                  ELSE.
                    DATA t899 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t899.
                    t893 = t899.
                  ENDIF.
                  t875 = t893.
                  t867 = t875.
                ENDIF.
                t852 = t867.
                t843 = t852.
              ENDIF.
              t835 = t843.
              t834 = t835.
              DATA t900 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t900.
              DATA t901 TYPE abap_bool.
              DATA(t902) = t834.
              t901 = xsdbool( t902 IS BOUND ).
              IF t901 = abap_true.
                DATA t903 TYPE REF TO zif_lnt_interface_definition.
                DATA t904 TYPE REF TO zif_lnt_class_definition.
                DATA(t905) = t834.
                t904 = t905.
                t903 ?= t904.
                t900 = t903.
              ELSE.
                DATA t906 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t906.
                DATA t907 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t907.
                DATA t908 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t908.
                DATA t909 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t909.
                DATA t910 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t910.
                DATA(t911) = abap_true.
                IF t911 = abap_true.
                  DATA t912 TYPE string.
                  DATA(t913) = t785.
                  t912 = t913->value.
                  DATA(t914) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t914->has = abap_true.
                  t914->value = t912.
                  t910 = t914.
                ELSE.
                  DATA t915 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t915.
                  t910 = t915.
                ENDIF.
                t909 = t910.
                DATA t916 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t916.
                DATA(t917) = VALUE abap_bool( ).
                DATA t918 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t919) = t909.
                t918 = t919.
                DATA t920 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t921.
                t920 = t921.
                DATA(t922) = VALUE abap_bool( ).
                DATA(t923) = t918.
                IF t923 IS INITIAL.
                  t922 = abap_true.
                ELSEIF t923->has = abap_false.
                  t922 = abap_true.
                ENDIF.
                t917 = t922.
                IF t917 = abap_true.
                  DATA t924 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t924.
                  t916 = t924.
                ELSE.
                  DATA t925 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t925.
                  DATA t926 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t926.
                  DATA t927 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t927.
                  DATA t928 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA t929 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t930) = t782.
                  t929 = t930->current.
                  t928 = t929.
                  DATA t931 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t931.
                  DATA(t932) = VALUE abap_bool( ).
                  DATA(t933) = t928.
                  IF t933 IS INITIAL.
                    t932 = abap_true.
                  ENDIF.
                  IF t932 = abap_true.
                    DATA t934 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t934.
                    t931 = t934.
                  ELSE.
                    DATA t935 TYPE REF TO zif_lnt_interface_definition.
                    DATA t936 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    DATA(t937) = t928.
                    t936 = t937.
                    DATA t938 TYPE string.
                    DATA(t939) = t909.
                    t938 = t939->value.
                    t935 = t936->find_interface_definition( i_name = t938 ).
                    t931 = t935.
                  ENDIF.
                  t927 = t931.
                  t926 = t927.
                  DATA t940 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t940.
                  DATA t941 TYPE abap_bool.
                  DATA(t942) = t926.
                  t941 = xsdbool( t942 IS BOUND ).
                  IF t941 = abap_true.
                    DATA t943 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t943.
                    DATA(t944) = abap_true.
                    IF t944 = abap_true.
                      DATA t945 TYPE REF TO zif_lnt_interface_definition.
                      DATA(t946) = t926.
                      t945 = t946.
                      t943 = t945.
                    ELSE.
                      DATA t947 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t947.
                      t943 = t947.
                    ENDIF.
                    t940 = t943.
                  ELSE.
                    DATA t948 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t948.
                    DATA t949 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t949.
                    DATA t950 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t950.
                    DATA t951 TYPE REF TO zif_lnt_object.
                    CLEAR t951.
                    DATA t952 TYPE REF TO zif_lnt_registry.
                    DATA(t953) = t782.
                    t952 = t953->reg.
                    DATA t954 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t954.
                    DATA(t955) = abap_true.
                    IF t955 = abap_true.
                      DATA(t956) = |INTF|.
                      DATA(t957) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t957->has = abap_true.
                      t957->value = t956.
                      t954 = t957.
                    ELSE.
                      DATA t958 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t958.
                      t954 = t958.
                    ENDIF.
                    DATA t959 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t959.
                    DATA(t960) = abap_true.
                    IF t960 = abap_true.
                      DATA t961 TYPE string.
                      DATA(t962) = t909.
                      t961 = t962->value.
                      DATA(t963) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t963->has = abap_true.
                      t963->value = t961.
                      t959 = t963.
                    ELSE.
                      DATA t964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t964.
                      t959 = t964.
                    ENDIF.
                    t951 = t952->get_object( i_type_9913 = t954 i_name = t959 ).
                    DATA t965 TYPE REF TO object.
                    t965 = t951.
                    t950 ?= t965.
                    t949 = t950.
                    DATA t966 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t966.
                    DATA t967 TYPE abap_bool.
                    DATA(t968) = t949.
                    t967 = xsdbool( t968 IS BOUND ).
                    IF t967 = abap_true.
                      DATA t969 TYPE REF TO zif_lnt_interface_definition.
                      DATA t970 TYPE REF TO zcl_lnt_ob_interface.
                      DATA t971 TYPE REF TO zcl_lnt_ob_interface.
                      DATA(t972) = t949.
                      t971 = t972.
                      t970 = t971.
                      DATA t973 TYPE REF TO zif_lnt_interface_definition.
                      DATA(t974) = t970.
                      t973 = t974->def.
                      t969 = t973.
                      t966 = t969.
                    ELSE.
                      DATA t975 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t975.
                      t966 = t975.
                    ENDIF.
                    t948 = t966.
                    t940 = t948.
                  ENDIF.
                  t925 = t940.
                  t916 = t925.
                ENDIF.
                t908 = t916.
                t907 = t908.
                DATA t976 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t976.
                DATA t977 TYPE abap_bool.
                DATA(t978) = t907.
                t977 = xsdbool( t978 IS BOUND ).
                IF t977 = abap_true.
                  DATA t979 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t979.
                  DATA(t980) = abap_true.
                  IF t980 = abap_true.
                    DATA t981 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t982) = t907.
                    t981 = t982.
                    t979 = t981.
                  ELSE.
                    DATA t983 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t983.
                    t979 = t983.
                  ENDIF.
                  t976 = t979.
                ELSE.
                  DATA t984 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t984.
                  t976 = t984.
                ENDIF.
                t906 = t976.
                t900 = t906.
              ENDIF.
              t833 = t900.
              t824 = t833.
            ENDIF.
            t781 = t824.
            t780 = t781.
            DATA t985 TYPE abap_bool.
            DATA(t986) = t780.
            t985 = xsdbool( t986 IS BOUND ).
            IF t985 = abap_true.
              DATA t987 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t988 TYPE REF TO zif_lnt_interface_definition.
              DATA(t989) = t780.
              t988 = t989.
              t987 ?= t988.
              t767 = t987.
            ELSE.
              DATA t990 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t990.
              DATA(t991) = VALUE string( ).
              DATA(t992) = VALUE string( ).
              DATA t993 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t994 TYPE REF TO zcl_lnt_object_reference_type.
              DATA(t995) = t748.
              t994 ?= t995.
              t993 = t994.
              DATA(t996) = VALUE string( ).
              DATA t997 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t998 TYPE REF TO zcl_lnt_fi_identifier.
              DATA(t999) = t993.
              t998 = t999->identifier.
              t997 = t998.
              DATA(t1000) = VALUE string( ).
              DATA t1001 TYPE string.
              DATA t1002 TYPE string.
              DATA t1003 TYPE REF TO zcl_lnt_abstract_token.
              DATA t1004 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t1005) = t997.
              t1004 = t1005->token.
              t1003 = t1004.
              DATA t1006 TYPE string.
              DATA(t1007) = t1003.
              t1006 = t1007->str.
              t1002 = t1006.
              t1001 = t1002.
              DATA(t1008) = VALUE abap_bool( ).
              DATA(t1009) = VALUE string( ).
              DATA(t1010) = t1001.
              DATA(t1011) = 0.
              DATA(t1012) = 1.
              DATA(t1013) = strlen( t1010 ).
              IF t1011 < 0.
                t1011 = t1011 + t1013.
                IF t1011 < 0.
                  t1011 = 0.
                ENDIF.
              ENDIF.
              IF t1011 > t1013 OR t1012 <= 0.
                CLEAR t1009.
              ELSE.
                IF t1012 > t1013 - t1011.
                  t1012 = t1013 - t1011.
                ENDIF.
                t1009 = t1010+t1011(t1012).
              ENDIF.
              DATA(t1014) = |!|.
              t1008 = xsdbool( t1009 = t1014 ).
              IF t1008 = abap_true.
                DATA(t1015) = VALUE string( ).
                DATA t1016 TYPE string.
                DATA(t1017) = t1001.
                t1016 = t1017.
                DATA(t1018) = VALUE string( ).
                DATA(t1019) = t1016.
                DATA(t1020) = 1.
                DATA t1021 TYPE i.
                DATA(t1022) = t1016.
                DATA(t1023) = strlen( t1022 ).
                t1021 = t1023.
                DATA(t1024) = strlen( t1019 ).
                IF t1020 < 0.
                  t1020 = t1020 + t1024.
                  IF t1020 < 0.
                    t1020 = 0.
                  ENDIF.
                ENDIF.
                IF t1020 > t1024 OR t1021 <= 0.
                  CLEAR t1018.
                ELSE.
                  IF t1021 > t1024 - t1020.
                    t1021 = t1024 - t1020.
                  ENDIF.
                  t1018 = t1019+t1020(t1021).
                ENDIF.
                t1015 = t1018.
                t1001 = t1015.
              ENDIF.
              DATA(t1025) = t1001.
              t1000 = t1025.
              t996 = t1000.
              t992 = t996.
              DATA(t1026) = | not found in scope|.
              DATA(t1027) = strlen( t992 ).
              t991 = |{ t992 }{ t1026 }|.
              DATA t1028 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1028.
              t990 = NEW zcl_lnt_unknown_type( i_error = t991 i_qualified_name = t1028 ).
              result = t990.
              RETURN.
            ENDIF.
          ENDIF.
          DATA t1029 TYPE abap_bool.
          DATA t1030 TYPE abap_bool.
          DATA(t1031) = t767.
          t1030 = xsdbool( t1031 IS BOUND AND t1031 IS INSTANCE OF zcl_lnt_ty_class_definition ).
          t1029 = t1030.
          IF t1030 = abap_false.
            DATA t1032 TYPE abap_bool.
            DATA(t1033) = t767.
            t1032 = xsdbool( t1033 IS BOUND AND t1033 IS INSTANCE OF zcl_lnt_interface_definition ).
            t1029 = t1032.
          ENDIF.
          IF t1029 = abap_true.
            DATA(t1034) = VALUE string( ).
            DATA(t1035) = VALUE string( ).
            DATA t1036 TYPE abap_bool.
            DATA(t1037) = t767.
            t1036 = xsdbool( t1037 IS BOUND AND t1037 IS INSTANCE OF zcl_lnt_ty_class_definition ).
            IF t1036 = abap_true.
              DATA(t1038) = |CLAS|.
              t1035 = t1038.
            ELSE.
              DATA(t1039) = |INTF|.
              t1035 = t1039.
            ENDIF.
            t1034 = t1035.
            DATA t1040 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1041) = me->input_2fd0.
            t1040 = t1041->scope.
            DATA t1042 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1042.
            DATA(t1043) = abap_true.
            IF t1043 = abap_true.
              DATA t1044 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t1045) = t1.
              t1044 = t1045->get_first_token( ).
              t1042 = t1044.
            ELSE.
              DATA t1046 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1046.
              t1042 = t1046.
            ENDIF.
            DATA t1047 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t1047.
            DATA(t1048) = abap_true.
            IF t1048 = abap_true.
              DATA t1049 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t1050 TYPE REF TO zif_lnt_union_865ccdda.
              DATA(t1051) = t767.
              t1050 ?= t1051.
              t1049 ?= t1050.
              t1047 = t1049.
            ELSE.
              DATA t1052 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t1052.
              t1047 = t1052.
            ENDIF.
            DATA t1053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1053.
            DATA(t1054) = |Object|.
            CLEAR t1053.
            CREATE OBJECT t1053.
            t1053->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t1053->sval = t1054.
            DATA t1055 TYPE string.
            DATA(t1056) = me->input_2fd0.
            t1055 = t1056->filename.
            DATA t1057 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t1057.
            DATA(t1058) = abap_true.
            IF t1058 = abap_true.
              DATA t1059 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t1059.
              DATA t1060 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1060.
              DATA t1061 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1061.
              DATA(t1062) = abap_true.
              IF t1062 = abap_true.
                DATA(t1063) = t1034.
                DATA(t1064) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1064->has = abap_true.
                t1064->value = t1063.
                t1061 = t1064.
              ELSE.
                DATA t1065 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1065.
                t1061 = t1065.
              ENDIF.
              t1060 = t1061.
              DATA t1066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1066.
              DATA t1067 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1067.
              DATA(t1068) = abap_true.
              IF t1068 = abap_true.
                DATA t1069 TYPE string.
                DATA t1070 TYPE REF TO zif_lnt_union_865ccdda.
                DATA(t1071) = t767.
                t1070 ?= t1071.
                t1069 = t1070->get_name( ).
                DATA(t1072) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1072->has = abap_true.
                t1072->value = t1069.
                t1067 = t1072.
              ELSE.
                DATA t1073 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1073.
                t1067 = t1073.
              ENDIF.
              t1066 = t1067.
              DATA t1074 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t1075 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t1075.
              t1074 = t1075.
              t1059 = NEW zcl_lnt_ireference_extras( i_oo_name = t1066 i_oo_type = t1060 i_found_qualified = t1074 ).
              CREATE OBJECT t1059->zlnt_view_ownkeys_b0e8086400eb.
              t1059->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t1076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1076.
              IF t1059->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t1059->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t1076 ).
              ENDIF.
              DATA t1077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1077.
              IF t1059->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t1059->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t1077 ).
              ENDIF.
              CREATE OBJECT t1059->zlnt_json_ownkeys_70e5fd461788.
              t1059->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t1078) = |ooType|.
              DATA t1079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1079.
              IF t1059->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t1059->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1078 p1 = t1079 ).
              ENDIF.
              DATA(t1080) = |ooName|.
              DATA t1081 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1081.
              IF t1059->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t1059->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1080 p1 = t1081 ).
              ENDIF.
              t1057 = t1059.
            ELSE.
              DATA t1082 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t1082.
              t1057 = t1082.
            ENDIF.
            t1040->add_reference( i_usage = t1042 i_referencing = t1047 i_type_9913 = t1053 i_filename = t1055 i_extra = t1057 ).
            DATA t1083 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1083.
            DATA t1084 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1084.
            DATA t1085 TYPE REF TO zcl_lnt_object_oriented.
            DATA t1086 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1087) = me->input_2fd0.
            t1086 = t1087->scope.
            t1085 = NEW zcl_lnt_object_oriented( i_scope = t1086 ).
            DATA t1088 TYPE REF TO zif_lnt_interface_definition.
            DATA t1089 TYPE REF TO zif_lnt_union_865ccdda.
            DATA(t1090) = t767.
            t1089 ?= t1090.
            t1088 ?= t1089.
            DATA t1091 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1091.
            DATA(t1092) = abap_true.
            IF t1092 = abap_true.
              DATA(t1093) = t764.
              DATA(t1094) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1094->has = abap_true.
              t1094->value = t1093.
              t1091 = t1094.
            ELSE.
              DATA t1095 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1095.
              t1091 = t1095.
            ENDIF.
            t1084 = t1085->search_type_name( i_def = t1088 i_name = t1091 ).
            t1083 = t1084.
            DATA t1096 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1096.
            DATA t1097 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t1098) = t1083.
            t1097 = t1098.
            DATA t1099 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1099.
            DATA(t1100) = VALUE abap_bool( ).
            DATA(t1101) = t1097.
            IF t1101 IS INITIAL.
              t1100 = abap_true.
            ENDIF.
            IF t1100 = abap_true.
              DATA t1102 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t1102.
              t1099 = t1102.
            ELSE.
              DATA t1103 TYPE REF TO zcl_lnt_abstract_type.
              DATA t1104 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t1105 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t1106) = t1097.
              t1105 = t1106.
              t1104 = t1105.
              DATA t1107 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t1108) = t1104.
              t1107 = t1108->type_cba0.
              t1103 = t1107.
              t1099 = t1103.
            ENDIF.
            t1096 = t1099.
            t150 = t1096.
            DATA(t1109) = VALUE abap_bool( ).
            DATA(t1110) = VALUE abap_bool( ).
            DATA t1111 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t1112) = t1083.
            t1111 = t1112.
            DATA t1113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t1114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1114.
            t1113 = t1114.
            DATA(t1115) = VALUE abap_bool( ).
            DATA(t1116) = t1111.
            IF t1116 IS INITIAL.
              t1115 = abap_true.
            ENDIF.
            t1110 = t1115.
            t1109 = t1110.
            IF t1110 = abap_false.
              DATA(t1117) = VALUE abap_bool( ).
              DATA t1118 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t1119) = t150.
              t1118 = t1119.
              DATA t1120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t1121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1121.
              t1120 = t1121.
              DATA(t1122) = VALUE abap_bool( ).
              DATA(t1123) = t1118.
              IF t1123 IS INITIAL.
                t1122 = abap_true.
              ENDIF.
              t1117 = t1122.
              t1109 = t1117.
            ENDIF.
            IF t1109 = abap_true.
              DATA t1124 TYPE REF TO zcl_lnt_unknown_type.
              DATA t1125 TYPE string.
              DATA(t1126) = t764.
              DATA(t1127) = | not found in class or interface|.
              DATA(t1128) = strlen( t1126 ).
              t1125 = |{ t1126 }{ t1127 }|.
              DATA t1129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1129.
              t1124 = NEW zcl_lnt_unknown_type( i_error = t1125 i_qualified_name = t1129 ).
              result = t1124.
              RETURN.
            ENDIF.
            DATA t1130 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1130.
            DATA t1131 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1131.
            DATA t1132 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t1132.
            DATA t1133 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t1133.
            DATA t1134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t1135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t1136 TYPE REF TO zcl_lnt_abstract_node.
            DATA(t1137) = t1.
            t1136 = t1137.
            DATA t1138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t1139) = t1136.
            t1138 = t1139->children.
            t1135 = t1138.
            t1134 ?= t1135.
            DATA(t1140) = 2.
            DATA t1141 TYPE REF TO object.
            t1141 = t1134->get( p0 = t1140 ).
            DATA t1142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1142.
            CLEAR t1133.
            IF t1141 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t1142 ?= t1141.
              DATA t1143 TYPE REF TO object.
              t1143 = t1142->as_ref( ).
              t1133 ?= t1143.
            ELSE.
              t1133 ?= t1141.
            ENDIF.
            t1132 = t1133.
            DATA t1144 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1144.
            DATA(t1145) = VALUE abap_bool( ).
            DATA(t1146) = t1132.
            IF t1146 IS INITIAL.
              t1145 = abap_true.
            ENDIF.
            IF t1145 = abap_true.
              DATA t1147 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1147.
              t1144 = t1147.
            ELSE.
              DATA t1148 TYPE REF TO zcl_lnt_abstract_token.
              DATA t1149 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t1150) = t1132.
              t1149 = t1150.
              t1148 = t1149->get_first_token( ).
              t1144 = t1148.
            ENDIF.
            t1131 = t1144.
            t1130 = t1131.
            DATA t1151 TYPE abap_bool.
            DATA t1152 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t1153) = t1130.
            t1152 = t1153.
            t1151 = xsdbool( t1152 IS BOUND ).
            IF t1151 = abap_true.
              DATA t1154 TYPE REF TO zcl_lnt_current_scope.
              DATA(t1155) = me->input_2fd0.
              t1154 = t1155->scope.
              DATA t1156 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1156.
              DATA(t1157) = abap_true.
              IF t1157 = abap_true.
                DATA t1158 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t1159) = t1130.
                t1158 = t1159.
                t1156 = t1158.
              ELSE.
                DATA t1160 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t1160.
                t1156 = t1160.
              ENDIF.
              DATA t1161 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t1162) = t1083.
              t1161 = t1162.
              DATA t1163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1163.
              DATA(t1164) = |Type|.
              CLEAR t1163.
              CREATE OBJECT t1163.
              t1163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
              t1163->sval = t1164.
              DATA t1165 TYPE string.
              DATA(t1166) = me->input_2fd0.
              t1165 = t1166->filename.
              DATA t1167 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t1167.
              t1154->add_reference( i_usage = t1156 i_referencing = t1161 i_type_9913 = t1163 i_filename = t1165 i_extra = t1167 ).
            ENDIF.
          ELSE.
            DATA t1168 TYPE REF TO zcl_lnt_unknown_type.
            DATA t1169 TYPE string.
            DATA t1170 TYPE string.
            DATA t1171 TYPE string.
            DATA(t1172) = |Not an object reference, |.
            DATA t1173 TYPE string.
            DATA(t1174) = t89.
            t1173 = t1174->value.
            DATA(t1175) = strlen( t1172 ).
            t1171 = |{ t1172 }{ t1173 }|.
            DATA(t1176) = |, |.
            DATA(t1177) = strlen( t1171 ).
            t1170 = |{ t1171 }{ t1176 }|.
            DATA t1178 TYPE string.
            DATA t1179 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            DATA(t1180) = t767.
            t1179 = t1180->zlnt_builtin_clas_3f891b097658( ).
            t1178 = t1179->name.
            DATA(t1181) = strlen( t1170 ).
            t1169 = |{ t1170 }{ t1178 }|.
            DATA t1182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1182.
            t1168 = NEW zcl_lnt_unknown_type( i_error = t1169 i_qualified_name = t1182 ).
            result = t1168.
            RETURN.
          ENDIF.
        ELSE.
          DATA(t1183) = VALUE abap_bool( ).
          DATA t1184 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t1185) = t748.
          t1184 = t1185.
          DATA t1186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t1187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1187.
          t1186 = t1187.
          DATA(t1188) = VALUE abap_bool( ).
          DATA(t1189) = t1184.
          IF t1189 IS INITIAL.
            t1188 = abap_true.
          ENDIF.
          t1183 = t1188.
          IF t1183 = abap_true.
            DATA t1190 TYPE REF TO zcl_lnt_unknown_type.
            DATA t1191 TYPE string.
            DATA t1192 TYPE string.
            DATA(t1193) = t89.
            t1192 = t1193->value.
            DATA(t1194) = | not found in scope|.
            DATA(t1195) = strlen( t1192 ).
            t1191 = |{ t1192 }{ t1194 }|.
            DATA t1196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1196.
            t1190 = NEW zcl_lnt_unknown_type( i_error = t1191 i_qualified_name = t1196 ).
            result = t1190.
            RETURN.
          ELSE.
            DATA t1197 TYPE REF TO zcl_lnt_unknown_type.
            DATA t1198 TYPE string.
            DATA t1199 TYPE string.
            DATA t1200 TYPE string.
            DATA(t1201) = |Not an object reference, |.
            DATA t1202 TYPE string.
            DATA(t1203) = t89.
            t1202 = t1203->value.
            DATA(t1204) = strlen( t1201 ).
            t1200 = |{ t1201 }{ t1202 }|.
            DATA(t1205) = |, |.
            DATA(t1206) = strlen( t1200 ).
            t1199 = |{ t1200 }{ t1205 }|.
            DATA t1207 TYPE string.
            DATA t1208 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            DATA t1209 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t1210) = t748.
            t1209 = t1210.
            t1208 = t1209->zlnt_builtin_clas_3f891b097658( ).
            t1207 = t1208->name.
            DATA(t1211) = strlen( t1199 ).
            t1198 = |{ t1199 }{ t1207 }|.
            DATA t1212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1212.
            t1197 = NEW zcl_lnt_unknown_type( i_error = t1198 i_qualified_name = t1212 ).
            result = t1197.
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t1213 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1213.
        DATA t1214 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1214.
        DATA t1215 TYPE REF TO zcl_lnt_current_scope.
        DATA t1216 TYPE REF TO zcl_lnt_current_scope.
        DATA(t1217) = me->input_2fd0.
        t1216 = t1217->scope.
        t1215 = t1216.
        DATA t1218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1220) = t140.
        DATA(t1221) = 0.
        t1219 = t1220->get( p0 = t1221 ).
        t1218 = t1219.
        DATA t1222 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1222.
        DATA(t1223) = VALUE abap_bool( ).
        DATA t1224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1225) = t1218.
        t1224 = t1225.
        DATA t1226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t1227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1227.
        t1226 = t1227.
        DATA(t1228) = VALUE abap_bool( ).
        DATA(t1229) = t1224.
        IF t1229 IS INITIAL.
          t1228 = abap_true.
        ELSEIF t1229->has = abap_false.
          t1228 = abap_true.
        ENDIF.
        t1223 = t1228.
        IF t1223 = abap_true.
          DATA t1230 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1230.
          t1222 = t1230.
        ELSE.
          DATA t1231 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1231.
          DATA t1232 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t1233 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t1234) = t1215.
          t1233 = t1234->current.
          t1232 = t1233.
          DATA t1235 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1235.
          DATA(t1236) = VALUE abap_bool( ).
          DATA(t1237) = t1232.
          IF t1237 IS INITIAL.
            t1236 = abap_true.
          ENDIF.
          IF t1236 = abap_true.
            DATA t1238 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1238.
            t1235 = t1238.
          ELSE.
            DATA t1239 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t1240 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t1241) = t1232.
            t1240 = t1241.
            DATA t1242 TYPE string.
            DATA(t1243) = t1218.
            t1242 = t1243->value.
            t1239 = t1240->find_type( i_name = t1242 ).
            t1235 = t1239.
          ENDIF.
          t1231 = t1235.
          t1222 = t1231.
        ENDIF.
        t1214 = t1222.
        t1213 = t1214.
        DATA t1244 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t1244.
        DATA t1245 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t1246) = t1213.
        t1245 = t1246.
        DATA t1247 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t1247.
        DATA(t1248) = VALUE abap_bool( ).
        DATA(t1249) = t1245.
        IF t1249 IS INITIAL.
          t1248 = abap_true.
        ENDIF.
        IF t1248 = abap_true.
          DATA t1250 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1250.
          t1247 = t1250.
        ELSE.
          DATA t1251 TYPE REF TO zcl_lnt_abstract_type.
          DATA t1252 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t1253 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t1254) = t1245.
          t1253 = t1254.
          t1252 = t1253.
          DATA t1255 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t1256) = t1252.
          t1255 = t1256->type_cba0.
          t1251 = t1255.
          t1247 = t1251.
        ENDIF.
        t1244 = t1247.
        t150 = t1244.
        DATA(t1257) = VALUE abap_bool( ).
        DATA t1258 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t1259) = t150.
        t1258 = t1259.
        DATA t1260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t1261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1261.
        t1260 = t1261.
        DATA(t1262) = VALUE abap_bool( ).
        DATA(t1263) = t1258.
        IF t1263 IS INITIAL.
          t1262 = abap_true.
        ENDIF.
        t1257 = t1262.
        IF t1257 = abap_true.
          DATA t1264 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1264.
          DATA t1265 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1265.
          DATA t1266 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1266.
          DATA t1267 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1267.
          DATA t1268 TYPE REF TO zcl_lnt_current_scope.
          DATA(t1269) = me->input_2fd0.
          t1268 = t1269->scope.
          DATA(t1270) = VALUE string( ).
          DATA(t1271) = t140.
          IF t1271->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t1271->load( ).
          CLEAR t1270.
          READ TABLE t1271->items INDEX 1 INTO t1270.
          t1267 = t1268->find_type_pool_type( i_name = t1270 ).
          t1266 = t1267.
          DATA t1272 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1272.
          DATA(t1273) = VALUE abap_bool( ).
          DATA(t1274) = t1266.
          IF t1274 IS INITIAL.
            t1273 = abap_true.
          ENDIF.
          IF t1273 = abap_true.
            DATA t1275 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1275.
            t1272 = t1275.
          ELSE.
            DATA t1276 TYPE REF TO zcl_lnt_abstract_type.
            DATA t1277 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t1278 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t1279) = t1266.
            t1278 = t1279.
            t1277 = t1278.
            DATA t1280 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t1281) = t1277.
            t1280 = t1281->type_cba0.
            t1276 = t1280.
            t1272 = t1276.
          ENDIF.
          t1265 = t1272.
          t1264 = t1265.
          DATA t1282 TYPE abap_bool.
          DATA(t1283) = t1264.
          t1282 = xsdbool( t1283 IS BOUND ).
          IF t1282 = abap_true.
            DATA t1284 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1284.
            DATA(t1285) = abap_true.
            IF t1285 = abap_true.
              DATA t1286 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t1287) = t1264.
              t1286 = t1287.
              t1284 = t1286.
            ELSE.
              DATA t1288 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t1288.
              t1284 = t1288.
            ENDIF.
            t150 = t1284.
          ENDIF.
          DATA(t1289) = VALUE abap_bool( ).
          DATA t1290 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t1291) = t150.
          t1290 = t1291.
          DATA t1292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t1293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1293.
          t1292 = t1293.
          DATA(t1294) = VALUE abap_bool( ).
          DATA(t1295) = t1290.
          IF t1295 IS INITIAL.
            t1294 = abap_true.
          ENDIF.
          t1289 = t1294.
          IF t1289 = abap_true.
            DATA t1296 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t1296.
            DATA t1297 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t1297.
            DATA t1298 TYPE REF TO zcl_lnt_ddic.
            DATA t1299 TYPE REF TO zcl_lnt_ddic.
            DATA t1300 TYPE REF TO zcl_lnt_current_scope.
            DATA t1301 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1302) = me->input_2fd0.
            t1301 = t1302->scope.
            t1300 = t1301.
            DATA t1303 TYPE REF TO zcl_lnt_ddic.
            DATA t1304 TYPE REF TO zif_lnt_registry.
            DATA(t1305) = t1300.
            t1304 = t1305->reg.
            t1303 = NEW zcl_lnt_ddic( i_reg_f149 = t1304 ).
            t1299 = t1303.
            t1298 = t1299.
            DATA t1306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t1307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t1308) = t140.
            DATA(t1309) = 0.
            t1307 = t1308->get( p0 = t1309 ).
            t1306 = t1307.
            DATA t1310 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t1310.
            DATA(t1311) = VALUE abap_bool( ).
            DATA t1312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t1313) = t1306.
            t1312 = t1313.
            DATA t1314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t1315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1315.
            t1314 = t1315.
            DATA(t1316) = VALUE abap_bool( ).
            DATA(t1317) = t1312.
            IF t1317 IS INITIAL.
              t1316 = abap_true.
            ELSEIF t1317->has = abap_false.
              t1316 = abap_true.
            ENDIF.
            t1311 = t1316.
            IF t1311 = abap_true.
              DATA t1318 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t1319 TYPE REF TO zcl_lnt_abstract_type.
              DATA t1320 TYPE REF TO zcl_lnt_unknown_type.
              DATA(t1321) = |undefined, lookupTableOrView|.
              DATA t1322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1322.
              t1320 = NEW zcl_lnt_unknown_type( i_error = t1321 i_qualified_name = t1322 ).
              t1319 = t1320.
              DATA t1323 TYPE REF TO zif_lnt_object.
              DATA t1324 TYPE REF TO zif_lnt_object.
              CLEAR t1324.
              t1323 = t1324.
              t1318 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1319 i_object_19cd = t1323 ).
              CREATE OBJECT t1318->zlnt_view_ownkeys_b0e8086400eb.
              t1318->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t1325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1325.
              IF t1318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t1318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1325 ).
              ENDIF.
              CREATE OBJECT t1318->zlnt_json_ownkeys_70e5fd461788.
              t1318->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t1326) = |type|.
              DATA t1327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1327.
              IF t1318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t1318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1326 p1 = t1327 ).
              ENDIF.
              t1310 = t1318.
            ELSE.
              DATA t1328 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t1328.
              DATA t1329 TYPE REF TO zcl_lnt_table.
              CLEAR t1329.
              DATA t1330 TYPE REF TO zcl_lnt_table.
              CLEAR t1330.
              DATA t1331 TYPE REF TO zif_lnt_object.
              CLEAR t1331.
              DATA t1332 TYPE REF TO zif_lnt_registry.
              DATA(t1333) = t1298.
              t1332 = t1333->reg.
              DATA t1334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1334.
              DATA(t1335) = abap_true.
              IF t1335 = abap_true.
                DATA(t1336) = |TABL|.
                DATA(t1337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1337->has = abap_true.
                t1337->value = t1336.
                t1334 = t1337.
              ELSE.
                DATA t1338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1338.
                t1334 = t1338.
              ENDIF.
              DATA t1339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1339.
              DATA(t1340) = abap_true.
              IF t1340 = abap_true.
                DATA t1341 TYPE string.
                DATA(t1342) = t1306.
                t1341 = t1342->value.
                DATA(t1343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1343->has = abap_true.
                t1343->value = t1341.
                t1339 = t1343.
              ELSE.
                DATA t1344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1344.
                t1339 = t1344.
              ENDIF.
              t1331 = t1332->get_object( i_type_9913 = t1334 i_name = t1339 ).
              DATA t1345 TYPE REF TO object.
              t1345 = t1331.
              t1330 ?= t1345.
              t1329 = t1330.
              DATA t1346 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t1346.
              DATA t1347 TYPE abap_bool.
              DATA(t1348) = t1329.
              t1347 = xsdbool( t1348 IS BOUND ).
              IF t1347 = abap_true.
                DATA t1349 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t1350 TYPE REF TO zcl_lnt_abstract_type.
                DATA t1351 TYPE REF TO zcl_lnt_abstract_type.
                DATA t1352 TYPE REF TO zcl_lnt_table.
                DATA(t1353) = t1329.
                t1352 = t1353.
                DATA t1354 TYPE REF TO zif_lnt_registry.
                DATA(t1355) = t1298.
                t1354 = t1355->reg.
                DATA t1356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1356.
                DATA t1357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1357.
                t1351 = t1352->parse_type( i_reg_f149 = t1354 i_data_element = t1356 i_description = t1357 ).
                t1350 = t1351.
                DATA t1358 TYPE REF TO zif_lnt_object.
                DATA t1359 TYPE REF TO zcl_lnt_table.
                DATA(t1360) = t1329.
                t1359 = t1360.
                t1358 = t1359.
                t1349 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1350 i_object_19cd = t1358 ).
                CREATE OBJECT t1349->zlnt_view_ownkeys_b0e8086400eb.
                t1349->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t1361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1361.
                IF t1349->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t1349->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1361 ).
                ENDIF.
                DATA t1362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1362.
                IF t1349->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t1349->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1362 ).
                ENDIF.
                CREATE OBJECT t1349->zlnt_json_ownkeys_70e5fd461788.
                t1349->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t1363) = |type|.
                DATA t1364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1364.
                IF t1349->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t1349->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1363 p1 = t1364 ).
                ENDIF.
                DATA(t1365) = |object|.
                DATA t1366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1366.
                IF t1349->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t1349->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1365 p1 = t1366 ).
                ENDIF.
                t1346 = t1349.
              ELSE.
                DATA t1367 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1367.
                DATA t1368 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1368.
                DATA t1369 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1369.
                DATA(t1370) = t1298.
                DATA t1371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1371.
                DATA(t1372) = abap_true.
                IF t1372 = abap_true.
                  DATA t1373 TYPE string.
                  DATA(t1374) = t1306.
                  t1373 = t1374->value.
                  DATA(t1375) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t1375->has = abap_true.
                  t1375->value = t1373.
                  t1371 = t1375.
                ELSE.
                  DATA t1376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1376.
                  t1371 = t1376.
                ENDIF.
                t1369 = t1370->lookup_ddls( i_name = t1371 ).
                t1368 = t1369.
                DATA t1377 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1377.
                DATA t1378 TYPE abap_bool.
                DATA(t1379) = t1368.
                t1378 = xsdbool( t1379 IS BOUND ).
                IF t1378 = abap_true.
                  DATA t1380 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA(t1381) = t1368.
                  t1380 = t1381.
                  t1377 = t1380.
                ELSE.
                  DATA t1382 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t1382.
                  DATA t1383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1383.
                  DATA t1384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1384.
                  DATA(t1385) = abap_true.
                  IF t1385 = abap_true.
                    DATA t1386 TYPE string.
                    DATA(t1387) = t1306.
                    t1386 = t1387->value.
                    DATA(t1388) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1388->has = abap_true.
                    t1388->value = t1386.
                    t1384 = t1388.
                  ELSE.
                    DATA t1389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1389.
                    t1384 = t1389.
                  ENDIF.
                  t1383 = t1384.
                  DATA t1390 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t1390.
                  DATA(t1391) = VALUE abap_bool( ).
                  DATA t1392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t1393) = t1383.
                  t1392 = t1393.
                  DATA t1394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t1395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1395.
                  t1394 = t1395.
                  DATA(t1396) = VALUE abap_bool( ).
                  DATA(t1397) = t1392.
                  IF t1397 IS INITIAL.
                    t1396 = abap_true.
                  ELSEIF t1397->has = abap_false.
                    t1396 = abap_true.
                  ENDIF.
                  t1391 = t1396.
                  IF t1391 = abap_true.
                    DATA t1398 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t1399 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t1400 TYPE REF TO zcl_lnt_unknown_type.
                    DATA(t1401) = |undefined, lookupView|.
                    DATA t1402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1402.
                    t1400 = NEW zcl_lnt_unknown_type( i_error = t1401 i_qualified_name = t1402 ).
                    t1399 = t1400.
                    DATA t1403 TYPE REF TO zif_lnt_object.
                    DATA t1404 TYPE REF TO zif_lnt_object.
                    CLEAR t1404.
                    t1403 = t1404.
                    t1398 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1399 i_object_19cd = t1403 ).
                    CREATE OBJECT t1398->zlnt_view_ownkeys_b0e8086400eb.
                    t1398->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t1405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1405.
                    IF t1398->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t1398->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1405 ).
                    ENDIF.
                    CREATE OBJECT t1398->zlnt_json_ownkeys_70e5fd461788.
                    t1398->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t1406) = |type|.
                    DATA t1407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1407.
                    IF t1398->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t1398->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1406 p1 = t1407 ).
                    ENDIF.
                    t1390 = t1398.
                  ELSE.
                    DATA t1408 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1408.
                    DATA t1409 TYPE REF TO zcl_lnt_table.
                    CLEAR t1409.
                    DATA t1410 TYPE REF TO zcl_lnt_table.
                    CLEAR t1410.
                    DATA t1411 TYPE REF TO zif_lnt_object.
                    CLEAR t1411.
                    DATA t1412 TYPE REF TO zif_lnt_registry.
                    DATA(t1413) = t1298.
                    t1412 = t1413->reg.
                    DATA t1414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1414.
                    DATA(t1415) = abap_true.
                    IF t1415 = abap_true.
                      DATA(t1416) = |VIEW|.
                      DATA(t1417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1417->has = abap_true.
                      t1417->value = t1416.
                      t1414 = t1417.
                    ELSE.
                      DATA t1418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1418.
                      t1414 = t1418.
                    ENDIF.
                    DATA t1419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1419.
                    DATA(t1420) = abap_true.
                    IF t1420 = abap_true.
                      DATA t1421 TYPE string.
                      DATA(t1422) = t1383.
                      t1421 = t1422->value.
                      DATA(t1423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1423->has = abap_true.
                      t1423->value = t1421.
                      t1419 = t1423.
                    ELSE.
                      DATA t1424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1424.
                      t1419 = t1424.
                    ENDIF.
                    t1411 = t1412->get_object( i_type_9913 = t1414 i_name = t1419 ).
                    DATA t1425 TYPE REF TO object.
                    t1425 = t1411.
                    t1410 ?= t1425.
                    t1409 = t1410.
                    DATA t1426 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1426.
                    DATA t1427 TYPE abap_bool.
                    DATA(t1428) = t1409.
                    t1427 = xsdbool( t1428 IS BOUND ).
                    IF t1427 = abap_true.
                      DATA t1429 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t1430 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t1431 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t1432 TYPE REF TO zcl_lnt_table.
                      DATA(t1433) = t1409.
                      t1432 = t1433.
                      DATA t1434 TYPE REF TO zif_lnt_registry.
                      DATA(t1435) = t1298.
                      t1434 = t1435->reg.
                      DATA t1436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1436.
                      DATA t1437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1437.
                      t1431 = t1432->parse_type( i_reg_f149 = t1434 i_data_element = t1436 i_description = t1437 ).
                      t1430 = t1431.
                      DATA t1438 TYPE REF TO zif_lnt_object.
                      DATA t1439 TYPE REF TO zcl_lnt_table.
                      DATA(t1440) = t1409.
                      t1439 = t1440.
                      t1438 = t1439.
                      t1429 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1430 i_object_19cd = t1438 ).
                      CREATE OBJECT t1429->zlnt_view_ownkeys_b0e8086400eb.
                      t1429->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1441.
                      IF t1429->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1429->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1441 ).
                      ENDIF.
                      DATA t1442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1442.
                      IF t1429->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1429->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1442 ).
                      ENDIF.
                      CREATE OBJECT t1429->zlnt_json_ownkeys_70e5fd461788.
                      t1429->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t1443) = |type|.
                      DATA t1444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1444.
                      IF t1429->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1429->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1443 p1 = t1444 ).
                      ENDIF.
                      DATA(t1445) = |object|.
                      DATA t1446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1446.
                      IF t1429->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1429->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1445 p1 = t1446 ).
                      ENDIF.
                      t1426 = t1429.
                    ELSE.
                      DATA t1447 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1447.
                      DATA t1448 TYPE abap_bool.
                      DATA t1449 TYPE REF TO zif_lnt_registry.
                      DATA(t1450) = t1298.
                      t1449 = t1450->reg.
                      DATA t1451 TYPE string.
                      DATA(t1452) = t1383.
                      t1451 = t1452->value.
                      t1448 = t1449->in_error_namespace( i_name = t1451 ).
                      IF t1448 = abap_true.
                        DATA t1453 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA t1454 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t1455 TYPE REF TO zcl_lnt_unknown_type.
                        DATA t1456 TYPE string.
                        DATA t1457 TYPE string.
                        DATA(t1458) = t1383.
                        t1457 = t1458->value.
                        DATA(t1459) = | not found, lookupView|.
                        DATA(t1460) = strlen( t1457 ).
                        t1456 = |{ t1457 }{ t1459 }|.
                        DATA t1461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1461.
                        t1455 = NEW zcl_lnt_unknown_type( i_error = t1456 i_qualified_name = t1461 ).
                        t1454 = t1455.
                        DATA t1462 TYPE REF TO zif_lnt_object.
                        DATA t1463 TYPE REF TO zif_lnt_object.
                        CLEAR t1463.
                        t1462 = t1463.
                        t1453 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1454 i_object_19cd = t1462 ).
                        CREATE OBJECT t1453->zlnt_view_ownkeys_b0e8086400eb.
                        t1453->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1464.
                        IF t1453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1464 ).
                        ENDIF.
                        CREATE OBJECT t1453->zlnt_json_ownkeys_70e5fd461788.
                        t1453->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t1465) = |type|.
                        DATA t1466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1466.
                        IF t1453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1465 p1 = t1466 ).
                        ENDIF.
                        t1447 = t1453.
                      ELSE.
                        DATA t1467 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1467.
                        DATA t1468 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1468.
                        DATA t1469 TYPE REF TO zcl_lnt_void_type.
                        CLEAR t1469.
                        DATA t1470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1470.
                        DATA(t1471) = abap_true.
                        IF t1471 = abap_true.
                          DATA t1472 TYPE string.
                          DATA(t1473) = t1383.
                          t1472 = t1473->value.
                          DATA(t1474) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1474->has = abap_true.
                          t1474->value = t1472.
                          t1470 = t1474.
                        ELSE.
                          DATA t1475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1475.
                          t1470 = t1475.
                        ENDIF.
                        DATA t1476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1476.
                        t1469 = zcl_lnt_void_type=>get_db65( i_voided = t1470 i_qualified_name = t1476 ).
                        t1468 = t1469.
                        DATA t1477 TYPE REF TO zif_lnt_object.
                        DATA t1478 TYPE REF TO zif_lnt_object.
                        CLEAR t1478.
                        t1477 = t1478.
                        t1467 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1468 i_object_19cd = t1477 ).
                        CREATE OBJECT t1467->zlnt_view_ownkeys_b0e8086400eb.
                        t1467->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1479.
                        IF t1467->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1467->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1479 ).
                        ENDIF.
                        CREATE OBJECT t1467->zlnt_json_ownkeys_70e5fd461788.
                        t1467->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t1480) = |type|.
                        DATA t1481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1481.
                        IF t1467->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1467->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1480 p1 = t1481 ).
                        ENDIF.
                        t1447 = t1467.
                      ENDIF.
                      t1426 = t1447.
                    ENDIF.
                    t1408 = t1426.
                    t1390 = t1408.
                  ENDIF.
                  t1382 = t1390.
                  t1377 = t1382.
                ENDIF.
                t1367 = t1377.
                t1346 = t1367.
              ENDIF.
              t1328 = t1346.
              t1310 = t1328.
            ENDIF.
            t1297 = t1310.
            t1296 = t1297.
            DATA t1482 TYPE REF TO zif_lnt_ddic_references.
            DATA t1483 TYPE REF TO zcl_lnt_current_scope.
            DATA t1484 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1485) = me->input_2fd0.
            t1484 = t1485->scope.
            t1483 = t1484.
            DATA t1486 TYPE REF TO zif_lnt_ddic_references.
            DATA t1487 TYPE REF TO zif_lnt_registry.
            DATA(t1488) = t1483.
            t1487 = t1488->reg.
            t1486 = t1487->get_ddic_references( ).
            t1482 = t1486.
            DATA t1489 TYPE REF TO zif_lnt_object.
            DATA t1490 TYPE REF TO zcl_lnt_current_scope.
            DATA t1491 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1492) = me->input_2fd0.
            t1491 = t1492->scope.
            t1490 = t1491.
            DATA t1493 TYPE REF TO zif_lnt_object.
            DATA(t1494) = t1490.
            t1493 = t1494->parent_obj.
            t1489 = t1493.
            DATA t1495 TYPE REF TO zcl_lnt_iobject_and_token.
            CLEAR t1495.
            DATA(t1496) = abap_true.
            IF t1496 = abap_true.
              DATA t1497 TYPE REF TO zcl_lnt_iobject_and_token.
              CLEAR t1497.
              DATA t1498 TYPE REF TO zif_lnt_object.
              DATA t1499 TYPE REF TO zif_lnt_object.
              DATA(t1500) = t1296.
              t1499 = t1500->zlnt_view_read_sr_2de0200e6505( ).
              t1498 = t1499.
              DATA t1501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1501.
              DATA t1502 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1502.
              DATA(t1503) = abap_true.
              IF t1503 = abap_true.
                DATA t1504 TYPE string.
                DATA(t1505) = me->input_2fd0.
                t1504 = t1505->filename.
                DATA(t1506) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1506->has = abap_true.
                t1506->value = t1504.
                t1502 = t1506.
              ELSE.
                DATA t1507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1507.
                t1502 = t1507.
              ENDIF.
              t1501 = t1502.
              DATA t1508 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1508.
              DATA t1509 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1509.
              DATA(t1510) = abap_true.
              IF t1510 = abap_true.
                DATA t1511 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t1512) = t1.
                t1511 = t1512->get_first_token( ).
                t1509 = t1511.
              ELSE.
                DATA t1513 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t1513.
                t1509 = t1513.
              ENDIF.
              t1508 = t1509.
              t1497 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1498 i_token = t1508 i_filename = t1501 ).
              CREATE OBJECT t1497->zlnt_view_ownkeys_b0e8086400eb.
              t1497->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t1514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1514.
              IF t1497->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t1497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1514 ).
              ENDIF.
              DATA t1515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1515.
              IF t1497->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t1497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t1515 ).
              ENDIF.
              DATA t1516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1516.
              IF t1497->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t1497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t1516 ).
              ENDIF.
              CREATE OBJECT t1497->zlnt_json_ownkeys_70e5fd461788.
              t1497->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t1517) = |object|.
              DATA t1518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1518.
              IF t1497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t1497->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1517 p1 = t1518 ).
              ENDIF.
              DATA(t1519) = |filename|.
              DATA t1520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1520.
              IF t1497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t1497->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1519 p1 = t1520 ).
              ENDIF.
              DATA(t1521) = |token|.
              DATA t1522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1522.
              IF t1497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t1497->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1521 p1 = t1522 ).
              ENDIF.
              t1495 = t1497.
            ELSE.
              DATA t1523 TYPE REF TO zcl_lnt_iobject_and_token.
              CLEAR t1523.
              t1495 = t1523.
            ENDIF.
            t1482->add_using( i_obj_1ed0 = t1489 i_using = t1495 ).
            DATA t1524 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t1525) = t1296.
            t1524 = t1525->zlnt_view_read_sr_9be58e2d4893( ).
            DATA t1526 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1526.
            DATA(t1527) = abap_true.
            IF t1527 = abap_true.
              DATA t1528 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t1529) = t1296.
              t1528 = t1529->zlnt_view_read_sr_9be58e2d4893( ).
              t1526 = t1528.
            ELSE.
              DATA t1530 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t1530.
              t1526 = t1530.
            ENDIF.
            t150 = t1526.
          ENDIF.
        ELSE.
          DATA t1531 TYPE REF TO zcl_lnt_current_scope.
          DATA(t1532) = me->input_2fd0.
          t1531 = t1532->scope.
          DATA t1533 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1533.
          DATA(t1534) = abap_true.
          IF t1534 = abap_true.
            DATA t1535 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t1536) = t1.
            t1535 = t1536->get_first_token( ).
            t1533 = t1535.
          ELSE.
            DATA t1537 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1537.
            t1533 = t1537.
          ENDIF.
          DATA(t1538) = t1213.
          DATA t1539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1539.
          DATA(t1540) = |Type|.
          CLEAR t1539.
          CREATE OBJECT t1539.
          t1539->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t1539->sval = t1540.
          DATA t1541 TYPE string.
          DATA(t1542) = me->input_2fd0.
          t1541 = t1542->filename.
          DATA t1543 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t1543.
          t1531->add_reference( i_usage = t1533 i_referencing = t1538 i_type_9913 = t1539 i_filename = t1541 i_extra = t1543 ).
        ENDIF.
        DATA(t1544) = VALUE abap_bool( ).
        DATA(t1545) = VALUE abap_bool( ).
        DATA t1546 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t1547) = t150.
        t1546 = t1547.
        DATA t1548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t1549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1549.
        t1548 = t1549.
        DATA(t1550) = VALUE abap_bool( ).
        DATA(t1551) = t1546.
        IF t1551 IS INITIAL.
          t1550 = abap_true.
        ENDIF.
        t1545 = t1550.
        t1544 = t1545.
        IF t1545 = abap_true.
          DATA(t1552) = VALUE abap_bool( ).
          DATA(t1553) = VALUE abap_bool( ).
          DATA t1554 TYPE REF TO zcl_lnt_ddic.
          DATA t1555 TYPE REF TO zcl_lnt_ddic.
          DATA t1556 TYPE REF TO zcl_lnt_current_scope.
          DATA t1557 TYPE REF TO zcl_lnt_current_scope.
          DATA(t1558) = me->input_2fd0.
          t1557 = t1558->scope.
          t1556 = t1557.
          DATA t1559 TYPE REF TO zcl_lnt_ddic.
          DATA t1560 TYPE REF TO zif_lnt_registry.
          DATA(t1561) = t1556.
          t1560 = t1561->reg.
          t1559 = NEW zcl_lnt_ddic( i_reg_f149 = t1560 ).
          t1555 = t1559.
          t1554 = t1555.
          DATA t1562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t1563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1564) = t140.
          DATA(t1565) = 0.
          t1563 = t1564->get( p0 = t1565 ).
          t1562 = t1563.
          DATA(t1566) = VALUE abap_bool( ).
          DATA(t1567) = VALUE abap_bool( ).
          DATA t1568 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1569) = t1562.
          t1568 = t1569.
          DATA t1570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t1571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1571.
          t1570 = t1571.
          DATA(t1572) = VALUE abap_bool( ).
          DATA(t1573) = t1568.
          IF t1573 IS INITIAL.
            t1572 = abap_true.
          ELSEIF t1573->has = abap_false.
            t1572 = abap_true.
          ENDIF.
          t1567 = t1572.
          IF t1567 = abap_true.
            DATA(t1574) = abap_true.
            t1566 = t1574.
          ELSE.
            DATA t1575 TYPE abap_bool.
            DATA t1576 TYPE REF TO zif_lnt_registry.
            DATA(t1577) = t1554.
            t1576 = t1577->reg.
            DATA t1578 TYPE string.
            DATA(t1579) = t1562.
            t1578 = t1579->value.
            t1575 = t1576->in_error_namespace( i_name = t1578 ).
            t1566 = t1575.
          ENDIF.
          t1553 = t1566.
          DATA(t1580) = abap_false.
          t1552 = xsdbool( t1553 = t1580 ).
          t1544 = t1552.
        ENDIF.
        IF t1544 = abap_true.
          DATA t1581 TYPE REF TO zcl_lnt_current_scope.
          DATA(t1582) = me->input_2fd0.
          t1581 = t1582->scope.
          DATA t1583 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1583.
          DATA(t1584) = abap_true.
          IF t1584 = abap_true.
            DATA t1585 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t1586) = t1.
            t1585 = t1586->get_first_token( ).
            t1583 = t1585.
          ELSE.
            DATA t1587 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1587.
            t1583 = t1587.
          ENDIF.
          DATA t1588 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t1588.
          DATA t1589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1589.
          DATA(t1590) = |Type (Void)|.
          CLEAR t1589.
          CREATE OBJECT t1589.
          t1589->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t1589->sval = t1590.
          DATA t1591 TYPE string.
          DATA(t1592) = me->input_2fd0.
          t1591 = t1592->filename.
          DATA t1593 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t1593.
          t1581->add_reference( i_usage = t1583 i_referencing = t1588 i_type_9913 = t1589 i_filename = t1591 i_extra = t1593 ).
          DATA t1594 TYPE REF TO zcl_lnt_void_type.
          DATA t1595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1596) = t140.
          DATA(t1597) = 0.
          t1595 = t1596->get( p0 = t1597 ).
          DATA t1598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1598.
          t1594 = zcl_lnt_void_type=>get_db65( i_voided = t1595 i_qualified_name = t1598 ).
          result = t1594.
          RETURN.
        ELSE.
          DATA t1599 TYPE abap_bool.
          DATA(t1600) = t150.
          t1599 = xsdbool( t1600 IS BOUND AND t1600 IS INSTANCE OF zcl_lnt_void_type ).
          IF t1599 = abap_true.
            DATA t1601 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1602) = me->input_2fd0.
            t1601 = t1602->scope.
            DATA t1603 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1603.
            DATA(t1604) = abap_true.
            IF t1604 = abap_true.
              DATA t1605 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t1606) = t1.
              t1605 = t1606->get_first_token( ).
              t1603 = t1605.
            ELSE.
              DATA t1607 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1607.
              t1603 = t1607.
            ENDIF.
            DATA t1608 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t1608.
            DATA t1609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1609.
            DATA(t1610) = |Type (Void)|.
            CLEAR t1609.
            CREATE OBJECT t1609.
            t1609->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t1609->sval = t1610.
            DATA t1611 TYPE string.
            DATA(t1612) = me->input_2fd0.
            t1611 = t1612->filename.
            DATA t1613 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t1613.
            t1601->add_reference( i_usage = t1603 i_referencing = t1608 i_type_9913 = t1609 i_filename = t1611 i_extra = t1613 ).
            DATA t1614 TYPE REF TO zcl_lnt_void_type.
            DATA(t1615) = t150.
            t1614 ?= t1615.
            result = t1614.
            RETURN.
          ELSE.
            DATA(t1616) = VALUE abap_bool( ).
            DATA t1617 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t1618) = t150.
            t1617 = t1618.
            DATA t1619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t1620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1620.
            t1619 = t1620.
            DATA(t1621) = VALUE abap_bool( ).
            DATA(t1622) = t1617.
            IF t1622 IS INITIAL.
              t1621 = abap_true.
            ENDIF.
            t1616 = t1621.
            IF t1616 = abap_true.
              DATA t1623 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t1623.
              DATA(t1624) = VALUE string( ).
              DATA(t1625) = |Unknown type |.
              DATA(t1626) = VALUE string( ).
              DATA(t1627) = t140.
              IF t1627->has( 1 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t1627->load( ).
              CLEAR t1626.
              READ TABLE t1627->items INDEX 1 INTO t1626.
              DATA(t1628) = strlen( t1625 ).
              t1624 = |{ t1625 }{ t1626 }|.
              DATA t1629 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1629.
              t1623 = NEW zcl_lnt_unknown_type( i_error = t1624 i_qualified_name = t1629 ).
              result = t1623.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1631) = t140.
    t1630 = t1631->shift( ).
    DO.
      DATA t1632 TYPE abap_bool.
      DATA t1633 TYPE i.
      DATA(t1634) = t140.
      t1634->load( ).
      t1633 = lines( t1634->items ).
      DATA(t1635) = 0.
      t1632 = xsdbool( t1633 > t1635 ).
      IF t1632 = abap_false.
        EXIT.
      ENDIF.
      DATA t1636 TYPE abap_bool.
      DATA t1637 TYPE abap_bool.
      DATA(t1638) = t150.
      t1637 = xsdbool( t1638 IS BOUND AND t1638 IS INSTANCE OF zcl_lnt_unknown_type ).
      t1636 = t1637.
      IF t1637 = abap_false.
        DATA t1639 TYPE abap_bool.
        DATA(t1640) = t150.
        t1639 = xsdbool( t1640 IS BOUND AND t1640 IS INSTANCE OF zcl_lnt_void_type ).
        t1636 = t1639.
      ENDIF.
      IF t1636 = abap_true.
        DATA t1641 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t1641.
        DATA(t1642) = abap_true.
        IF t1642 = abap_true.
          DATA t1643 TYPE REF TO zcl_lnt_abstract_type.
          DATA t1644 TYPE REF TO zif_lnt_union_adffe656.
          DATA t1645 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t1646) = t150.
          t1645 = t1646.
          t1644 ?= t1645.
          t1643 ?= t1644.
          t1641 = t1643.
        ELSE.
          DATA t1647 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1647.
          t1641 = t1647.
        ENDIF.
        result = t1641.
        RETURN.
      ELSE.
        DATA t1648 TYPE abap_bool.
        DATA t1649 TYPE abap_bool.
        DATA(t1650) = t150.
        t1649 = xsdbool( t1650 IS BOUND AND t1650 IS INSTANCE OF zcl_lnt_structure_type ).
        t1648 = xsdbool( t1649 = abap_false ).
        IF t1648 = abap_true.
          DATA t1651 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t1652) = |Not a structured type|.
          DATA t1653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1653.
          t1651 = NEW zcl_lnt_unknown_type( i_error = t1652 i_qualified_name = t1653 ).
          result = t1651.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t1654 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t1654.
      DATA t1655 TYPE REF TO zcl_lnt_structure_type.
      DATA t1656 TYPE REF TO zcl_lnt_structure_type.
      DATA(t1657) = t150.
      t1656 ?= t1657.
      t1655 = t1656.
      DATA(t1658) = VALUE string( ).
      DATA(t1659) = VALUE string( ).
      DATA(t1660) = t140.
      IF t1660->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t1660->load( ).
      CLEAR t1659.
      READ TABLE t1660->items INDEX 1 INTO t1659.
      t1658 = t1659.
      DATA t1661 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t1661.
      DATA t1662 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1663) = t1655.
      t1662 = t1663->indexed.
      DATA t1664 TYPE string.
      DATA(t1665) = t1658.
      DATA(t1666) = strlen( t1665 ).
      t1664 = t1665.
      IF t1664 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t1664 TO UPPER CASE.
      ELSE.
        t1664 = zlnt_runtime_uppe_91169605024d=>full( t1664 ).
      ENDIF.
      t1661 = t1662->get( p0 = t1664 ).
      t1654 = t1661.
      t150 = t1654.
      DATA(t1667) = VALUE abap_bool( ).
      DATA t1668 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t1669) = t150.
      t1668 = t1669.
      DATA t1670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1671.
      t1670 = t1671.
      DATA(t1672) = VALUE abap_bool( ).
      DATA(t1673) = t1668.
      IF t1673 IS INITIAL.
        t1672 = abap_true.
      ENDIF.
      t1667 = t1672.
      IF t1667 = abap_true.
        DATA t1674 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t1674.
        DATA(t1675) = VALUE string( ).
        DATA(t1676) = VALUE string( ).
        DATA(t1677) = |Field "|.
        DATA(t1678) = VALUE string( ).
        DATA(t1679) = t140.
        IF t1679->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t1679->load( ).
        CLEAR t1678.
        READ TABLE t1679->items INDEX 1 INTO t1678.
        DATA(t1680) = strlen( t1677 ).
        t1676 = |{ t1677 }{ t1678 }|.
        DATA(t1681) = |" not found in structure|.
        DATA(t1682) = strlen( t1676 ).
        t1675 = |{ t1676 }{ t1681 }|.
        DATA t1683 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1683.
        t1674 = NEW zcl_lnt_unknown_type( i_error = t1675 i_qualified_name = t1683 ).
        result = t1674.
        RETURN.
      ENDIF.
      DATA t1684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1685) = t140.
      t1684 = t1685->shift( ).
    ENDDO.
    DATA t1686 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t1686.
    DATA(t1687) = abap_true.
    IF t1687 = abap_true.
      DATA t1688 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t1689) = t150.
      t1688 = t1689.
      t1686 = t1688.
    ELSE.
      DATA t1690 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t1690.
      t1686 = t1690.
    ENDIF.
    result = t1686.

  ENDMETHOD.

  METHOD resolve_constant_value.
    DATA(t1) = i_expr.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA(t5) = t1.
    t4 = t5->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_simple_field_chain ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t6.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA(t10) = |resolveConstantValue|.
        DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t11->has = abap_true.
        t11->value = t10.
        t8 = t11.
      ELSE.
        DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t12.
        t8 = t12.
      ENDIF.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t8 ).
      t6 = NEW #( ).
      t6->payload = t7.
      CLEAR t6->source_value.
      IF t7 IS BOUND.
        DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t13.
        DATA t14 TYPE REF TO object.
        CLEAR t14.
        CLEAR t13.
        t14 = t7.
        TRY.
            t6->source_value ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t6->source_value IS NOT BOUND.
          TRY.
              t13 ?= t7.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t13 IS BOUND.
            t6->source_value = t13->source( ).
          ENDIF.
          IF t6->source_value IS NOT BOUND.
            CREATE OBJECT t6->source_value.
            t6->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t6->source_value->oval = t7.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t6.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_node.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t19.
    DATA(t20) = t1.
    t19 = t20.
    DATA t21 TYPE REF TO zif_lnt_node.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA t23 TYPE REF TO zif_lnt_node.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t24.
      DATA(t25) = t19.
      t24 = t25->children.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      t24->load( ).
      CLEAR t26.
      READ TABLE t24->items INDEX 1 INTO t26.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t23.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t26.
        DATA t28 TYPE REF TO object.
        CLEAR t28.
        t28 = t27->as_ref( ).
        t23 ?= t28.
      ELSE.
        t23 ?= t26.
      ENDIF.
      t21 = t23.
    ELSE.
      DATA t29 TYPE REF TO zif_lnt_node.
      CLEAR t29.
      t21 = t29.
    ENDIF.
    t18 = t21.
    t17 ?= t18.
    t16 = t17.
    t15 = t16.
    DATA t30 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t31.
    DATA(t32) = t15.
    t31 = t32->get_first_token( ).
    t30 = t31.
    DATA(t33) = VALUE string( ).
    DATA(t34) = VALUE string( ).
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t35.
    DATA(t36) = t30.
    t35 = t36.
    DATA(t37) = VALUE string( ).
    DATA(t38) = t35.
    t37 = t38->str.
    t34 = t37.
    t33 = t34.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO object.
    CLEAR t40.
    DATA(t41) = t15.
    t40 = t41->get_db65( ).
    t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_expres_field ).
    IF t39 = abap_true.
      DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t43.
      DATA t44 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t45.
      DATA(t46) = me->input_2fd0.
      t45 = t46->scope.
      t44 = t45.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA(t49) = abap_true.
      IF t49 = abap_true.
        DATA(t50) = t33.
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t50.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t48 = t52.
      ENDIF.
      t47 = t48.
      DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t53.
      DATA(t54) = VALUE abap_bool( ).
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA(t56) = t47.
      t55 = t56.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      t57 = t58.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = t55.
      IF t60 IS INITIAL.
        t59 = abap_true.
      ELSEIF t60->has = abap_false.
        t59 = abap_true.
      ENDIF.
      t54 = t59.
      IF t54 = abap_true.
        DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t61.
        t53 = t61.
      ELSE.
        DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t62.
        DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t64.
        DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t66.
        DATA(t67) = t44.
        t66 = t67->current.
        t65 = t66.
        DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t68.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = t65.
        IF t70 IS INITIAL.
          t69 = abap_true.
        ENDIF.
        IF t69 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t71.
          t68 = t71.
        ELSE.
          DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t72.
          DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t73.
          DATA(t74) = t65.
          t73 = t74.
          DATA(t75) = VALUE string( ).
          DATA(t76) = t47.
          t75 = t76->value.
          t72 = t73->find_variable( i_name = t75 ).
          t68 = t72.
        ENDIF.
        t64 = t68.
        t63 = t64.
        DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t77.
        DATA(t78) = VALUE abap_bool( ).
        DATA(t79) = t63.
        t78 = xsdbool( t79 IS BOUND ).
        IF t78 = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t80.
          DATA(t81) = abap_true.
          IF t81 = abap_true.
            DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t82.
            DATA(t83) = t63.
            t82 = t83.
            t80 = t82.
          ELSE.
            DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t84.
            t80 = t84.
          ENDIF.
          t77 = t80.
        ELSE.
          DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t85.
          DATA(t86) = t44.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA(t88) = abap_true.
          IF t88 = abap_true.
            DATA(t89) = VALUE string( ).
            DATA(t90) = t47.
            t89 = t90->value.
            DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t91->has = abap_true.
            t91->value = t89.
            t87 = t91.
          ELSE.
            DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t92.
            t87 = t92.
          ENDIF.
          t85 = t86->find_type_pool_constant( i_name = t87 ).
          t77 = t85.
        ENDIF.
        t62 = t77.
        t53 = t62.
      ENDIF.
      t43 = t53.
      t42 = t43.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t95.
      DATA(t96) = t42.
      t95 = t96.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      DATA(t98) = VALUE abap_bool( ).
      DATA(t99) = t95.
      IF t99 IS INITIAL.
        t98 = abap_true.
      ENDIF.
      IF t98 = abap_true.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        t97 = t100.
      ELSE.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t102.
        DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t103.
        DATA(t104) = t95.
        t103 = t104.
        t102 = t103.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        DATA(t106) = t102.
        t105 = t106->value.
        t101 = t105.
        t97 = t101.
      ENDIF.
      t94 = t97.
      t93 = t94.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      DATA(t109) = VALUE abap_bool( ).
      DATA(t110) = t93.
      IF t110 IS INITIAL.
        t109 = abap_true.
      ENDIF.
      IF t109 = abap_true.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        t108 = t111.
      ELSE.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        DATA(t113) = t93.
        t112 = t113.
        t108 = t112.
      ENDIF.
      t107 = t108.
      DATA(t114) = VALUE abap_bool( ).
      DATA(t115) = VALUE string( ).
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      DATA(t117) = t107.
      t116 = t117.
      IF t116 IS BOUND.
        t115 = t116->type_of( ).
        IF t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t116->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t115 = `function`.
        ENDIF.
      ELSE.
        t115 = `undefined`.
      ENDIF.
      DATA(t118) = |string|.
      t114 = xsdbool( t115 = t118 ).
      IF t114 = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t119.
        DATA(t120) = me->input_2fd0.
        t119 = t120->scope.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t121.
        DATA(t122) = abap_true.
        IF t122 = abap_true.
          DATA(t123) = t30.
          t121 = t123.
        ELSE.
          DATA t124 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t124.
          t121 = t124.
        ENDIF.
        DATA(t125) = t42.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        DATA(t127) = |Read From|.
        CLEAR t126.
        CREATE OBJECT t126.
        t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t126->sval = t127.
        DATA(t128) = VALUE string( ).
        DATA(t129) = me->input_2fd0.
        t128 = t129->filename.
        DATA t130 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t130.
        t119->add_reference( i_usage = t121 i_referencing = t125 i_type_9913 = t126 i_filename = t128 i_extra = t130 ).
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t131.
        DATA(t132) = abap_true.
        IF t132 = abap_true.
          DATA(t133) = VALUE string( ).
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          DATA(t135) = t107.
          t134 = t135.
          t133 = t134->as_string( ).
          DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t136->has = abap_true.
          t136->value = t133.
          t131 = t136.
        ELSE.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          t131 = t137.
        ENDIF.
        result = t131.
        RETURN.
      ELSE.
        DATA(t138) = VALUE abap_bool( ).
        DATA t139 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t139.
        DATA t140 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t140.
        DATA(t141) = t42.
        t140 = t141.
        DATA t142 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t142.
        DATA(t143) = VALUE abap_bool( ).
        DATA(t144) = t140.
        IF t144 IS INITIAL.
          t143 = abap_true.
        ENDIF.
        IF t143 = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t145.
          t142 = t145.
        ELSE.
          DATA t146 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t146.
          DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t147.
          DATA t148 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t148.
          DATA(t149) = t140.
          t148 = t149.
          t147 = t148.
          DATA t150 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t150.
          DATA(t151) = t147.
          t150 = t151->type_cba0.
          t146 = t150.
          t142 = t146.
        ENDIF.
        t139 = t142.
        t138 = xsdbool( t139 IS BOUND AND t139 IS INSTANCE OF zcl_lnt_structure_type ).
        IF t138 = abap_true.
          DATA t152 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t152.
          DATA(t153) = me->input_2fd0.
          t152 = t153->scope.
          DATA t154 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t154.
          DATA(t155) = abap_true.
          IF t155 = abap_true.
            DATA(t156) = t30.
            t154 = t156.
          ELSE.
            DATA t157 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t157.
            t154 = t157.
          ENDIF.
          DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t158.
          DATA(t159) = t42.
          t158 = t159.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          DATA(t161) = |Read From|.
          CLEAR t160.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t160->sval = t161.
          DATA(t162) = VALUE string( ).
          DATA(t163) = me->input_2fd0.
          t162 = t163->filename.
          DATA t164 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t164.
          t152->add_reference( i_usage = t154 i_referencing = t158 i_type_9913 = t160 i_filename = t162 i_extra = t164 ).
        ENDIF.
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t165.
      result = t165.
      RETURN.
    ELSE.
      DATA(t166) = VALUE abap_bool( ).
      DATA(t167) = VALUE abap_bool( ).
      DATA(t168) = VALUE abap_bool( ).
      DATA t169 TYPE REF TO object.
      CLEAR t169.
      DATA(t170) = t15.
      t169 = t170->get_db65( ).
      t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_class_name ).
      t167 = t168.
      IF t168 = abap_true.
        DATA(t171) = VALUE abap_bool( ).
        DATA(t172) = VALUE string( ).
        DATA(t173) = t33.
        DATA(t174) = strlen( t173 ).
        t172 = t173.
        TRANSLATE t172 TO LOWER CASE.
        DATA(t175) = VALUE string( ).
        DATA(t176) = VALUE string( ).
        DATA t177 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t177.
        DATA(t178) = me->input_2fd0.
        t177 = t178->scope.
        t176 = t177->get_name( ).
        DATA(t179) = strlen( t176 ).
        t175 = t176.
        TRANSLATE t175 TO LOWER CASE.
        t171 = xsdbool( t172 = t175 ).
        t167 = t171.
      ENDIF.
      t166 = t167.
      IF t167 = abap_true.
        DATA(t180) = VALUE abap_bool( ).
        DATA(t181) = VALUE abap_bool( ).
        DATA(t182) = VALUE string( ).
        DATA t183 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t183.
        DATA(t184) = me->input_2fd0.
        t183 = t184->scope.
        t182 = t183->get_type( ).
        DATA(t185) = |interface|.
        t181 = xsdbool( t182 = t185 ).
        t180 = t181.
        IF t181 = abap_false.
          DATA(t186) = VALUE abap_bool( ).
          DATA(t187) = VALUE string( ).
          DATA t188 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t188.
          DATA(t189) = me->input_2fd0.
          t188 = t189->scope.
          t187 = t188->get_type( ).
          DATA(t190) = |class_definition|.
          t186 = xsdbool( t187 = t190 ).
          t180 = t186.
        ENDIF.
        t166 = t180.
      ENDIF.
      IF t166 = abap_true.
        DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t191.
        DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t192.
        DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t193.
        DATA t194 TYPE REF TO zcl_lnt_abstract_node.
        CLEAR t194.
        DATA(t195) = t1.
        t194 = t195.
        DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t196.
        DATA(t197) = t194.
        t196 = t197->children.
        t193 = t196.
        t192 ?= t193.
        t191 = t192.
        DATA t198 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t198.
        DATA t199 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t199.
        DATA t200 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t200.
        DATA t201 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t201.
        DATA(t202) = t191.
        DATA(t203) = 2.
        DATA t204 TYPE REF TO object.
        CLEAR t204.
        t204 = t202->get( p0 = t203 ).
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t205.
        CLEAR t201.
        IF t204 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t205 ?= t204.
          DATA t206 TYPE REF TO object.
          CLEAR t206.
          t206 = t205->as_ref( ).
          t201 ?= t206.
        ELSE.
          t201 ?= t204.
        ENDIF.
        t200 = t201.
        DATA t207 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t207.
        DATA(t208) = VALUE abap_bool( ).
        DATA(t209) = t200.
        IF t209 IS INITIAL.
          t208 = abap_true.
        ENDIF.
        IF t208 = abap_true.
          DATA t210 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t210.
          t207 = t210.
        ELSE.
          DATA t211 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t211.
          DATA t212 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t212.
          DATA(t213) = t200.
          t212 = t213.
          t211 = t212->get_first_token( ).
          t207 = t211.
        ENDIF.
        t199 = t207.
        t198 = t199.
        DATA t214 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t214.
        DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t215.
        DATA t216 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t216.
        DATA t217 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t217.
        DATA(t218) = me->input_2fd0.
        t217 = t218->scope.
        t216 = t217.
        DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t219.
        DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t220.
        DATA(t221) = abap_true.
        IF t221 = abap_true.
          DATA(t222) = VALUE string( ).
          DATA t223 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t223.
          DATA t224 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t224.
          DATA(t225) = t198.
          t224 = t225.
          t223 = t224.
          DATA(t226) = VALUE string( ).
          DATA(t227) = t223.
          t226 = t227->str.
          t222 = t226.
          DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t228->has = abap_true.
          t228->value = t222.
          t220 = t228.
        ELSE.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
          t220 = t229.
        ENDIF.
        t219 = t220.
        DATA t230 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t230.
        DATA(t231) = VALUE abap_bool( ).
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t232.
        DATA(t233) = t219.
        t232 = t233.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t235.
        t234 = t235.
        DATA(t236) = VALUE abap_bool( ).
        DATA(t237) = t232.
        IF t237 IS INITIAL.
          t236 = abap_true.
        ELSEIF t237->has = abap_false.
          t236 = abap_true.
        ENDIF.
        t231 = t236.
        IF t231 = abap_true.
          DATA t238 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t238.
          t230 = t238.
        ELSE.
          DATA t239 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t239.
          DATA t240 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t240.
          DATA t241 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t241.
          DATA t242 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t242.
          DATA t243 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t243.
          DATA(t244) = t216.
          t243 = t244->current.
          t242 = t243.
          DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t245.
          DATA(t246) = VALUE abap_bool( ).
          DATA(t247) = t242.
          IF t247 IS INITIAL.
            t246 = abap_true.
          ENDIF.
          IF t246 = abap_true.
            DATA t248 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t248.
            t245 = t248.
          ELSE.
            DATA t249 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t249.
            DATA t250 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t250.
            DATA(t251) = t242.
            t250 = t251.
            DATA(t252) = VALUE string( ).
            DATA(t253) = t219.
            t252 = t253->value.
            t249 = t250->find_variable( i_name = t252 ).
            t245 = t249.
          ENDIF.
          t241 = t245.
          t240 = t241.
          DATA t254 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t254.
          DATA(t255) = VALUE abap_bool( ).
          DATA(t256) = t240.
          t255 = xsdbool( t256 IS BOUND ).
          IF t255 = abap_true.
            DATA t257 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t257.
            DATA(t258) = abap_true.
            IF t258 = abap_true.
              DATA t259 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t259.
              DATA(t260) = t240.
              t259 = t260.
              t257 = t259.
            ELSE.
              DATA t261 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t261.
              t257 = t261.
            ENDIF.
            t254 = t257.
          ELSE.
            DATA t262 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t262.
            DATA(t263) = t216.
            DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t264.
            DATA(t265) = abap_true.
            IF t265 = abap_true.
              DATA(t266) = VALUE string( ).
              DATA(t267) = t219.
              t266 = t267->value.
              DATA(t268) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t268->has = abap_true.
              t268->value = t266.
              t264 = t268.
            ELSE.
              DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t269.
              t264 = t269.
            ENDIF.
            t262 = t263->find_type_pool_constant( i_name = t264 ).
            t254 = t262.
          ENDIF.
          t239 = t254.
          t230 = t239.
        ENDIF.
        t215 = t230.
        t214 = t215.
        DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t270.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        DATA t272 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t272.
        DATA(t273) = t214.
        t272 = t273.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t274.
        DATA(t275) = VALUE abap_bool( ).
        DATA(t276) = t272.
        IF t276 IS INITIAL.
          t275 = abap_true.
        ENDIF.
        IF t275 = abap_true.
          DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t277.
          t274 = t277.
        ELSE.
          DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t278.
          DATA t279 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t279.
          DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t280.
          DATA(t281) = t272.
          t280 = t281.
          t279 = t280.
          DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t282.
          DATA(t283) = t279.
          t282 = t283->value.
          t278 = t282.
          t274 = t278.
        ENDIF.
        t271 = t274.
        t270 = t271.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t285.
        DATA(t286) = VALUE abap_bool( ).
        DATA(t287) = t270.
        IF t287 IS INITIAL.
          t286 = abap_true.
        ENDIF.
        IF t286 = abap_true.
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t288.
          t285 = t288.
        ELSE.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          DATA(t290) = t270.
          t289 = t290.
          t285 = t289.
        ENDIF.
        t284 = t285.
        DATA(t291) = VALUE abap_bool( ).
        DATA(t292) = VALUE string( ).
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t293.
        DATA(t294) = t284.
        t293 = t294.
        IF t293 IS BOUND.
          t292 = t293->type_of( ).
          IF t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t293->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t292 = `function`.
          ENDIF.
        ELSE.
          t292 = `undefined`.
        ENDIF.
        DATA(t295) = |string|.
        t291 = xsdbool( t292 = t295 ).
        IF t291 = abap_true.
          DATA t296 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t296.
          DATA(t297) = me->input_2fd0.
          t296 = t297->scope.
          DATA t298 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t298.
          DATA(t299) = abap_true.
          IF t299 = abap_true.
            DATA(t300) = t30.
            t298 = t300.
          ELSE.
            DATA t301 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t301.
            t298 = t301.
          ENDIF.
          DATA(t302) = t214.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          DATA(t304) = |Read From|.
          CLEAR t303.
          CREATE OBJECT t303.
          t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t303->sval = t304.
          DATA(t305) = VALUE string( ).
          DATA(t306) = me->input_2fd0.
          t305 = t306->filename.
          DATA t307 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t307.
          t296->add_reference( i_usage = t298 i_referencing = t302 i_type_9913 = t303 i_filename = t305 i_extra = t307 ).
          DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t308.
          DATA(t309) = abap_true.
          IF t309 = abap_true.
            DATA(t310) = VALUE string( ).
            DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t311.
            DATA(t312) = t284.
            t311 = t312.
            t310 = t311->as_string( ).
            DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t313->has = abap_true.
            t313->value = t310.
            t308 = t313.
          ELSE.
            DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t314.
            t308 = t314.
          ENDIF.
          result = t308.
          RETURN.
        ENDIF.
        DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t315.
        result = t315.
        RETURN.
      ELSE.
        DATA(t316) = VALUE abap_bool( ).
        DATA t317 TYPE REF TO object.
        CLEAR t317.
        DATA(t318) = t15.
        t317 = t318->get_db65( ).
        t316 = xsdbool( t317 IS BOUND AND t317 IS INSTANCE OF zcl_lnt_class_name ).
        IF t316 = abap_true.
          DATA t319 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t319.
          DATA t320 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t320.
          DATA t321 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t321.
          DATA t322 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t322.
          DATA(t323) = me->input_2fd0.
          t322 = t323->scope.
          t321 = t322.
          DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t324.
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t325.
          DATA(t326) = abap_true.
          IF t326 = abap_true.
            DATA(t327) = t33.
            DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t328->has = abap_true.
            t328->value = t327.
            t325 = t328.
          ELSE.
            DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t329.
            t325 = t329.
          ENDIF.
          t324 = t325.
          DATA t330 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t330.
          DATA(t331) = VALUE abap_bool( ).
          DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t332.
          DATA(t333) = t324.
          t332 = t333.
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t334.
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
            DATA t340 TYPE REF TO zif_lnt_class_definition.
            CLEAR t340.
            DATA t341 TYPE REF TO zif_lnt_class_definition.
            CLEAR t341.
            DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t342.
            DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t343.
            DATA(t344) = abap_true.
            IF t344 = abap_true.
              DATA(t345) = VALUE string( ).
              DATA(t346) = t324.
              t345 = t346->value.
              DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t347->has = abap_true.
              t347->value = t345.
              t343 = t347.
            ELSE.
              DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t348.
              t343 = t348.
            ENDIF.
            t342 = t343.
            DATA t349 TYPE REF TO zif_lnt_class_definition.
            CLEAR t349.
            DATA(t350) = VALUE abap_bool( ).
            DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t351.
            DATA(t352) = t342.
            t351 = t352.
            DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t353.
            DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t354.
            t353 = t354.
            DATA(t355) = VALUE abap_bool( ).
            DATA(t356) = t351.
            IF t356 IS INITIAL.
              t355 = abap_true.
            ELSEIF t356->has = abap_false.
              t355 = abap_true.
            ENDIF.
            t350 = t355.
            IF t350 = abap_true.
              DATA t357 TYPE REF TO zif_lnt_class_definition.
              CLEAR t357.
              t349 = t357.
            ELSE.
              DATA t358 TYPE REF TO zif_lnt_class_definition.
              CLEAR t358.
              DATA t359 TYPE REF TO zif_lnt_class_definition.
              CLEAR t359.
              DATA t360 TYPE REF TO zif_lnt_class_definition.
              CLEAR t360.
              DATA t361 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t361.
              DATA t362 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t362.
              DATA(t363) = t321.
              t362 = t363->current.
              t361 = t362.
              DATA t364 TYPE REF TO zif_lnt_class_definition.
              CLEAR t364.
              DATA(t365) = VALUE abap_bool( ).
              DATA(t366) = t361.
              IF t366 IS INITIAL.
                t365 = abap_true.
              ENDIF.
              IF t365 = abap_true.
                DATA t367 TYPE REF TO zif_lnt_class_definition.
                CLEAR t367.
                t364 = t367.
              ELSE.
                DATA t368 TYPE REF TO zif_lnt_class_definition.
                CLEAR t368.
                DATA t369 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t369.
                DATA(t370) = t361.
                t369 = t370.
                DATA(t371) = VALUE string( ).
                DATA(t372) = t342.
                t371 = t372->value.
                t368 = t369->find_class_definition( i_name = t371 ).
                t364 = t368.
              ENDIF.
              t360 = t364.
              t359 = t360.
              DATA t373 TYPE REF TO zif_lnt_class_definition.
              CLEAR t373.
              DATA(t374) = VALUE abap_bool( ).
              DATA(t375) = t359.
              t374 = xsdbool( t375 IS BOUND ).
              IF t374 = abap_true.
                DATA t376 TYPE REF TO zif_lnt_class_definition.
                CLEAR t376.
                DATA(t377) = abap_true.
                IF t377 = abap_true.
                  DATA t378 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t378.
                  DATA(t379) = t359.
                  t378 = t379.
                  t376 = t378.
                ELSE.
                  DATA t380 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t380.
                  t376 = t380.
                ENDIF.
                t373 = t376.
              ELSE.
                DATA t381 TYPE REF TO zif_lnt_class_definition.
                CLEAR t381.
                DATA t382 TYPE REF TO zcl_lnt_class.
                CLEAR t382.
                DATA t383 TYPE REF TO zcl_lnt_class.
                CLEAR t383.
                DATA t384 TYPE REF TO zif_lnt_object.
                CLEAR t384.
                DATA t385 TYPE REF TO zif_lnt_registry.
                CLEAR t385.
                DATA(t386) = t321.
                t385 = t386->reg.
                DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t387.
                DATA(t388) = abap_true.
                IF t388 = abap_true.
                  DATA(t389) = |CLAS|.
                  DATA(t390) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t390->has = abap_true.
                  t390->value = t389.
                  t387 = t390.
                ELSE.
                  DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t391.
                  t387 = t391.
                ENDIF.
                DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t392.
                DATA(t393) = abap_true.
                IF t393 = abap_true.
                  DATA(t394) = VALUE string( ).
                  DATA(t395) = t342.
                  t394 = t395->value.
                  DATA(t396) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t396->has = abap_true.
                  t396->value = t394.
                  t392 = t396.
                ELSE.
                  DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t397.
                  t392 = t397.
                ENDIF.
                t384 = t385->get_object( i_type_9913 = t387 i_name = t392 ).
                DATA t398 TYPE REF TO object.
                CLEAR t398.
                t398 = t384.
                t383 ?= t398.
                t382 = t383.
                DATA t399 TYPE REF TO zif_lnt_class_definition.
                CLEAR t399.
                DATA(t400) = VALUE abap_bool( ).
                DATA(t401) = t382.
                t400 = xsdbool( t401 IS BOUND ).
                IF t400 = abap_true.
                  DATA t402 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t402.
                  DATA t403 TYPE REF TO zcl_lnt_class.
                  CLEAR t403.
                  DATA(t404) = t382.
                  t403 = t404.
                  t402 = t403->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t399 = t402.
                ELSE.
                  DATA t405 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t405.
                  t399 = t405.
                ENDIF.
                t381 = t399.
                t373 = t381.
              ENDIF.
              t358 = t373.
              t349 = t358.
            ENDIF.
            t341 = t349.
            t340 = t341.
            DATA t406 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t406.
            DATA(t407) = VALUE abap_bool( ).
            DATA(t408) = t340.
            t407 = xsdbool( t408 IS BOUND ).
            IF t407 = abap_true.
              DATA t409 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t409.
              DATA t410 TYPE REF TO zif_lnt_class_definition.
              CLEAR t410.
              DATA(t411) = t340.
              t410 = t411.
              t409 ?= t410.
              t406 = t409.
            ELSE.
              DATA t412 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t412.
              DATA t413 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t413.
              DATA t414 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t414.
              DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t415.
              DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t416.
              DATA(t417) = abap_true.
              IF t417 = abap_true.
                DATA(t418) = VALUE string( ).
                DATA(t419) = t324.
                t418 = t419->value.
                DATA(t420) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t420->has = abap_true.
                t420->value = t418.
                t416 = t420.
              ELSE.
                DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t421.
                t416 = t421.
              ENDIF.
              t415 = t416.
              DATA t422 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t422.
              DATA(t423) = VALUE abap_bool( ).
              DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t424.
              DATA(t425) = t415.
              t424 = t425.
              DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t426.
              DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t427.
              t426 = t427.
              DATA(t428) = VALUE abap_bool( ).
              DATA(t429) = t424.
              IF t429 IS INITIAL.
                t428 = abap_true.
              ELSEIF t429->has = abap_false.
                t428 = abap_true.
              ENDIF.
              t423 = t428.
              IF t423 = abap_true.
                DATA t430 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t430.
                t422 = t430.
              ELSE.
                DATA t431 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t431.
                DATA t432 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t432.
                DATA t433 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t433.
                DATA t434 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t434.
                DATA t435 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t435.
                DATA(t436) = t321.
                t435 = t436->current.
                t434 = t435.
                DATA t437 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t437.
                DATA(t438) = VALUE abap_bool( ).
                DATA(t439) = t434.
                IF t439 IS INITIAL.
                  t438 = abap_true.
                ENDIF.
                IF t438 = abap_true.
                  DATA t440 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t440.
                  t437 = t440.
                ELSE.
                  DATA t441 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t441.
                  DATA t442 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  CLEAR t442.
                  DATA(t443) = t434.
                  t442 = t443.
                  DATA(t444) = VALUE string( ).
                  DATA(t445) = t415.
                  t444 = t445->value.
                  t441 = t442->find_interface_definition( i_name = t444 ).
                  t437 = t441.
                ENDIF.
                t433 = t437.
                t432 = t433.
                DATA t446 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t446.
                DATA(t447) = VALUE abap_bool( ).
                DATA(t448) = t432.
                t447 = xsdbool( t448 IS BOUND ).
                IF t447 = abap_true.
                  DATA t449 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t449.
                  DATA(t450) = abap_true.
                  IF t450 = abap_true.
                    DATA t451 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t451.
                    DATA(t452) = t432.
                    t451 = t452.
                    t449 = t451.
                  ELSE.
                    DATA t453 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t453.
                    t449 = t453.
                  ENDIF.
                  t446 = t449.
                ELSE.
                  DATA t454 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t454.
                  DATA t455 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t455.
                  DATA t456 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t456.
                  DATA t457 TYPE REF TO zif_lnt_object.
                  CLEAR t457.
                  DATA t458 TYPE REF TO zif_lnt_registry.
                  CLEAR t458.
                  DATA(t459) = t321.
                  t458 = t459->reg.
                  DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t460.
                  DATA(t461) = abap_true.
                  IF t461 = abap_true.
                    DATA(t462) = |INTF|.
                    DATA(t463) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t463->has = abap_true.
                    t463->value = t462.
                    t460 = t463.
                  ELSE.
                    DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t464.
                    t460 = t464.
                  ENDIF.
                  DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t465.
                  DATA(t466) = abap_true.
                  IF t466 = abap_true.
                    DATA(t467) = VALUE string( ).
                    DATA(t468) = t415.
                    t467 = t468->value.
                    DATA(t469) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t469->has = abap_true.
                    t469->value = t467.
                    t465 = t469.
                  ELSE.
                    DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t470.
                    t465 = t470.
                  ENDIF.
                  t457 = t458->get_object( i_type_9913 = t460 i_name = t465 ).
                  DATA t471 TYPE REF TO object.
                  CLEAR t471.
                  t471 = t457.
                  t456 ?= t471.
                  t455 = t456.
                  DATA t472 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t472.
                  DATA(t473) = VALUE abap_bool( ).
                  DATA(t474) = t455.
                  t473 = xsdbool( t474 IS BOUND ).
                  IF t473 = abap_true.
                    DATA t475 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t475.
                    DATA t476 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t476.
                    DATA t477 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t477.
                    DATA(t478) = t455.
                    t477 = t478.
                    t476 = t477.
                    DATA t479 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t479.
                    DATA(t480) = t476.
                    t479 = t480->def.
                    t475 = t479.
                    t472 = t475.
                  ELSE.
                    DATA t481 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t481.
                    t472 = t481.
                  ENDIF.
                  t454 = t472.
                  t446 = t454.
                ENDIF.
                t431 = t446.
                t422 = t431.
              ENDIF.
              t414 = t422.
              t413 = t414.
              DATA t482 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t482.
              DATA(t483) = VALUE abap_bool( ).
              DATA(t484) = t413.
              t483 = xsdbool( t484 IS BOUND ).
              IF t483 = abap_true.
                DATA t485 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t485.
                DATA(t486) = abap_true.
                IF t486 = abap_true.
                  DATA t487 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t487.
                  DATA(t488) = t413.
                  t487 = t488.
                  t485 = t487.
                ELSE.
                  DATA t489 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t489.
                  t485 = t489.
                ENDIF.
                t482 = t485.
              ELSE.
                DATA t490 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t490.
                t482 = t490.
              ENDIF.
              t412 = t482.
              t406 = t412.
            ENDIF.
            t339 = t406.
            t330 = t339.
          ENDIF.
          t320 = t330.
          t319 = t320.
          DATA(t491) = VALUE abap_bool( ).
          DATA t492 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t492.
          DATA(t493) = t319.
          t492 = t493.
          DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t494.
          DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t495.
          t494 = t495.
          DATA(t496) = VALUE abap_bool( ).
          DATA(t497) = t492.
          IF t497 IS INITIAL.
            t496 = abap_true.
          ENDIF.
          t491 = t496.
          IF t491 = abap_true.
            DATA(t498) = VALUE abap_bool( ).
            DATA t499 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t499.
            DATA t500 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t500.
            DATA t501 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t501.
            DATA(t502) = me->input_2fd0.
            t501 = t502->scope.
            DATA t503 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t503.
            DATA(t504) = abap_true.
            IF t504 = abap_true.
              DATA(t505) = t33.
              DATA(t506) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t506->has = abap_true.
              t506->value = t505.
              t503 = t506.
            ELSE.
              DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t507.
              t503 = t507.
            ENDIF.
            t500 = t501->exists_object( i_name = t503 ).
            t499 = t500.
            DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t508.
            DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t509.
            t508 = t509.
            DATA(t510) = VALUE abap_bool( ).
            DATA(t511) = VALUE abap_bool( ).
            DATA(t512) = t499.
            IF t512 IS INITIAL.
              t511 = abap_true.
            ENDIF.
            t510 = xsdbool( t511 = abap_false ).
            t498 = t510.
            IF t498 = abap_true.
              DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t513.
              result = t513.
              RETURN.
            ELSE.
              DATA(t514) = VALUE abap_bool( ).
              DATA(t515) = VALUE abap_bool( ).
              DATA t516 TYPE REF TO zcl_lnt_ddic.
              CLEAR t516.
              DATA t517 TYPE REF TO zcl_lnt_ddic.
              CLEAR t517.
              DATA t518 TYPE REF TO zcl_lnt_current_scope.
              CLEAR t518.
              DATA t519 TYPE REF TO zcl_lnt_current_scope.
              CLEAR t519.
              DATA(t520) = me->input_2fd0.
              t519 = t520->scope.
              t518 = t519.
              DATA t521 TYPE REF TO zcl_lnt_ddic.
              CLEAR t521.
              DATA t522 TYPE REF TO zif_lnt_registry.
              CLEAR t522.
              DATA(t523) = t518.
              t522 = t523->reg.
              t521 = NEW zcl_lnt_ddic( i_reg_f149 = t522 ).
              t517 = t521.
              t516 = t517.
              DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t524.
              DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t525.
              DATA(t526) = abap_true.
              IF t526 = abap_true.
                DATA(t527) = t33.
                DATA(t528) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t528->has = abap_true.
                t528->value = t527.
                t525 = t528.
              ELSE.
                DATA t529 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t529.
                t525 = t529.
              ENDIF.
              t524 = t525.
              DATA(t530) = VALUE abap_bool( ).
              DATA(t531) = VALUE abap_bool( ).
              DATA t532 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t532.
              DATA(t533) = t524.
              t532 = t533.
              DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t534.
              DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t535.
              t534 = t535.
              DATA(t536) = VALUE abap_bool( ).
              DATA(t537) = t532.
              IF t537 IS INITIAL.
                t536 = abap_true.
              ELSEIF t537->has = abap_false.
                t536 = abap_true.
              ENDIF.
              t531 = t536.
              IF t531 = abap_true.
                DATA(t538) = abap_true.
                t530 = t538.
              ELSE.
                DATA(t539) = VALUE abap_bool( ).
                DATA t540 TYPE REF TO zif_lnt_registry.
                CLEAR t540.
                DATA(t541) = t516.
                t540 = t541->reg.
                DATA(t542) = VALUE string( ).
                DATA(t543) = t524.
                t542 = t543->value.
                t539 = t540->in_error_namespace( i_name = t542 ).
                t530 = t539.
              ENDIF.
              t515 = t530.
              DATA(t544) = abap_true.
              t514 = xsdbool( t515 = t544 ).
              IF t514 = abap_true.
                DATA t545 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                CLEAR t545.
                DATA t546 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                CLEAR t546.
                DATA t547 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t547.
                DATA(t548) = abap_true.
                IF t548 = abap_true.
                  DATA(t549) = VALUE string( ).
                  DATA(t550) = |resolveConstantValue, not found: |.
                  DATA(t551) = t33.
                  DATA(t552) = strlen( t550 ).
                  t549 = |{ t550 }{ t551 }|.
                  DATA(t553) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t553->has = abap_true.
                  t553->value = t549.
                  t547 = t553.
                ELSE.
                  DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t554.
                  t547 = t554.
                ENDIF.
                t546 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t547 ).
                t545 = NEW #( ).
                t545->payload = t546.
                CLEAR t545->source_value.
                IF t546 IS BOUND.
                  DATA t555 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t555.
                  DATA t556 TYPE REF TO object.
                  CLEAR t556.
                  CLEAR t555.
                  t556 = t546.
                  TRY.
                      t545->source_value ?= t556.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t545->source_value IS NOT BOUND.
                    TRY.
                        t555 ?= t546.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t555 IS BOUND.
                      t545->source_value = t555->source( ).
                    ENDIF.
                    IF t545->source_value IS NOT BOUND.
                      CREATE OBJECT t545->source_value.
                      t545->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t545->source_value->oval = t546.
                    ENDIF.
                  ENDIF.
                ENDIF.
                RAISE EXCEPTION t545.
              ELSE.
                DATA t557 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t557.
                DATA(t558) = me->input_2fd0.
                t557 = t558->scope.
                DATA t559 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t559.
                DATA(t560) = abap_true.
                IF t560 = abap_true.
                  DATA t561 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t561.
                  DATA(t562) = t15.
                  t561 = t562->get_first_token( ).
                  t559 = t561.
                ELSE.
                  DATA t563 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t563.
                  t559 = t563.
                ENDIF.
                DATA t564 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t564.
                DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t565.
                DATA(t566) = |Object (Void)|.
                CLEAR t565.
                CREATE OBJECT t565.
                t565->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t565->sval = t566.
                DATA(t567) = VALUE string( ).
                DATA(t568) = me->input_2fd0.
                t567 = t568->filename.
                DATA t569 TYPE REF TO zcl_lnt_ireference_extras.
                CLEAR t569.
                DATA(t570) = abap_true.
                IF t570 = abap_true.
                  DATA t571 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t571.
                  DATA t572 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t572.
                  DATA t573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t573.
                  DATA(t574) = abap_true.
                  IF t574 = abap_true.
                    DATA(t575) = VALUE string( ).
                    DATA(t576) = t33.
                    DATA(t577) = strlen( t576 ).
                    t575 = t576.
                    IF t575 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                      TRANSLATE t575 TO UPPER CASE.
                    ELSE.
                      t575 = zlnt_runtime_uppe_91169605024d=>full( t575 ).
                    ENDIF.
                    DATA(t578) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t578->has = abap_true.
                    t578->value = t575.
                    t573 = t578.
                  ELSE.
                    DATA t579 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t579.
                    t573 = t579.
                  ENDIF.
                  t572 = t573.
                  DATA t580 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t580.
                  DATA t581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t581.
                  t580 = t581.
                  DATA t582 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t582.
                  DATA t583 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t583.
                  t582 = t583.
                  t571 = NEW zcl_lnt_ireference_extras( i_oo_name = t572 i_oo_type = t580 i_found_qualified = t582 ).
                  CREATE OBJECT t571->zlnt_view_ownkeys_b0e8086400eb.
                  t571->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t584.
                  IF t571->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t571->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t584 ).
                  ENDIF.
                  CREATE OBJECT t571->zlnt_json_ownkeys_70e5fd461788.
                  t571->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t585) = |ooName|.
                  DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t586.
                  IF t571->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t571->zlnt_json_ownkeys_70e5fd461788->put( p0 = t585 p1 = t586 ).
                  ENDIF.
                  t569 = t571.
                ELSE.
                  DATA t587 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t587.
                  t569 = t587.
                ENDIF.
                t557->add_reference( i_usage = t559 i_referencing = t564 i_type_9913 = t565 i_filename = t567 i_extra = t569 ).
                DATA t588 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t588.
                result = t588.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
          DATA t589 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t589.
          DATA t590 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t590.
          DATA t591 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t591.
          DATA t592 TYPE REF TO zcl_lnt_abstract_node.
          CLEAR t592.
          DATA(t593) = t1.
          t592 = t593.
          DATA t594 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t594.
          DATA(t595) = t592.
          t594 = t595->children.
          t591 = t594.
          t590 ?= t591.
          t589 = t590.
          DATA t596 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t596.
          DATA t597 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t597.
          DATA t598 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t598.
          DATA t599 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t599.
          DATA(t600) = t589.
          DATA(t601) = 2.
          DATA t602 TYPE REF TO object.
          CLEAR t602.
          t602 = t600->get( p0 = t601 ).
          DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t603.
          CLEAR t599.
          IF t602 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t603 ?= t602.
            DATA t604 TYPE REF TO object.
            CLEAR t604.
            t604 = t603->as_ref( ).
            t599 ?= t604.
          ELSE.
            t599 ?= t602.
          ENDIF.
          t598 = t599.
          DATA t605 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t605.
          DATA(t606) = VALUE abap_bool( ).
          DATA(t607) = t598.
          IF t607 IS INITIAL.
            t606 = abap_true.
          ENDIF.
          IF t606 = abap_true.
            DATA t608 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t608.
            t605 = t608.
          ELSE.
            DATA t609 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t609.
            DATA t610 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t610.
            DATA(t611) = t598.
            t610 = t611.
            t609 = t610->get_first_token( ).
            t605 = t609.
          ENDIF.
          t597 = t605.
          t596 = t597.
          DATA(t612) = VALUE string( ).
          DATA(t613) = VALUE string( ).
          DATA t614 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t614.
          DATA t615 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t615.
          DATA(t616) = t596.
          t615 = t616.
          t614 = t615.
          DATA(t617) = VALUE string( ).
          DATA(t618) = t614.
          t617 = t618->str.
          t613 = t617.
          t612 = t613.
          DATA t619 TYPE REF TO zcl_lnt_class_constant.
          CLEAR t619.
          DATA t620 TYPE REF TO zcl_lnt_class_constant.
          CLEAR t620.
          DATA t621 TYPE REF TO zcl_lnt_object_oriented.
          CLEAR t621.
          DATA t622 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t622.
          DATA(t623) = me->input_2fd0.
          t622 = t623->scope.
          t621 = NEW zcl_lnt_object_oriented( i_scope = t622 ).
          DATA t624 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t624.
          DATA(t625) = abap_true.
          IF t625 = abap_true.
            DATA t626 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t626.
            DATA(t627) = t319.
            t626 = t627.
            t624 = t626.
          ELSE.
            DATA t628 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t628.
            t624 = t628.
          ENDIF.
          DATA t629 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t629.
          DATA(t630) = abap_true.
          IF t630 = abap_true.
            DATA(t631) = t612.
            DATA(t632) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t632->has = abap_true.
            t632->value = t631.
            t629 = t632.
          ELSE.
            DATA t633 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t633.
            t629 = t633.
          ENDIF.
          t620 = t621->search_constant_name( i_def = t624 i_name = t629 ).
          t619 = t620.
          DATA(t634) = VALUE abap_bool( ).
          DATA(t635) = t619.
          t634 = xsdbool( t635 IS BOUND AND t635 IS INSTANCE OF zcl_lnt_class_constant ).
          IF t634 = abap_true.
            DATA t636 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t636.
            DATA(t637) = me->input_2fd0.
            t636 = t637->scope.
            DATA t638 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t638.
            DATA(t639) = abap_true.
            IF t639 = abap_true.
              DATA(t640) = t30.
              t638 = t640.
            ELSE.
              DATA t641 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t641.
              t638 = t641.
            ENDIF.
            DATA t642 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t642.
            DATA(t643) = abap_true.
            IF t643 = abap_true.
              DATA t644 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t644.
              DATA t645 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t645.
              DATA(t646) = t319.
              t645 = t646.
              t644 ?= t645.
              t642 = t644.
            ELSE.
              DATA t647 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t647.
              t642 = t647.
            ENDIF.
            DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t648.
            DATA(t649) = |Object|.
            CLEAR t648.
            CREATE OBJECT t648.
            t648->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t648->sval = t649.
            DATA(t650) = VALUE string( ).
            DATA(t651) = me->input_2fd0.
            t650 = t651->filename.
            DATA t652 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t652.
            DATA(t653) = abap_true.
            IF t653 = abap_true.
              DATA t654 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t654.
              DATA t655 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t655.
              DATA t656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t656.
              DATA(t657) = abap_true.
              IF t657 = abap_true.
                DATA(t658) = VALUE string( ).
                DATA t659 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t659.
                DATA(t660) = t319.
                t659 = t660.
                t658 = t659->get_name( ).
                DATA(t661) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t661->has = abap_true.
                t661->value = t658.
                t656 = t661.
              ELSE.
                DATA t662 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t662.
                t656 = t662.
              ENDIF.
              t655 = t656.
              DATA t663 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t663.
              DATA t664 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t664.
              t663 = t664.
              DATA t665 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t665.
              DATA t666 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t666.
              t665 = t666.
              t654 = NEW zcl_lnt_ireference_extras( i_oo_name = t655 i_oo_type = t663 i_found_qualified = t665 ).
              CREATE OBJECT t654->zlnt_view_ownkeys_b0e8086400eb.
              t654->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t667.
              IF t654->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t654->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t667 ).
              ENDIF.
              CREATE OBJECT t654->zlnt_json_ownkeys_70e5fd461788.
              t654->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t668) = |ooName|.
              DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t669.
              IF t654->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t654->zlnt_json_ownkeys_70e5fd461788->put( p0 = t668 p1 = t669 ).
              ENDIF.
              t652 = t654.
            ELSE.
              DATA t670 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t670.
              t652 = t670.
            ENDIF.
            t636->add_reference( i_usage = t638 i_referencing = t642 i_type_9913 = t648 i_filename = t650 i_extra = t652 ).
            DATA t671 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t671.
            DATA(t672) = me->input_2fd0.
            t671 = t672->scope.
            DATA t673 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t673.
            DATA(t674) = abap_true.
            IF t674 = abap_true.
              DATA t675 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t675.
              DATA(t676) = t596.
              t675 = t676.
              t673 = t675.
            ELSE.
              DATA t677 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t677.
              t673 = t677.
            ENDIF.
            DATA t678 TYPE REF TO zcl_lnt_class_constant.
            CLEAR t678.
            DATA(t679) = t619.
            t678 = t679.
            DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t680.
            DATA(t681) = |Read From|.
            CLEAR t680.
            CREATE OBJECT t680.
            t680->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t680->sval = t681.
            DATA(t682) = VALUE string( ).
            DATA(t683) = me->input_2fd0.
            t682 = t683->filename.
            DATA t684 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t684.
            t671->add_reference( i_usage = t673 i_referencing = t678 i_type_9913 = t680 i_filename = t682 i_extra = t684 ).
            DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t685.
            DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t686.
            DATA(t687) = abap_true.
            IF t687 = abap_true.
              DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t688.
              DATA t689 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t689.
              DATA t690 TYPE REF TO zcl_lnt_class_constant.
              CLEAR t690.
              DATA(t691) = t619.
              t690 = t691.
              t689 = t690.
              DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t692.
              DATA(t693) = t689.
              t692 = t693->value.
              t688 = t692.
              t686 = t688.
            ELSE.
              DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t694.
              t686 = t694.
            ENDIF.
            t685 = t686.
            DATA(t695) = VALUE abap_bool( ).
            DATA(t696) = VALUE string( ).
            DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t697.
            DATA(t698) = t685.
            t697 = t698.
            IF t697 IS BOUND.
              t696 = t697->type_of( ).
              IF t697->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t697->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
                t696 = `function`.
              ENDIF.
            ELSE.
              t696 = `undefined`.
            ENDIF.
            DATA(t699) = |string|.
            t695 = xsdbool( t696 = t699 ).
            IF t695 = abap_true.
              DATA t700 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t700.
              DATA(t701) = abap_true.
              IF t701 = abap_true.
                DATA(t702) = VALUE string( ).
                DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t703.
                DATA(t704) = t685.
                t703 = t704.
                t702 = t703->as_string( ).
                DATA(t705) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t705->has = abap_true.
                t705->value = t702.
                t700 = t705.
              ELSE.
                DATA t706 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t706.
                t700 = t706.
              ENDIF.
              result = t700.
              RETURN.
            ELSE.
              DATA(t707) = VALUE abap_bool( ).
              DATA(t708) = VALUE abap_bool( ).
              DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t709.
              DATA(t710) = t685.
              t709 = t710.
              DATA(t711) = VALUE abap_bool( ).
              DATA(t712) = VALUE string( ).
              DATA(t713) = VALUE abap_bool( ).
              DATA(t714) = t709.
              IF t714 IS INITIAL.
                t713 = abap_true.
              ENDIF.
              IF t713 = abap_true.
                DATA(t715) = |undefined|.
                t712 = t715.
              ELSE.
                DATA(t716) = VALUE string( ).
                DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t717.
                DATA(t718) = t709.
                t717 = t718.
                IF t717 IS BOUND.
                  t716 = t717->type_of( ).
                  IF t717->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t717->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
                    t716 = `function`.
                  ENDIF.
                ELSE.
                  t716 = `undefined`.
                ENDIF.
                t712 = t716.
              ENDIF.
              DATA(t719) = |object|.
              t711 = xsdbool( t712 = t719 ).
              t708 = t711.
              t707 = t708.
              IF t708 = abap_true.
                DATA(t720) = VALUE abap_bool( ).
                DATA t721 TYPE REF TO zif_lnt_union_4cf1d054.
                CLEAR t721.
                DATA(t722) = t589.
                DATA t723 TYPE REF TO object.
                CLEAR t723.
                t722->load( ).
                CLEAR t723.
                READ TABLE t722->items INDEX 5 INTO t723.
                DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t724.
                CLEAR t721.
                IF t723 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t724 ?= t723.
                  DATA t725 TYPE REF TO object.
                  CLEAR t725.
                  t725 = t724->as_ref( ).
                  t721 ?= t725.
                ELSE.
                  t721 ?= t723.
                ENDIF.
                t720 = xsdbool( t721 IS BOUND ).
                t707 = t720.
              ENDIF.
              IF t707 = abap_true.
                DATA(t726) = VALUE string( ).
                DATA(t727) = VALUE string( ).
                DATA t728 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t728.
                DATA t729 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t729.
                DATA t730 TYPE REF TO zif_lnt_union_4cf1d054.
                CLEAR t730.
                DATA(t731) = t589.
                DATA t732 TYPE REF TO object.
                CLEAR t732.
                t731->load( ).
                CLEAR t732.
                READ TABLE t731->items INDEX 5 INTO t732.
                DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t733.
                CLEAR t730.
                IF t732 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t733 ?= t732.
                  DATA t734 TYPE REF TO object.
                  CLEAR t734.
                  t734 = t733->as_ref( ).
                  t730 ?= t734.
                ELSE.
                  t730 ?= t732.
                ENDIF.
                t729 = t730->get_first_token( ).
                t728 = t729.
                DATA(t735) = VALUE string( ).
                DATA(t736) = t728.
                t735 = t736->str.
                t727 = t735.
                t726 = t727.
                DATA(t737) = VALUE abap_bool( ).
                DATA t738 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t738.
                DATA t739 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t739.
                DATA t740 TYPE REF TO zlnt_runtime_map__a1006b231250.
                CLEAR t740.
                DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t741.
                DATA(t742) = t685.
                t741 = t742.
                DATA t743 TYPE REF TO object.
                CLEAR t743.
                IF t741 IS BOUND AND t741->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  CREATE OBJECT t740.
                  LOOP AT t741->entries INTO DATA(t744).
                    DATA(t745) = CAST zlnt_runtime_dyna_a429568d5be8( t744-v ).
                    DATA(t746) = CONV string( t745->as_string( ) ).
                    t740->set( p0 = t744-k p1 = t746 ).
                  ENDLOOP.
                ELSE.
                  t743 = t741->as_ref( ).
                  DATA t747 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                  CLEAR t747.
                  TRY.
                      t740 ?= t743.
                    CATCH cx_sy_move_cast_error.
                      t747 ?= t743.
                      CREATE OBJECT t740.
                      LOOP AT t747->entries INTO DATA(t748).
                        DATA(t749) = CAST zlnt_runtime_dyna_a429568d5be8( t748-v ).
                        DATA(t750) = CONV string( t749->as_string( ) ).
                        t740->set( p0 = t748-k p1 = t750 ).
                      ENDLOOP.
                  ENDTRY.
                ENDIF.
                DATA(t751) = t726.
                t739 = t740->get( p0 = t751 ).
                t738 = t739.
                DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t752.
                DATA t753 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t753.
                t752 = t753.
                DATA(t754) = VALUE abap_bool( ).
                DATA(t755) = VALUE abap_bool( ).
                DATA(t756) = t738.
                IF t756 IS INITIAL.
                  t755 = abap_true.
                ELSEIF t756->has = abap_false.
                  t755 = abap_true.
                ENDIF.
                t754 = xsdbool( t755 = abap_false ).
                t737 = t754.
                IF t737 = abap_true.
                  DATA t757 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t757.
                  DATA t758 TYPE REF TO zlnt_runtime_map__a1006b231250.
                  CLEAR t758.
                  DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t759.
                  DATA(t760) = t685.
                  t759 = t760.
                  DATA t761 TYPE REF TO object.
                  CLEAR t761.
                  IF t759 IS BOUND AND t759->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    CREATE OBJECT t758.
                    LOOP AT t759->entries INTO DATA(t762).
                      DATA(t763) = CAST zlnt_runtime_dyna_a429568d5be8( t762-v ).
                      DATA(t764) = CONV string( t763->as_string( ) ).
                      t758->set( p0 = t762-k p1 = t764 ).
                    ENDLOOP.
                  ELSE.
                    t761 = t759->as_ref( ).
                    DATA t765 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                    CLEAR t765.
                    TRY.
                        t758 ?= t761.
                      CATCH cx_sy_move_cast_error.
                        t765 ?= t761.
                        CREATE OBJECT t758.
                        LOOP AT t765->entries INTO DATA(t766).
                          DATA(t767) = CAST zlnt_runtime_dyna_a429568d5be8( t766-v ).
                          DATA(t768) = CONV string( t767->as_string( ) ).
                          t758->set( p0 = t766-k p1 = t768 ).
                        ENDLOOP.
                    ENDTRY.
                  ENDIF.
                  DATA(t769) = t726.
                  t757 = t758->get( p0 = t769 ).
                  result = t757.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
            DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t770.
            result = t770.
            RETURN.
          ENDIF.
          DATA t771 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t771.
          DATA t772 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t772.
          DATA t773 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t773.
          DATA(t774) = abap_true.
          IF t774 = abap_true.
            DATA(t775) = VALUE string( ).
            DATA(t776) = |resolveConstantValue, constant not found |.
            DATA(t777) = t612.
            DATA(t778) = strlen( t776 ).
            t775 = |{ t776 }{ t777 }|.
            DATA(t779) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t779->has = abap_true.
            t779->value = t775.
            t773 = t779.
          ELSE.
            DATA t780 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t780.
            t773 = t780.
          ENDIF.
          t772 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t773 ).
          t771 = NEW #( ).
          t771->payload = t772.
          CLEAR t771->source_value.
          IF t772 IS BOUND.
            DATA t781 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t781.
            DATA t782 TYPE REF TO object.
            CLEAR t782.
            CLEAR t781.
            t782 = t772.
            TRY.
                t771->source_value ?= t782.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t771->source_value IS NOT BOUND.
              TRY.
                  t781 ?= t772.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t781 IS BOUND.
                t771->source_value = t781->source( ).
              ENDIF.
              IF t771->source_value IS NOT BOUND.
                CREATE OBJECT t771->source_value.
                t771->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t771->source_value->oval = t772.
              ENDIF.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t771.
        ELSE.
          DATA t783 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t783.
          DATA t784 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t784.
          DATA t785 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t785.
          DATA(t786) = abap_true.
          IF t786 = abap_true.
            DATA(t787) = |resolveConstantValue, unexpected structure|.
            DATA(t788) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t788->has = abap_true.
            t788->value = t787.
            t785 = t788.
          ELSE.
            DATA t789 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t789.
            t785 = t789.
          ENDIF.
          t784 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t785 ).
          t783 = NEW #( ).
          t783->payload = t784.
          CLEAR t783->source_value.
          IF t784 IS BOUND.
            DATA t790 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t790.
            DATA t791 TYPE REF TO object.
            CLEAR t791.
            CLEAR t790.
            t791 = t784.
            TRY.
                t783->source_value ?= t791.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t783->source_value IS NOT BOUND.
              TRY.
                  t790 ?= t784.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t790 IS BOUND.
                t783->source_value = t790->source( ).
              ENDIF.
              IF t783->source_value IS NOT BOUND.
                CREATE OBJECT t783->source_value.
                t783->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t783->source_value->oval = t784.
              ENDIF.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t783.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD resolve_type_ref.
    DATA(t1) = i_chain_8ed6.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE string.
    DATA t11 TYPE string.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t15) = t1.
    t14 = t15.
    t13 = t14->get_first_token( ).
    t12 = t13.
    DATA t16 TYPE string.
    DATA(t17) = t12.
    t16 = t17->str.
    t11 = t16.
    t10 = t11.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE i.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_abstract_node.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = t1.
    t23 = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = t22.
    t25 = t26->children.
    t21 = t25.
    t20 ?= t21.
    t20->load( ).
    t19 = lines( t20->items ).
    DATA(t27) = 1.
    t18 = xsdbool( t19 = t27 ).
    IF t18 = abap_true.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE string.
      DATA(t30) = t10.
      DATA(t31) = strlen( t30 ).
      t29 = t30.
      IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t29 TO UPPER CASE.
      ELSE.
        t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
      ENDIF.
      DATA(t32) = |OBJECT|.
      t28 = xsdbool( t29 = t32 ).
      IF t28 = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_gnrc_objct_rfrnc_typ.
        DATA t34 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t34.
        t33 = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t34 ).
        result = t33.
        RETURN.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_current_scope.
      DATA(t38) = me->input_2fd0.
      t37 = t38->scope.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA(t41) = t10.
        DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t42->has = abap_true.
        t42->value = t41.
        t39 = t42.
      ELSE.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        t39 = t43.
      ENDIF.
      t36 = t37->exists_object( i_name = t39 ).
      t35 = t36.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t45.
      DATA t46 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA(t47) = t35.
      t46 = t47.
      DATA t48 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t46.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t51.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t53 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA(t54) = t46.
        t53 = t54.
        t52 = t53->id.
        t48 = t52.
      ENDIF.
      t45 = t48.
      t44 = xsdbool( t45 IS BOUND ).
      IF t44 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_current_scope.
        DATA(t56) = me->input_2fd0.
        t55 = t56->scope.
        DATA t57 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t57.
        DATA(t58) = abap_true.
        IF t58 = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_abstract_token.
          DATA t60 TYPE REF TO zcl_lnt_expression_node.
          DATA(t61) = t1.
          t60 = t61.
          t59 = t60->get_first_token( ).
          t57 = t59.
        ELSE.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t62.
          t57 = t62.
        ENDIF.
        DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t67 TYPE REF TO zcl_lnt_shape_59e28496.
          DATA(t68) = t35.
          t67 = t68.
          t66 = t67->id.
          t65 = t66.
          t63 = t65.
        ELSE.
          DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t69.
          t63 = t69.
        ENDIF.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        DATA(t71) = |Object|.
        CLEAR t70.
        CREATE OBJECT t70.
        t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t70->sval = t71.
        DATA t72 TYPE string.
        DATA(t73) = me->input_2fd0.
        t72 = t73->filename.
        DATA t74 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t76.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t79 TYPE REF TO zcl_lnt_shape_59e28496.
          DATA(t80) = t35.
          t79 = t80.
          t78 = t79->oo_type.
          t77 = t78.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          DATA(t83) = abap_true.
          IF t83 = abap_true.
            DATA(t84) = t10.
            DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t85->has = abap_true.
            t85->value = t84.
            t82 = t85.
          ELSE.
            DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t86.
            t82 = t86.
          ENDIF.
          t81 = t82.
          DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t88 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t88.
          t87 = t88.
          t76 = NEW zcl_lnt_ireference_extras( i_oo_name = t81 i_oo_type = t77 i_found_qualified = t87 ).
          CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
          t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t89 ).
          ENDIF.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t90 ).
          ENDIF.
          CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
          t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t91) = |ooType|.
          DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t92.
          IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
          ENDIF.
          DATA(t93) = |ooName|.
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
          ENDIF.
          t74 = t76.
        ELSE.
          DATA t95 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t95.
          t74 = t95.
        ENDIF.
        t55->add_reference( i_usage = t57 i_referencing = t63 i_type_9913 = t70 i_filename = t72 i_extra = t74 ).
        DATA t96 TYPE REF TO zcl_lnt_object_reference_type.
        CLEAR t96.
        DATA t97 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t98 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t99 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA(t100) = t35.
        t99 = t100.
        t98 = t99->id.
        t97 = t98.
        DATA t101 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t101.
        DATA(t102) = abap_true.
        IF t102 = abap_true.
          DATA t103 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t103.
          DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t104.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          DATA(t106) = abap_true.
          IF t106 = abap_true.
            DATA(t107) = t10.
            DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t108->has = abap_true.
            t108->value = t107.
            t105 = t108.
          ELSE.
            DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t109.
            t105 = t109.
          ENDIF.
          t104 = t105.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t112 TYPE REF TO zcl_lnt_shape_59e28496.
          DATA(t113) = t35.
          t112 = t113.
          t111 = t112->rtti_name.
          t110 = t111.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          t114 = t115.
          DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t117 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t117.
          t116 = t117.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t119.
          t118 = t119.
          DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          t120 = t121.
          t103 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t104 i_conversion_exit = t114 i_derived_from_constant = t116 i_ddic_name = t118 i_rtti_name = t110 i_description = t120 ).
          CREATE OBJECT t103->zlnt_view_ownkeys_b0e8086400eb.
          t103->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t122 ).
          ENDIF.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t123 ).
          ENDIF.
          CREATE OBJECT t103->zlnt_json_ownkeys_70e5fd461788.
          t103->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t124) = |qualifiedName|.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
          ENDIF.
          DATA(t126) = |RTTIName|.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
          ENDIF.
          t101 = t103.
        ELSE.
          DATA t128 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t128.
          t101 = t128.
        ENDIF.
        t96 = NEW zcl_lnt_object_reference_type( i_id = t97 i_extra = t101 ).
        result = t96.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t129 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t129.
    DATA t130 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t130.
    DATA t131 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t131.
    DATA(t132) = abap_true.
    IF t132 = abap_true.
      DATA t133 TYPE REF TO zcl_lnt_expression_node.
      DATA(t134) = t1.
      t133 = t134.
      t131 = t133.
    ELSE.
      DATA t135 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t135.
      t131 = t135.
    ENDIF.
    DATA t136 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t138.
    t130 = me->resolve_type_name( i_type_name = t131 i_length = t136 i_decimals_2eed = t137 i_qualified_name = t138 ).
    t129 = t130.
    DATA t139 TYPE abap_bool.
    DATA t140 TYPE abap_bool.
    DATA(t141) = t129.
    t140 = xsdbool( t141 IS BOUND ).
    t139 = t140.
    IF t140 = abap_true.
      DATA t142 TYPE abap_bool.
      DATA t143 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t144) = t129.
      t143 = t144.
      t142 = xsdbool( t143 IS BOUND AND t143 IS INSTANCE OF zcl_lnt_void_type ).
      t139 = t142.
    ENDIF.
    IF t139 = abap_true.
      DATA t145 TYPE REF TO zcl_lnt_void_type.
      DATA(t146) = t129.
      t145 ?= t146.
      result = t145.
      RETURN.
    ELSE.
      DATA t147 TYPE abap_bool.
      DATA t148 TYPE abap_bool.
      DATA(t149) = t129.
      t148 = xsdbool( t149 IS BOUND ).
      t147 = t148.
      IF t148 = abap_true.
        DATA t150 TYPE abap_bool.
        DATA t151 TYPE abap_bool.
        DATA t152 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t153) = t129.
        t152 = t153.
        t151 = xsdbool( t152 IS BOUND AND t152 IS INSTANCE OF zcl_lnt_unknown_type ).
        t150 = xsdbool( t151 = abap_false ).
        t147 = t150.
      ENDIF.
      IF t147 = abap_true.
        DATA t154 TYPE REF TO zcl_lnt_data_reference.
        DATA t155 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t156) = t129.
        t155 = t156.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        t154 = NEW zcl_lnt_data_reference( i_type_9913 = t155 i_qualified_name = t157 ).
        result = t154.
        RETURN.
      ELSE.
        DATA(t158) = VALUE abap_bool( ).
        DATA t159 TYPE string.
        DATA t160 TYPE string.
        DATA t161 TYPE REF TO zcl_lnt_expression_node.
        DATA(t162) = t1.
        t161 = t162.
        t160 = t161->concat_tokens( ).
        DATA(t163) = strlen( t160 ).
        t159 = t160.
        IF t159 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t159 TO UPPER CASE.
        ELSE.
          t159 = zlnt_runtime_uppe_91169605024d=>full( t159 ).
        ENDIF.
        DATA(t164) = |DATA|.
        t158 = xsdbool( t159 = t164 ).
        IF t158 = abap_true.
          DATA t165 TYPE REF TO zcl_lnt_data_reference.
          DATA t166 TYPE REF TO zcl_lnt_data_type.
          DATA t167 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t167.
          t166 = NEW zcl_lnt_data_type( i_input_967e = t167 ).
          DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t168.
          t165 = NEW zcl_lnt_data_reference( i_type_9913 = t166 i_qualified_name = t168 ).
          result = t165.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t169 TYPE abap_bool.
    DATA t170 TYPE abap_bool.
    DATA t171 TYPE REF TO zcl_lnt_current_scope.
    DATA(t172) = me->input_2fd0.
    t171 = t172->scope.
    DATA(t173) = t10.
    t170 = t171->is_badi_def( i_name = t173 ).
    DATA(t174) = abap_true.
    t169 = xsdbool( t170 = t174 ).
    IF t169 = abap_true.
      DATA t175 TYPE REF TO zcl_lnt_void_type.
      CLEAR t175.
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t176.
      DATA(t177) = abap_true.
      IF t177 = abap_true.
        DATA(t178) = t10.
        DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t179->has = abap_true.
        t179->value = t178.
        t176 = t179.
      ELSE.
        DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t180.
        t176 = t180.
      ENDIF.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t181.
      t175 = zcl_lnt_void_type=>get_db65( i_voided = t176 i_qualified_name = t181 ).
      result = t175.
      RETURN.
    ENDIF.
    DATA(t182) = VALUE abap_bool( ).
    DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t183.
    DATA t184 TYPE REF TO zcl_lnt_ddic.
    DATA t185 TYPE REF TO zcl_lnt_ddic.
    DATA t186 TYPE REF TO zcl_lnt_current_scope.
    DATA t187 TYPE REF TO zcl_lnt_current_scope.
    DATA(t188) = me->input_2fd0.
    t187 = t188->scope.
    t186 = t187.
    DATA t189 TYPE REF TO zcl_lnt_ddic.
    DATA t190 TYPE REF TO zif_lnt_registry.
    DATA(t191) = t186.
    t190 = t191->reg.
    t189 = NEW zcl_lnt_ddic( i_reg_f149 = t190 ).
    t185 = t189.
    t184 = t185.
    DATA t192 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t192.
    DATA(t193) = VALUE abap_bool( ).
    DATA(t194) = t184.
    IF t194 IS INITIAL.
      t193 = abap_true.
    ENDIF.
    IF t193 = abap_true.
      DATA t195 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t195.
      t192 = t195.
    ELSE.
      DATA(t196) = VALUE abap_bool( ).
      DATA t197 TYPE REF TO zcl_lnt_ddic.
      DATA(t198) = t184.
      t197 = t198.
      DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t199.
      DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t200.
      DATA(t201) = abap_true.
      IF t201 = abap_true.
        DATA(t202) = t10.
        DATA(t203) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t203->has = abap_true.
        t203->value = t202.
        t200 = t203.
      ELSE.
        DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t204.
        t200 = t204.
      ENDIF.
      t199 = t200.
      DATA(t205) = VALUE abap_bool( ).
      DATA(t206) = VALUE abap_bool( ).
      DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t208) = t199.
      t207 = t208.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t210.
      t209 = t210.
      DATA(t211) = VALUE abap_bool( ).
      DATA(t212) = t207.
      IF t212 IS INITIAL.
        t211 = abap_true.
      ELSEIF t212->has = abap_false.
        t211 = abap_true.
      ENDIF.
      t206 = t211.
      IF t206 = abap_true.
        DATA(t213) = abap_true.
        t205 = t213.
      ELSE.
        DATA t214 TYPE abap_bool.
        DATA t215 TYPE REF TO zif_lnt_registry.
        DATA(t216) = t197.
        t215 = t216->reg.
        DATA t217 TYPE string.
        DATA(t218) = t199.
        t217 = t218->value.
        t214 = t215->in_error_namespace( i_name = t217 ).
        t205 = t214.
      ENDIF.
      t196 = t205.
      DATA(t219) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t219->has = abap_true.
      t219->value = t196.
      t192 = t219.
    ENDIF.
    t183 = t192.
    DATA t220 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t220.
    DATA(t221) = abap_true.
    IF t221 = abap_true.
      DATA(t222) = abap_false.
      DATA(t223) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t223->has = abap_true.
      t223->value = t222.
      t220 = t223.
    ELSE.
      DATA t224 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t224.
      t220 = t224.
    ENDIF.
    DATA(t225) = VALUE abap_bool( ).
    DATA(t226) = VALUE abap_bool( ).
    IF t183 IS BOUND.
      t225 = t183->has.
    ENDIF.
    IF t220 IS BOUND.
      t226 = t220->has.
    ENDIF.
    IF t225 = t226.
      IF t225 = abap_false.
        t182 = abap_true.
      ELSEIF t183->value = t220->value.
        t182 = abap_true.
      ENDIF.
    ENDIF.
    IF t182 = abap_true.
      DATA t227 TYPE REF TO zcl_lnt_void_type.
      CLEAR t227.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      DATA(t229) = abap_true.
      IF t229 = abap_true.
        DATA(t230) = t10.
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
      t227 = zcl_lnt_void_type=>get_db65( i_voided = t228 i_qualified_name = t233 ).
      result = t227.
      RETURN.
    ENDIF.
    DATA t234 TYPE REF TO zcl_lnt_unknown_type.
    DATA t235 TYPE string.
    DATA(t236) = |REF, unable to resolve |.
    DATA(t237) = t10.
    DATA(t238) = strlen( t236 ).
    t235 = |{ t236 }{ t237 }|.
    DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t239.
    t234 = NEW zcl_lnt_unknown_type( i_error = t235 i_qualified_name = t239 ).
    result = t234.

  ENDMETHOD.

  METHOD find_value.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
    t3 = t4->find_first_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA(t8) = t2.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
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
      DATA t13 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      DATA(t16) = abap_true.
      IF t16 = abap_true.
        DATA(t17) = |VALUE missing in expression|.
        DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t18->has = abap_true.
        t18->value = t17.
        t15 = t18.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        t15 = t19.
      ENDIF.
      t14 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t15 ).
      t13 = NEW #( ).
      t13->payload = t14.
      CLEAR t13->source_value.
      IF t14 IS BOUND.
        DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t20.
        DATA t21 TYPE REF TO object.
        CLEAR t21.
        CLEAR t20.
        t21 = t14.
        TRY.
            t13->source_value ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13->source_value IS NOT BOUND.
          TRY.
              t20 ?= t14.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t20 IS BOUND.
            t13->source_value = t20->source( ).
          ENDIF.
          IF t13->source_value IS NOT BOUND.
            CREATE OBJECT t13->source_value.
            t13->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t13->source_value->oval = t14.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t13.
    ENDIF.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE string( ).
    DATA(t24) = VALUE string( ).
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t25.
    DATA(t26) = t2.
    t25 = t26.
    t24 = t25->concat_tokens( ).
    DATA(t27) = strlen( t24 ).
    t23 = t24.
    IF t23 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t23 TO UPPER CASE.
    ELSE.
      t23 = zlnt_runtime_uppe_91169605024d=>full( t23 ).
    ENDIF.
    DATA(t28) = |VALUE IS INITIAL|.
    t22 = xsdbool( t23 = t28 ).
    IF t22 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      result = t29.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t32.
    DATA(t33) = t2.
    t32 = t33.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    t31 = t32->find_first_expression( i_type_9913 = t34 ).
    t30 = t31.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t30.
    t35 = xsdbool( t36 IS BOUND ).
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t39.
      DATA(t40) = t2.
      t39 = t40.
      DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421.
      t38 = t39->find_first_expression( i_type_9913 = t41 ).
      t37 = t38.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = t37.
      t42 = xsdbool( t43 IS BOUND ).
      IF t42 = abap_true.
        DATA(t44) = VALUE string( ).
        DATA(t45) = VALUE string( ).
        DATA(t46) = VALUE string( ).
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t49.
        DATA(t50) = t37.
        t49 = t50.
        t48 = t49->get_first_token( ).
        t47 = t48.
        DATA(t51) = VALUE string( ).
        DATA(t52) = t47.
        t51 = t52->str.
        t46 = t51.
        DATA(t53) = 0.
        DATA(t54) = 1.
        DATA(t55) = strlen( t46 ).
        t53 = COND i( WHEN t53 < 0 THEN 0 WHEN t53 > t55 THEN t55 ELSE t53 ).
        t54 = COND i( WHEN t54 < 0 THEN 0 WHEN t54 > t55 THEN t55 ELSE t54 ).
        IF t53 > t54.
          t55 = t53.
          t53 = t54.
          t54 = t55.
        ENDIF.
        t55 = t54 - t53.
        t45 = t46+t53(t55).
        t44 = t45.
        DATA(t56) = VALUE string( ).
        DATA(t57) = ||.
        t56 = t57.
        DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t58.
        DATA t59 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t59.
        DATA(t60) = t37.
        t59 = t60.
        t58 = t59->get_all_tokens( ).
        DATA t61 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t61.
        DATA t62 TYPE REF TO object.
        CLEAR t62.
        DATA(t63) = VALUE i( ).
        DO.
          t58->load( ).
          IF t63 >= lines( t58->items ).
            EXIT.
          ENDIF.
          CLEAR t62.
          READ TABLE t58->items INDEX t63 + 1 INTO t62.
          t63 = t63 + 1.
          DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t64.
          CLEAR t61.
          IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t64 ?= t62.
            DATA t65 TYPE REF TO object.
            CLEAR t65.
            t65 = t64->as_ref( ).
            t61 ?= t65.
          ELSE.
            t61 ?= t62.
          ENDIF.
          DATA(t66) = VALUE abap_bool( ).
          DATA(t67) = VALUE string( ).
          DATA t68 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t68.
          DATA(t69) = t61.
          t68 = t69.
          DATA(t70) = VALUE string( ).
          DATA(t71) = t68.
          t70 = t71->str.
          t67 = t70.
          DATA(t72) = |&|.
          t66 = xsdbool( t67 = t72 ).
          IF t66 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t73) = VALUE string( ).
            DATA(t74) = t56.
            DATA(t75) = VALUE string( ).
            DATA(t76) = VALUE string( ).
            DATA t77 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t77.
            DATA(t78) = t61.
            t77 = t78.
            DATA(t79) = VALUE string( ).
            DATA(t80) = t77.
            t79 = t80->str.
            t76 = t79.
            DATA(t81) = 1.
            DATA(t82) = VALUE i( ).
            DATA(t83) = VALUE i( ).
            DATA(t84) = VALUE string( ).
            DATA t85 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t85.
            DATA(t86) = t61.
            t85 = t86.
            DATA(t87) = VALUE string( ).
            DATA(t88) = t85.
            t87 = t88->str.
            t84 = t87.
            DATA(t89) = strlen( t84 ).
            t83 = t89.
            DATA(t90) = 1.
            t82 = t83 - t90.
            DATA(t91) = strlen( t76 ).
            t81 = COND i( WHEN t81 < 0 THEN 0 WHEN t81 > t91 THEN t91 ELSE t81 ).
            t82 = COND i( WHEN t82 < 0 THEN 0 WHEN t82 > t91 THEN t91 ELSE t82 ).
            IF t81 > t82.
              t91 = t81.
              t81 = t82.
              t82 = t91.
            ENDIF.
            t91 = t82 - t81.
            t75 = t76+t81(t91).
            DATA(t92) = strlen( t74 ).
            t73 = |{ t74 }{ t75 }|.
            t56 = t73.
          ENDIF.
        ENDDO.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t93.
        DATA(t94) = abap_true.
        IF t94 = abap_true.
          DATA(t95) = VALUE string( ).
          DATA(t96) = VALUE string( ).
          DATA(t97) = t44.
          DATA(t98) = t56.
          DATA(t99) = strlen( t97 ).
          t96 = |{ t97 }{ t98 }|.
          DATA(t100) = t44.
          DATA(t101) = strlen( t96 ).
          t95 = |{ t96 }{ t100 }|.
          DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t102->has = abap_true.
          t102->value = t95.
          t93 = t102.
        ELSE.
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t103.
          t93 = t103.
        ENDIF.
        result = t93.
        RETURN.
      ELSE.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        DATA(t105) = abap_true.
        IF t105 = abap_true.
          DATA(t106) = VALUE string( ).
          DATA t107 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t107.
          DATA(t108) = t30.
          t107 = t108.
          t106 = t107->concat_tokens( ).
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t106.
          t104 = t109.
        ELSE.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t110.
          t104 = t110.
        ENDIF.
        result = t104.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t111 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t111.
    DATA t112 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t112.
    DATA t113 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t113.
    DATA(t114) = t2.
    t113 = t114.
    DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
    t112 = t113->find_first_expression( i_type_9913 = t115 ).
    t111 = t112.
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = t111.
    t116 = xsdbool( t117 IS BOUND ).
    IF t116 = abap_true.
      DATA(t118) = VALUE string( ).
      DATA(t119) = VALUE string( ).
      DATA(t120) = VALUE string( ).
      DATA t121 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t121.
      DATA(t122) = t111.
      t121 = t122.
      t120 = t121->concat_tokens( ).
      DATA(t123) = strlen( t120 ).
      t119 = t120.
      IF t119 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t119 TO UPPER CASE.
      ELSE.
        t119 = zlnt_runtime_uppe_91169605024d=>full( t119 ).
      ENDIF.
      t118 = t119.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = VALUE abap_bool( ).
      DATA(t126) = t118.
      DATA(t127) = |SY-DATUM|.
      t125 = xsdbool( t126 = t127 ).
      t124 = t125.
      IF t125 = abap_false.
        DATA(t128) = VALUE abap_bool( ).
        DATA(t129) = t118.
        DATA(t130) = |SY-UZEIT|.
        t128 = xsdbool( t129 = t130 ).
        t124 = t128.
      ENDIF.
      IF t124 = abap_true.
        DATA(t131) = VALUE string( ).
        DATA(t132) = VALUE string( ).
        DATA(t133) = VALUE string( ).
        DATA(t134) = |VALUE, |.
        DATA(t135) = VALUE string( ).
        DATA(t136) = t118.
        DATA(t137) = strlen( t136 ).
        t135 = t136.
        TRANSLATE t135 TO LOWER CASE.
        DATA(t138) = strlen( t134 ).
        t133 = |{ t134 }{ t135 }|.
        DATA(t139) = | is not a constant|.
        DATA(t140) = strlen( t133 ).
        t132 = |{ t133 }{ t139 }|.
        t131 = t132.
        DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t141.
        DATA(t142) = me->input_2fd0.
        t141 = t142->issues.
        DATA t143 TYPE REF TO zcl_lnt_issue.
        CLEAR t143.
        DATA(t144) = me->input_2fd0.
        DATA t145 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t145.
        DATA t146 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t146.
        DATA(t147) = t111.
        t146 = t147.
        t145 = t146->get_first_token( ).
        DATA(t148) = t131.
        DATA t149 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t149.
        t143 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t144 i_token = t145 i_message_26cb = t148 i_fix = t149 ).
        t141->load( ).
        APPEND t143 TO t141->items.
        t141->save( ).
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        result = t150.
        RETURN.
      ENDIF.
      DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t151.
      DATA t152 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t152.
      DATA(t153) = t111.
      t152 = t153.
      t151 = me->resolve_constant_value( i_expr = t152 ).
      result = t151.
      RETURN.
    ENDIF.
    DATA t154 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t154.
    DATA t155 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t156.
    DATA(t157) = abap_true.
    IF t157 = abap_true.
      DATA(t158) = |findValue, unexpected|.
      DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t159->has = abap_true.
      t159->value = t158.
      t156 = t159.
    ELSE.
      DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t160.
      t156 = t160.
    ENDIF.
    t155 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t156 ).
    t154 = NEW #( ).
    t154->payload = t155.
    CLEAR t154->source_value.
    IF t155 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t161.
      DATA t162 TYPE REF TO object.
      CLEAR t162.
      CLEAR t161.
      t162 = t155.
      TRY.
          t154->source_value ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154->source_value IS NOT BOUND.
        TRY.
            t161 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t154->source_value = t161->source( ).
        ENDIF.
        IF t154->source_value IS NOT BOUND.
          CREATE OBJECT t154->source_value.
          t154->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->source_value->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t154.
  ENDMETHOD.

  METHOD find_decimals.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03.
    t7 = t8->find_direct_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t6.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = t6.
      t15 = t16.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
      t14 = t15->find_direct_expression( i_type_9913 = t17 ).
      t10 = t14.
    ENDIF.
    t5 = t10.
    t4 = t5.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t4.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t18 = t21.
    ELSE.
      DATA t22 TYPE string.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t24) = t4.
      t23 = t24.
      t22 = t23->concat_tokens( ).
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t22.
      t18 = t25.
    ENDIF.
    t3 = t18.
    t2 = t3.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t2.
    IF t27 IS BOUND.
      IF t27->has = abap_true.
        t26 = xsdbool( strlen( t27->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t26 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA t30 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t31 TYPE string.
        DATA(t32) = t2.
        t31 = t32->value.
        t30 = zlnt_runtime_stri_248d3505915c=>int_optional( t31 ).
        t28 = t30.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t33.
        t28 = t33.
      ENDIF.
      result = t28.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t34.
    result = t34.

  ENDMETHOD.

  METHOD find_length.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
    t3 = t4->find_first_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    t7 = t8->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t2.
    t11 = xsdbool( t12 IS BOUND ).
    t10 = t11.
    IF t11 = abap_true.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = t6.
      t13 = xsdbool( t14 IS BOUND ).
      t10 = t13.
    ENDIF.
    IF t10 = abap_true.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = |Only specify length once|.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t17 = t21.
      ENDIF.
      t16 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t17 ).
      t15 = NEW #( ).
      t15->payload = t16.
      CLEAR t15->source_value.
      IF t16 IS BOUND.
        DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t22.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        CLEAR t22.
        t23 = t16.
        TRY.
            t15->source_value ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15->source_value IS NOT BOUND.
          TRY.
              t22 ?= t16.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t22 IS BOUND.
            t15->source_value = t22->source( ).
          ENDIF.
          IF t15->source_value IS NOT BOUND.
            CREATE OBJECT t15->source_value.
            t15->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t15->source_value->oval = t16.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t15.
    ENDIF.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t6.
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t28.
      DATA(t29) = t6.
      t28 = t29.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
      t27 = t28->find_first_expression( i_type_9913 = t30 ).
      t26 = t27.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t26.
      t31 = xsdbool( t32 IS BOUND ).
      IF t31 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t33.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        DATA(t36) = abap_true.
        IF t36 = abap_true.
          DATA(t37) = VALUE string( ).
          DATA t38 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t38.
          DATA(t39) = t26.
          t38 = t39.
          t37 = t38->concat_tokens( ).
          DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t40->has = abap_true.
          t40->value = t37.
          t35 = t40.
        ELSE.
          DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t41.
          t35 = t41.
        ENDIF.
        t34 = t35.
        DATA t42 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t42.
        DATA(t43) = VALUE abap_bool( ).
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA(t45) = t34.
        t44 = t45.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        t46 = t47.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = t44.
        IF t49 IS INITIAL.
          t48 = abap_true.
        ELSEIF t49->has = abap_false.
          t48 = abap_true.
        ENDIF.
        t43 = t48.
        IF t43 = abap_true.
          DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t50.
          t42 = t50.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t51.
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE string( ).
          DATA(t54) = t34.
          t53 = t54->value.
          DATA(t55) = |'|.
          DATA(t56) = strlen( t53 ).
          DATA(t57) = VALUE i( ).
          DATA(t58) = VALUE i( ).
          DATA(t59) = VALUE string( ).
          t57 = strlen( t55 ).
          IF t57 = 0.
            t52 = abap_true.
          ELSEIF t57 <= t56.
            t58 = 0.
            t59 = t53+t58(t57).
            IF t59 = t55.
              t52 = abap_true.
            ENDIF.
          ENDIF.
          IF t52 = abap_true.
            DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t60.
            DATA(t61) = abap_true.
            IF t61 = abap_true.
              DATA(t62) = VALUE string( ).
              DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t63.
              DATA(t64) = VALUE string( ).
              DATA(t65) = t34.
              t64 = t65->value.
              DATA(t66) = |'|.
              DATA(t67) = strlen( t64 ).
              DATA(t68) = VALUE i( ).
              DATA(t69) = VALUE i( ).
              DATA(t70) = VALUE i( ).
              DATA(t71) = VALUE i( ).
              DATA(t72) = VALUE string( ).
              CREATE OBJECT t63.
              t71 = strlen( t66 ).
              t68 = 0.
              IF t71 = 0.
                WHILE t68 < t67.
                  t72 = t64+t68(1).
                  APPEND t72 TO t63->items.
                  t68 = t68 + 1.
                ENDWHILE.
              ELSE.
                WHILE t68 <= t67.
                  FIND FIRST OCCURRENCE OF t66 IN SECTION OFFSET t68 OF t64 MATCH OFFSET t69.
                  IF sy-subrc = 0.
                    t70 = t69 - t68.
                  ELSE.
                    t69 = -1.
                    t70 = t67 - t68.
                  ENDIF.
                  CLEAR t72.
                  IF t70 > 0.
                    t72 = t64+t68(t70).
                  ENDIF.
                  APPEND t72 TO t63->items.
                  IF t69 < 0.
                    EXIT.
                  ENDIF.
                  t68 = t69 + t71.
                ENDWHILE.
              ENDIF.
              IF t63->has( 2 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t63->load( ).
              CLEAR t62.
              READ TABLE t63->items INDEX 2 INTO t62.
              DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t73->has = abap_true.
              t73->value = t62.
              t60 = t73.
            ELSE.
              DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t74.
              t60 = t74.
            ENDIF.
            t34 = t60.
          ELSE.
            DATA(t75) = VALUE abap_bool( ).
            DATA(t76) = VALUE string( ).
            DATA(t77) = t34.
            t76 = t77->value.
            DATA(t78) = |`|.
            DATA(t79) = strlen( t76 ).
            DATA(t80) = VALUE i( ).
            DATA(t81) = VALUE i( ).
            DATA(t82) = VALUE string( ).
            t80 = strlen( t78 ).
            IF t80 = 0.
              t75 = abap_true.
            ELSEIF t80 <= t79.
              t81 = 0.
              t82 = t76+t81(t80).
              IF t82 = t78.
                t75 = abap_true.
              ENDIF.
            ENDIF.
            IF t75 = abap_true.
              DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t83.
              DATA(t84) = abap_true.
              IF t84 = abap_true.
                DATA(t85) = VALUE string( ).
                DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t86.
                DATA(t87) = VALUE string( ).
                DATA(t88) = t34.
                t87 = t88->value.
                DATA(t89) = |`|.
                DATA(t90) = strlen( t87 ).
                DATA(t91) = VALUE i( ).
                DATA(t92) = VALUE i( ).
                DATA(t93) = VALUE i( ).
                DATA(t94) = VALUE i( ).
                DATA(t95) = VALUE string( ).
                CREATE OBJECT t86.
                t94 = strlen( t89 ).
                t91 = 0.
                IF t94 = 0.
                  WHILE t91 < t90.
                    t95 = t87+t91(1).
                    APPEND t95 TO t86->items.
                    t91 = t91 + 1.
                  ENDWHILE.
                ELSE.
                  WHILE t91 <= t90.
                    FIND FIRST OCCURRENCE OF t89 IN SECTION OFFSET t91 OF t87 MATCH OFFSET t92.
                    IF sy-subrc = 0.
                      t93 = t92 - t91.
                    ELSE.
                      t92 = -1.
                      t93 = t90 - t91.
                    ENDIF.
                    CLEAR t95.
                    IF t93 > 0.
                      t95 = t87+t91(t93).
                    ENDIF.
                    APPEND t95 TO t86->items.
                    IF t92 < 0.
                      EXIT.
                    ENDIF.
                    t91 = t92 + t94.
                  ENDWHILE.
                ENDIF.
                IF t86->has( 2 - 1 ) = abap_false.
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                t86->load( ).
                CLEAR t85.
                READ TABLE t86->items INDEX 2 INTO t85.
                DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t96->has = abap_true.
                t96->value = t85.
                t83 = t96.
              ELSE.
                DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t97.
                t83 = t97.
              ENDIF.
              t34 = t83.
            ENDIF.
          ENDIF.
          DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t98.
          DATA(t99) = abap_true.
          IF t99 = abap_true.
            DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t100.
            DATA(t101) = VALUE string( ).
            DATA(t102) = t34.
            t101 = t102->value.
            t100 = zlnt_runtime_stri_248d3505915c=>int_optional( t101 ).
            t98 = t100.
          ELSE.
            DATA t103 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t103.
            t98 = t103.
          ENDIF.
          t51 = t98.
          t42 = t51.
        ENDIF.
        t33 = t42.
        result = t33.
        RETURN.
      ENDIF.
      DATA t104 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t104.
      DATA t105 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t105.
      DATA t106 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t106.
      DATA(t107) = t6.
      t106 = t107.
      DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
      t105 = t106->find_first_expression( i_type_9913 = t108 ).
      t104 = t105.
      DATA(t109) = VALUE abap_bool( ).
      DATA(t110) = t104.
      t109 = xsdbool( t110 IS BOUND ).
      IF t109 = abap_true.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA t113 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t113.
        DATA(t114) = t104.
        t113 = t114.
        t112 = me->resolve_constant_value( i_expr = t113 ).
        t111 = t112.
        DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t115.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        DATA(t117) = t111.
        t116 = t117.
        DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t118.
        DATA(t119) = VALUE abap_bool( ).
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA(t121) = t116.
        t120 = t121.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        t122 = t123.
        DATA(t124) = VALUE abap_bool( ).
        DATA(t125) = t120.
        IF t125 IS INITIAL.
          t124 = abap_true.
        ELSEIF t125->has = abap_false.
          t124 = abap_true.
        ENDIF.
        t119 = t124.
        IF t119 = abap_true.
          DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t126.
          t118 = t126.
        ELSE.
          DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t127.
          DATA(t128) = VALUE abap_bool( ).
          DATA(t129) = VALUE string( ).
          DATA(t130) = t116.
          t129 = t130->value.
          DATA(t131) = |'|.
          DATA(t132) = strlen( t129 ).
          DATA(t133) = VALUE i( ).
          DATA(t134) = VALUE i( ).
          DATA(t135) = VALUE string( ).
          t133 = strlen( t131 ).
          IF t133 = 0.
            t128 = abap_true.
          ELSEIF t133 <= t132.
            t134 = 0.
            t135 = t129+t134(t133).
            IF t135 = t131.
              t128 = abap_true.
            ENDIF.
          ENDIF.
          IF t128 = abap_true.
            DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t136.
            DATA(t137) = abap_true.
            IF t137 = abap_true.
              DATA(t138) = VALUE string( ).
              DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t139.
              DATA(t140) = VALUE string( ).
              DATA(t141) = t116.
              t140 = t141->value.
              DATA(t142) = |'|.
              DATA(t143) = strlen( t140 ).
              DATA(t144) = VALUE i( ).
              DATA(t145) = VALUE i( ).
              DATA(t146) = VALUE i( ).
              DATA(t147) = VALUE i( ).
              DATA(t148) = VALUE string( ).
              CREATE OBJECT t139.
              t147 = strlen( t142 ).
              t144 = 0.
              IF t147 = 0.
                WHILE t144 < t143.
                  t148 = t140+t144(1).
                  APPEND t148 TO t139->items.
                  t144 = t144 + 1.
                ENDWHILE.
              ELSE.
                WHILE t144 <= t143.
                  FIND FIRST OCCURRENCE OF t142 IN SECTION OFFSET t144 OF t140 MATCH OFFSET t145.
                  IF sy-subrc = 0.
                    t146 = t145 - t144.
                  ELSE.
                    t145 = -1.
                    t146 = t143 - t144.
                  ENDIF.
                  CLEAR t148.
                  IF t146 > 0.
                    t148 = t140+t144(t146).
                  ENDIF.
                  APPEND t148 TO t139->items.
                  IF t145 < 0.
                    EXIT.
                  ENDIF.
                  t144 = t145 + t147.
                ENDWHILE.
              ENDIF.
              IF t139->has( 2 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t139->load( ).
              CLEAR t138.
              READ TABLE t139->items INDEX 2 INTO t138.
              DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t149->has = abap_true.
              t149->value = t138.
              t136 = t149.
            ELSE.
              DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t150.
              t136 = t150.
            ENDIF.
            t116 = t136.
          ELSE.
            DATA(t151) = VALUE abap_bool( ).
            DATA(t152) = VALUE string( ).
            DATA(t153) = t116.
            t152 = t153->value.
            DATA(t154) = |`|.
            DATA(t155) = strlen( t152 ).
            DATA(t156) = VALUE i( ).
            DATA(t157) = VALUE i( ).
            DATA(t158) = VALUE string( ).
            t156 = strlen( t154 ).
            IF t156 = 0.
              t151 = abap_true.
            ELSEIF t156 <= t155.
              t157 = 0.
              t158 = t152+t157(t156).
              IF t158 = t154.
                t151 = abap_true.
              ENDIF.
            ENDIF.
            IF t151 = abap_true.
              DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t159.
              DATA(t160) = abap_true.
              IF t160 = abap_true.
                DATA(t161) = VALUE string( ).
                DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t162.
                DATA(t163) = VALUE string( ).
                DATA(t164) = t116.
                t163 = t164->value.
                DATA(t165) = |`|.
                DATA(t166) = strlen( t163 ).
                DATA(t167) = VALUE i( ).
                DATA(t168) = VALUE i( ).
                DATA(t169) = VALUE i( ).
                DATA(t170) = VALUE i( ).
                DATA(t171) = VALUE string( ).
                CREATE OBJECT t162.
                t170 = strlen( t165 ).
                t167 = 0.
                IF t170 = 0.
                  WHILE t167 < t166.
                    t171 = t163+t167(1).
                    APPEND t171 TO t162->items.
                    t167 = t167 + 1.
                  ENDWHILE.
                ELSE.
                  WHILE t167 <= t166.
                    FIND FIRST OCCURRENCE OF t165 IN SECTION OFFSET t167 OF t163 MATCH OFFSET t168.
                    IF sy-subrc = 0.
                      t169 = t168 - t167.
                    ELSE.
                      t168 = -1.
                      t169 = t166 - t167.
                    ENDIF.
                    CLEAR t171.
                    IF t169 > 0.
                      t171 = t163+t167(t169).
                    ENDIF.
                    APPEND t171 TO t162->items.
                    IF t168 < 0.
                      EXIT.
                    ENDIF.
                    t167 = t168 + t170.
                  ENDWHILE.
                ENDIF.
                IF t162->has( 2 - 1 ) = abap_false.
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                t162->load( ).
                CLEAR t161.
                READ TABLE t162->items INDEX 2 INTO t161.
                DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t172->has = abap_true.
                t172->value = t161.
                t159 = t172.
              ELSE.
                DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t173.
                t159 = t173.
              ENDIF.
              t116 = t159.
            ENDIF.
          ENDIF.
          DATA t174 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t174.
          DATA(t175) = abap_true.
          IF t175 = abap_true.
            DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t176.
            DATA(t177) = VALUE string( ).
            DATA(t178) = t116.
            t177 = t178->value.
            t176 = zlnt_runtime_stri_248d3505915c=>int_optional( t177 ).
            t174 = t176.
          ELSE.
            DATA t179 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t179.
            t174 = t179.
          ENDIF.
          t127 = t174.
          t118 = t127.
        ENDIF.
        t115 = t118.
        result = t115.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t180) = VALUE abap_bool( ).
    DATA t181 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t181.
    DATA(t182) = t2.
    t181 = t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    t183 = t184.
    DATA(t185) = VALUE abap_bool( ).
    DATA(t186) = t181.
    IF t186 IS INITIAL.
      t185 = abap_true.
    ENDIF.
    t180 = t185.
    IF t180 = abap_true.
      DATA t187 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t187.
      result = t187.
      RETURN.
    ENDIF.
    DATA t188 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t188.
    DATA t189 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t189.
    DATA t190 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t190.
    DATA(t191) = t2.
    t190 = t191.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    t189 = t190->find_first_expression( i_type_9913 = t192 ).
    t188 = t189.
    DATA(t193) = VALUE abap_bool( ).
    DATA(t194) = t188.
    t193 = xsdbool( t194 IS BOUND ).
    IF t193 = abap_true.
      DATA t195 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t195.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t197.
      DATA(t198) = abap_true.
      IF t198 = abap_true.
        DATA(t199) = VALUE string( ).
        DATA t200 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t200.
        DATA(t201) = t188.
        t200 = t201.
        t199 = t200->concat_tokens( ).
        DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t202->has = abap_true.
        t202->value = t199.
        t197 = t202.
      ELSE.
        DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t203.
        t197 = t203.
      ENDIF.
      t196 = t197.
      DATA t204 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t204.
      DATA(t205) = VALUE abap_bool( ).
      DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t206.
      DATA(t207) = t196.
      t206 = t207.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t209.
      t208 = t209.
      DATA(t210) = VALUE abap_bool( ).
      DATA(t211) = t206.
      IF t211 IS INITIAL.
        t210 = abap_true.
      ELSEIF t211->has = abap_false.
        t210 = abap_true.
      ENDIF.
      t205 = t210.
      IF t205 = abap_true.
        DATA t212 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t212.
        t204 = t212.
      ELSE.
        DATA t213 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t213.
        DATA(t214) = VALUE abap_bool( ).
        DATA(t215) = VALUE string( ).
        DATA(t216) = t196.
        t215 = t216->value.
        DATA(t217) = |'|.
        DATA(t218) = strlen( t215 ).
        DATA(t219) = VALUE i( ).
        DATA(t220) = VALUE i( ).
        DATA(t221) = VALUE string( ).
        t219 = strlen( t217 ).
        IF t219 = 0.
          t214 = abap_true.
        ELSEIF t219 <= t218.
          t220 = 0.
          t221 = t215+t220(t219).
          IF t221 = t217.
            t214 = abap_true.
          ENDIF.
        ENDIF.
        IF t214 = abap_true.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t222.
          DATA(t223) = abap_true.
          IF t223 = abap_true.
            DATA(t224) = VALUE string( ).
            DATA t225 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t225.
            DATA(t226) = VALUE string( ).
            DATA(t227) = t196.
            t226 = t227->value.
            DATA(t228) = |'|.
            DATA(t229) = strlen( t226 ).
            DATA(t230) = VALUE i( ).
            DATA(t231) = VALUE i( ).
            DATA(t232) = VALUE i( ).
            DATA(t233) = VALUE i( ).
            DATA(t234) = VALUE string( ).
            CREATE OBJECT t225.
            t233 = strlen( t228 ).
            t230 = 0.
            IF t233 = 0.
              WHILE t230 < t229.
                t234 = t226+t230(1).
                APPEND t234 TO t225->items.
                t230 = t230 + 1.
              ENDWHILE.
            ELSE.
              WHILE t230 <= t229.
                FIND FIRST OCCURRENCE OF t228 IN SECTION OFFSET t230 OF t226 MATCH OFFSET t231.
                IF sy-subrc = 0.
                  t232 = t231 - t230.
                ELSE.
                  t231 = -1.
                  t232 = t229 - t230.
                ENDIF.
                CLEAR t234.
                IF t232 > 0.
                  t234 = t226+t230(t232).
                ENDIF.
                APPEND t234 TO t225->items.
                IF t231 < 0.
                  EXIT.
                ENDIF.
                t230 = t231 + t233.
              ENDWHILE.
            ENDIF.
            IF t225->has( 2 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t225->load( ).
            CLEAR t224.
            READ TABLE t225->items INDEX 2 INTO t224.
            DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t235->has = abap_true.
            t235->value = t224.
            t222 = t235.
          ELSE.
            DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t236.
            t222 = t236.
          ENDIF.
          t196 = t222.
        ELSE.
          DATA(t237) = VALUE abap_bool( ).
          DATA(t238) = VALUE string( ).
          DATA(t239) = t196.
          t238 = t239->value.
          DATA(t240) = |`|.
          DATA(t241) = strlen( t238 ).
          DATA(t242) = VALUE i( ).
          DATA(t243) = VALUE i( ).
          DATA(t244) = VALUE string( ).
          t242 = strlen( t240 ).
          IF t242 = 0.
            t237 = abap_true.
          ELSEIF t242 <= t241.
            t243 = 0.
            t244 = t238+t243(t242).
            IF t244 = t240.
              t237 = abap_true.
            ENDIF.
          ENDIF.
          IF t237 = abap_true.
            DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t245.
            DATA(t246) = abap_true.
            IF t246 = abap_true.
              DATA(t247) = VALUE string( ).
              DATA t248 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t248.
              DATA(t249) = VALUE string( ).
              DATA(t250) = t196.
              t249 = t250->value.
              DATA(t251) = |`|.
              DATA(t252) = strlen( t249 ).
              DATA(t253) = VALUE i( ).
              DATA(t254) = VALUE i( ).
              DATA(t255) = VALUE i( ).
              DATA(t256) = VALUE i( ).
              DATA(t257) = VALUE string( ).
              CREATE OBJECT t248.
              t256 = strlen( t251 ).
              t253 = 0.
              IF t256 = 0.
                WHILE t253 < t252.
                  t257 = t249+t253(1).
                  APPEND t257 TO t248->items.
                  t253 = t253 + 1.
                ENDWHILE.
              ELSE.
                WHILE t253 <= t252.
                  FIND FIRST OCCURRENCE OF t251 IN SECTION OFFSET t253 OF t249 MATCH OFFSET t254.
                  IF sy-subrc = 0.
                    t255 = t254 - t253.
                  ELSE.
                    t254 = -1.
                    t255 = t252 - t253.
                  ENDIF.
                  CLEAR t257.
                  IF t255 > 0.
                    t257 = t249+t253(t255).
                  ENDIF.
                  APPEND t257 TO t248->items.
                  IF t254 < 0.
                    EXIT.
                  ENDIF.
                  t253 = t254 + t256.
                ENDWHILE.
              ENDIF.
              IF t248->has( 2 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t248->load( ).
              CLEAR t247.
              READ TABLE t248->items INDEX 2 INTO t247.
              DATA(t258) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t258->has = abap_true.
              t258->value = t247.
              t245 = t258.
            ELSE.
              DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t259.
              t245 = t259.
            ENDIF.
            t196 = t245.
          ENDIF.
        ENDIF.
        DATA t260 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t260.
        DATA(t261) = abap_true.
        IF t261 = abap_true.
          DATA t262 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t262.
          DATA(t263) = VALUE string( ).
          DATA(t264) = t196.
          t263 = t264->value.
          t262 = zlnt_runtime_stri_248d3505915c=>int_optional( t263 ).
          t260 = t262.
        ELSE.
          DATA t265 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t265.
          t260 = t265.
        ENDIF.
        t213 = t260.
        t204 = t213.
      ENDIF.
      t195 = t204.
      result = t195.
      RETURN.
    ENDIF.
    DATA t266 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t266.
    DATA t267 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t267.
    DATA t268 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t268.
    DATA(t269) = t2.
    t268 = t269.
    DATA(t270) = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
    t267 = t268->find_first_expression( i_type_9913 = t270 ).
    t266 = t267.
    DATA(t271) = VALUE abap_bool( ).
    DATA(t272) = t266.
    t271 = xsdbool( t272 IS BOUND ).
    IF t271 = abap_true.
      DATA t273 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t273.
      DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t274.
      DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t275.
      DATA(t276) = abap_true.
      IF t276 = abap_true.
        DATA(t277) = VALUE string( ).
        DATA t278 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t278.
        DATA(t279) = t266.
        t278 = t279.
        t277 = t278->concat_tokens( ).
        DATA(t280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t280->has = abap_true.
        t280->value = t277.
        t275 = t280.
      ELSE.
        DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t281.
        t275 = t281.
      ENDIF.
      t274 = t275.
      DATA t282 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t282.
      DATA(t283) = VALUE abap_bool( ).
      DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t284.
      DATA(t285) = t274.
      t284 = t285.
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t286.
      DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t287.
      t286 = t287.
      DATA(t288) = VALUE abap_bool( ).
      DATA(t289) = t284.
      IF t289 IS INITIAL.
        t288 = abap_true.
      ELSEIF t289->has = abap_false.
        t288 = abap_true.
      ENDIF.
      t283 = t288.
      IF t283 = abap_true.
        DATA t290 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t290.
        t282 = t290.
      ELSE.
        DATA t291 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t291.
        DATA(t292) = VALUE abap_bool( ).
        DATA(t293) = VALUE string( ).
        DATA(t294) = t274.
        t293 = t294->value.
        DATA(t295) = |'|.
        DATA(t296) = strlen( t293 ).
        DATA(t297) = VALUE i( ).
        DATA(t298) = VALUE i( ).
        DATA(t299) = VALUE string( ).
        t297 = strlen( t295 ).
        IF t297 = 0.
          t292 = abap_true.
        ELSEIF t297 <= t296.
          t298 = 0.
          t299 = t293+t298(t297).
          IF t299 = t295.
            t292 = abap_true.
          ENDIF.
        ENDIF.
        IF t292 = abap_true.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t300.
          DATA(t301) = abap_true.
          IF t301 = abap_true.
            DATA(t302) = VALUE string( ).
            DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t303.
            DATA(t304) = VALUE string( ).
            DATA(t305) = t274.
            t304 = t305->value.
            DATA(t306) = |'|.
            DATA(t307) = strlen( t304 ).
            DATA(t308) = VALUE i( ).
            DATA(t309) = VALUE i( ).
            DATA(t310) = VALUE i( ).
            DATA(t311) = VALUE i( ).
            DATA(t312) = VALUE string( ).
            CREATE OBJECT t303.
            t311 = strlen( t306 ).
            t308 = 0.
            IF t311 = 0.
              WHILE t308 < t307.
                t312 = t304+t308(1).
                APPEND t312 TO t303->items.
                t308 = t308 + 1.
              ENDWHILE.
            ELSE.
              WHILE t308 <= t307.
                FIND FIRST OCCURRENCE OF t306 IN SECTION OFFSET t308 OF t304 MATCH OFFSET t309.
                IF sy-subrc = 0.
                  t310 = t309 - t308.
                ELSE.
                  t309 = -1.
                  t310 = t307 - t308.
                ENDIF.
                CLEAR t312.
                IF t310 > 0.
                  t312 = t304+t308(t310).
                ENDIF.
                APPEND t312 TO t303->items.
                IF t309 < 0.
                  EXIT.
                ENDIF.
                t308 = t309 + t311.
              ENDWHILE.
            ENDIF.
            IF t303->has( 2 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t303->load( ).
            CLEAR t302.
            READ TABLE t303->items INDEX 2 INTO t302.
            DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t313->has = abap_true.
            t313->value = t302.
            t300 = t313.
          ELSE.
            DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t314.
            t300 = t314.
          ENDIF.
          t274 = t300.
        ELSE.
          DATA(t315) = VALUE abap_bool( ).
          DATA(t316) = VALUE string( ).
          DATA(t317) = t274.
          t316 = t317->value.
          DATA(t318) = |`|.
          DATA(t319) = strlen( t316 ).
          DATA(t320) = VALUE i( ).
          DATA(t321) = VALUE i( ).
          DATA(t322) = VALUE string( ).
          t320 = strlen( t318 ).
          IF t320 = 0.
            t315 = abap_true.
          ELSEIF t320 <= t319.
            t321 = 0.
            t322 = t316+t321(t320).
            IF t322 = t318.
              t315 = abap_true.
            ENDIF.
          ENDIF.
          IF t315 = abap_true.
            DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t323.
            DATA(t324) = abap_true.
            IF t324 = abap_true.
              DATA(t325) = VALUE string( ).
              DATA t326 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t326.
              DATA(t327) = VALUE string( ).
              DATA(t328) = t274.
              t327 = t328->value.
              DATA(t329) = |`|.
              DATA(t330) = strlen( t327 ).
              DATA(t331) = VALUE i( ).
              DATA(t332) = VALUE i( ).
              DATA(t333) = VALUE i( ).
              DATA(t334) = VALUE i( ).
              DATA(t335) = VALUE string( ).
              CREATE OBJECT t326.
              t334 = strlen( t329 ).
              t331 = 0.
              IF t334 = 0.
                WHILE t331 < t330.
                  t335 = t327+t331(1).
                  APPEND t335 TO t326->items.
                  t331 = t331 + 1.
                ENDWHILE.
              ELSE.
                WHILE t331 <= t330.
                  FIND FIRST OCCURRENCE OF t329 IN SECTION OFFSET t331 OF t327 MATCH OFFSET t332.
                  IF sy-subrc = 0.
                    t333 = t332 - t331.
                  ELSE.
                    t332 = -1.
                    t333 = t330 - t331.
                  ENDIF.
                  CLEAR t335.
                  IF t333 > 0.
                    t335 = t327+t331(t333).
                  ENDIF.
                  APPEND t335 TO t326->items.
                  IF t332 < 0.
                    EXIT.
                  ENDIF.
                  t331 = t332 + t334.
                ENDWHILE.
              ENDIF.
              IF t326->has( 2 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t326->load( ).
              CLEAR t325.
              READ TABLE t326->items INDEX 2 INTO t325.
              DATA(t336) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t336->has = abap_true.
              t336->value = t325.
              t323 = t336.
            ELSE.
              DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t337.
              t323 = t337.
            ENDIF.
            t274 = t323.
          ENDIF.
        ENDIF.
        DATA t338 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t338.
        DATA(t339) = abap_true.
        IF t339 = abap_true.
          DATA t340 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t340.
          DATA(t341) = VALUE string( ).
          DATA(t342) = t274.
          t341 = t342->value.
          t340 = zlnt_runtime_stri_248d3505915c=>int_optional( t341 ).
          t338 = t340.
        ELSE.
          DATA t343 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t343.
          t338 = t343.
        ENDIF.
        t291 = t338.
        t282 = t291.
      ENDIF.
      t273 = t282.
      result = t273.
      RETURN.
    ENDIF.
    DATA t344 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t344.
    DATA t345 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t345.
    DATA t346 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t346.
    DATA(t347) = t2.
    t346 = t347.
    DATA(t348) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
    t345 = t346->find_first_expression( i_type_9913 = t348 ).
    t344 = t345.
    DATA(t349) = VALUE abap_bool( ).
    DATA(t350) = t344.
    t349 = xsdbool( t350 IS BOUND ).
    IF t349 = abap_true.
      DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t351.
      DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t352.
      DATA t353 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t353.
      DATA(t354) = t344.
      t353 = t354.
      t352 = me->resolve_constant_value( i_expr = t353 ).
      t351 = t352.
      DATA t355 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t355.
      DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t356.
      DATA(t357) = t351.
      t356 = t357.
      DATA t358 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t358.
      DATA(t359) = VALUE abap_bool( ).
      DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t360.
      DATA(t361) = t356.
      t360 = t361.
      DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t362.
      DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t363.
      t362 = t363.
      DATA(t364) = VALUE abap_bool( ).
      DATA(t365) = t360.
      IF t365 IS INITIAL.
        t364 = abap_true.
      ELSEIF t365->has = abap_false.
        t364 = abap_true.
      ENDIF.
      t359 = t364.
      IF t359 = abap_true.
        DATA t366 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t366.
        t358 = t366.
      ELSE.
        DATA t367 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t367.
        DATA(t368) = VALUE abap_bool( ).
        DATA(t369) = VALUE string( ).
        DATA(t370) = t356.
        t369 = t370->value.
        DATA(t371) = |'|.
        DATA(t372) = strlen( t369 ).
        DATA(t373) = VALUE i( ).
        DATA(t374) = VALUE i( ).
        DATA(t375) = VALUE string( ).
        t373 = strlen( t371 ).
        IF t373 = 0.
          t368 = abap_true.
        ELSEIF t373 <= t372.
          t374 = 0.
          t375 = t369+t374(t373).
          IF t375 = t371.
            t368 = abap_true.
          ENDIF.
        ENDIF.
        IF t368 = abap_true.
          DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t376.
          DATA(t377) = abap_true.
          IF t377 = abap_true.
            DATA(t378) = VALUE string( ).
            DATA t379 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t379.
            DATA(t380) = VALUE string( ).
            DATA(t381) = t356.
            t380 = t381->value.
            DATA(t382) = |'|.
            DATA(t383) = strlen( t380 ).
            DATA(t384) = VALUE i( ).
            DATA(t385) = VALUE i( ).
            DATA(t386) = VALUE i( ).
            DATA(t387) = VALUE i( ).
            DATA(t388) = VALUE string( ).
            CREATE OBJECT t379.
            t387 = strlen( t382 ).
            t384 = 0.
            IF t387 = 0.
              WHILE t384 < t383.
                t388 = t380+t384(1).
                APPEND t388 TO t379->items.
                t384 = t384 + 1.
              ENDWHILE.
            ELSE.
              WHILE t384 <= t383.
                FIND FIRST OCCURRENCE OF t382 IN SECTION OFFSET t384 OF t380 MATCH OFFSET t385.
                IF sy-subrc = 0.
                  t386 = t385 - t384.
                ELSE.
                  t385 = -1.
                  t386 = t383 - t384.
                ENDIF.
                CLEAR t388.
                IF t386 > 0.
                  t388 = t380+t384(t386).
                ENDIF.
                APPEND t388 TO t379->items.
                IF t385 < 0.
                  EXIT.
                ENDIF.
                t384 = t385 + t387.
              ENDWHILE.
            ENDIF.
            IF t379->has( 2 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t379->load( ).
            CLEAR t378.
            READ TABLE t379->items INDEX 2 INTO t378.
            DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t389->has = abap_true.
            t389->value = t378.
            t376 = t389.
          ELSE.
            DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t390.
            t376 = t390.
          ENDIF.
          t356 = t376.
        ELSE.
          DATA(t391) = VALUE abap_bool( ).
          DATA(t392) = VALUE string( ).
          DATA(t393) = t356.
          t392 = t393->value.
          DATA(t394) = |`|.
          DATA(t395) = strlen( t392 ).
          DATA(t396) = VALUE i( ).
          DATA(t397) = VALUE i( ).
          DATA(t398) = VALUE string( ).
          t396 = strlen( t394 ).
          IF t396 = 0.
            t391 = abap_true.
          ELSEIF t396 <= t395.
            t397 = 0.
            t398 = t392+t397(t396).
            IF t398 = t394.
              t391 = abap_true.
            ENDIF.
          ENDIF.
          IF t391 = abap_true.
            DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t399.
            DATA(t400) = abap_true.
            IF t400 = abap_true.
              DATA(t401) = VALUE string( ).
              DATA t402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t402.
              DATA(t403) = VALUE string( ).
              DATA(t404) = t356.
              t403 = t404->value.
              DATA(t405) = |`|.
              DATA(t406) = strlen( t403 ).
              DATA(t407) = VALUE i( ).
              DATA(t408) = VALUE i( ).
              DATA(t409) = VALUE i( ).
              DATA(t410) = VALUE i( ).
              DATA(t411) = VALUE string( ).
              CREATE OBJECT t402.
              t410 = strlen( t405 ).
              t407 = 0.
              IF t410 = 0.
                WHILE t407 < t406.
                  t411 = t403+t407(1).
                  APPEND t411 TO t402->items.
                  t407 = t407 + 1.
                ENDWHILE.
              ELSE.
                WHILE t407 <= t406.
                  FIND FIRST OCCURRENCE OF t405 IN SECTION OFFSET t407 OF t403 MATCH OFFSET t408.
                  IF sy-subrc = 0.
                    t409 = t408 - t407.
                  ELSE.
                    t408 = -1.
                    t409 = t406 - t407.
                  ENDIF.
                  CLEAR t411.
                  IF t409 > 0.
                    t411 = t403+t407(t409).
                  ENDIF.
                  APPEND t411 TO t402->items.
                  IF t408 < 0.
                    EXIT.
                  ENDIF.
                  t407 = t408 + t410.
                ENDWHILE.
              ENDIF.
              IF t402->has( 2 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t402->load( ).
              CLEAR t401.
              READ TABLE t402->items INDEX 2 INTO t401.
              DATA(t412) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t412->has = abap_true.
              t412->value = t401.
              t399 = t412.
            ELSE.
              DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t413.
              t399 = t413.
            ENDIF.
            t356 = t399.
          ENDIF.
        ENDIF.
        DATA t414 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t414.
        DATA(t415) = abap_true.
        IF t415 = abap_true.
          DATA t416 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t416.
          DATA(t417) = VALUE string( ).
          DATA(t418) = t356.
          t417 = t418->value.
          t416 = zlnt_runtime_stri_248d3505915c=>int_optional( t417 ).
          t414 = t416.
        ELSE.
          DATA t419 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t419.
          t414 = t419.
        ENDIF.
        t367 = t414.
        t358 = t367.
      ENDIF.
      t355 = t358.
      result = t355.
      RETURN.
    ENDIF.
    DATA t420 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t420.
    DATA t421 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t421.
    DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t422.
    DATA(t423) = abap_true.
    IF t423 = abap_true.
      DATA(t424) = |Unexpected, findLength|.
      DATA(t425) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t425->has = abap_true.
      t425->value = t424.
      t422 = t425.
    ELSE.
      DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t426.
      t422 = t426.
    ENDIF.
    t421 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t422 ).
    t420 = NEW #( ).
    t420->payload = t421.
    CLEAR t420->source_value.
    IF t421 IS BOUND.
      DATA t427 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t427.
      DATA t428 TYPE REF TO object.
      CLEAR t428.
      CLEAR t427.
      t428 = t421.
      TRY.
          t420->source_value ?= t428.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t420->source_value IS NOT BOUND.
        TRY.
            t427 ?= t421.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t427 IS BOUND.
          t420->source_value = t427->source( ).
        ENDIF.
        IF t420->source_value IS NOT BOUND.
          CREATE OBJECT t420->source_value.
          t420->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t420->source_value->oval = t421.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t420.
  ENDMETHOD.

  METHOD parse_int.
    DATA(t1) = i_text.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE string.
    DATA(t12) = t1.
    t11 = t12->value.
    DATA(t13) = |'|.
    DATA(t14) = strlen( t11 ).
    DATA t15 TYPE i.
    DATA(t16) = VALUE i( ).
    DATA(t17) = VALUE string( ).
    t15 = strlen( t13 ).
    IF t15 = 0.
      t10 = abap_true.
    ELSEIF t15 <= t14.
      t16 = 0.
      t17 = t11+t16(t15).
      IF t17 = t13.
        t10 = abap_true.
      ENDIF.
    ENDIF.
    IF t10 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = VALUE string( ).
        DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t22 TYPE string.
        DATA(t23) = t1.
        t22 = t23->value.
        DATA(t24) = |'|.
        DATA(t25) = strlen( t22 ).
        DATA t26 TYPE i.
        DATA(t27) = VALUE i( ).
        DATA(t28) = VALUE i( ).
        DATA t29 TYPE i.
        DATA(t30) = VALUE string( ).
        CREATE OBJECT t21.
        t29 = strlen( t24 ).
        t26 = 0.
        IF t29 = 0.
          WHILE t26 < t25.
            t30 = t22+t26(1).
            APPEND t30 TO t21->items.
            t26 = t26 + 1.
          ENDWHILE.
        ELSE.
          WHILE t26 <= t25.
            FIND FIRST OCCURRENCE OF t24 IN SECTION OFFSET t26 OF t22 MATCH OFFSET t27.
            IF sy-subrc = 0.
              t28 = t27 - t26.
            ELSE.
              t27 = -1.
              t28 = t25 - t26.
            ENDIF.
            CLEAR t30.
            IF t28 > 0.
              t30 = t22+t26(t28).
            ENDIF.
            APPEND t30 TO t21->items.
            IF t27 < 0.
              EXIT.
            ENDIF.
            t26 = t27 + t29.
          ENDWHILE.
        ENDIF.
        IF t21->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t21->load( ).
        CLEAR t20.
        READ TABLE t21->items INDEX 2 INTO t20.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t20.
        t18 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t18 = t32.
      ENDIF.
      t1 = t18.
    ELSE.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE string.
      DATA(t35) = t1.
      t34 = t35->value.
      DATA(t36) = |`|.
      DATA(t37) = strlen( t34 ).
      DATA t38 TYPE i.
      DATA(t39) = VALUE i( ).
      DATA(t40) = VALUE string( ).
      t38 = strlen( t36 ).
      IF t38 = 0.
        t33 = abap_true.
      ELSEIF t38 <= t37.
        t39 = 0.
        t40 = t34+t39(t38).
        IF t40 = t36.
          t33 = abap_true.
        ENDIF.
      ENDIF.
      IF t33 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA(t42) = abap_true.
        IF t42 = abap_true.
          DATA(t43) = VALUE string( ).
          DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t45 TYPE string.
          DATA(t46) = t1.
          t45 = t46->value.
          DATA(t47) = |`|.
          DATA(t48) = strlen( t45 ).
          DATA t49 TYPE i.
          DATA(t50) = VALUE i( ).
          DATA(t51) = VALUE i( ).
          DATA t52 TYPE i.
          DATA(t53) = VALUE string( ).
          CREATE OBJECT t44.
          t52 = strlen( t47 ).
          t49 = 0.
          IF t52 = 0.
            WHILE t49 < t48.
              t53 = t45+t49(1).
              APPEND t53 TO t44->items.
              t49 = t49 + 1.
            ENDWHILE.
          ELSE.
            WHILE t49 <= t48.
              FIND FIRST OCCURRENCE OF t47 IN SECTION OFFSET t49 OF t45 MATCH OFFSET t50.
              IF sy-subrc = 0.
                t51 = t50 - t49.
              ELSE.
                t50 = -1.
                t51 = t48 - t49.
              ENDIF.
              CLEAR t53.
              IF t51 > 0.
                t53 = t45+t49(t51).
              ENDIF.
              APPEND t53 TO t44->items.
              IF t50 < 0.
                EXIT.
              ENDIF.
              t49 = t50 + t52.
            ENDWHILE.
          ENDIF.
          IF t44->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t44->load( ).
          CLEAR t43.
          READ TABLE t44->items INDEX 2 INTO t43.
          DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t54->has = abap_true.
          t54->value = t43.
          t41 = t54.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t55.
          t41 = t55.
        ENDIF.
        t1 = t41.
      ENDIF.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t56.
    DATA(t57) = abap_true.
    IF t57 = abap_true.
      DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t59 TYPE string.
      DATA(t60) = t1.
      t59 = t60->value.
      t58 = zlnt_runtime_stri_248d3505915c=>int_optional( t59 ).
      t56 = t58.
    ELSE.
      DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t61.
      t56 = t61.
    ENDIF.
    result = t56.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d782_35a94517cf75.
  ENDMETHOD.
ENDCLASS.
