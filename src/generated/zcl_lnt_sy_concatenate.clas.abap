* TS: src/abap/5_syntax/statements/concatenate.ts:11:1 Concatenate
CLASS zcl_lnt_sy_concatenate DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_concatenate IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t8) = |BYTE|.
    t6 = t1->find_direct_token_by_text( i_text = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = xsdbool( t6 IS INITIAL ).
    t11 = xsdbool( t12 = abap_false ).
    t4 = t11.
    t3 = t4.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t19) = |LINES|.
    t17 = t1->find_direct_token_by_text( i_text = t19 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = xsdbool( t17 IS INITIAL ).
    t22 = xsdbool( t23 = abap_false ).
    t15 = t22.
    t14 = t15.
    DATA(t25) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d.
    t27 = t1->find_first_expression( i_type_9913 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = xsdbool( t27 IS INITIAL ).
    t32 = xsdbool( t33 = abap_false ).
    t25 = t32.
    IF t25 = abap_true.
      DATA(t36) = |CONCATENATE with table expression not possible|.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t37 = t2->issues.
      DATA t39 TYPE REF TO zcl_lnt_issue.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      t41 = t1->get_first_token( ).
      DATA t44 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t39 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t41 i_message_26cb = t36 i_fix = t44 ).
      t37->load( ).
      APPEND t39 TO t37->items.
      t37->save( ).
      RETURN.
    ENDIF.
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t46 = t1->find_first_expression( i_type_9913 = t48 ).
    t45 = t46.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    DATA t51 TYPE REF TO zcl_lnt_expression_node.
    t51 = t45.
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    DATA(t54) = xsdbool( t51 IS INITIAL ).
    IF t54 = abap_true.
    ELSE.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      t58 = t51.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t57 = t58->find_direct_expression( i_type_9913 = t60 ).
      t53 = t57.
    ENDIF.
    t49 = t53.
    DATA t61 TYPE abap_bool.
    t61 = xsdbool( t49 IS BOUND ).
    IF t61 = abap_true.
      IF t3 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        t64 = t49.
        DATA t67 TYPE REF TO zcl_lnt_x_string_type.
        DATA t68 TYPE REF TO zcl_lnt_abstract_type_data.
        t67 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t68 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t64 i_input_967e = t2 i_type_9913 = t67 ).
      ELSE.
        DATA t69 TYPE REF TO zcl_lnt_expression_node.
        t69 = t49.
        DATA t72 TYPE REF TO zcl_lnt_string_type.
        DATA t73 TYPE REF TO zcl_lnt_abstract_type_data.
        t72 = zcl_lnt_string_type=>get_db65( i_input_967e = t73 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t69 i_input_967e = t2 i_type_9913 = t72 ).
      ENDIF.
    ELSE.
      DATA t74 TYPE abap_bool.
      t74 = xsdbool( t45 IS BOUND ).
      IF t74 = abap_true.
        DATA t76 TYPE REF TO zcl_lnt_abstract_type.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        DATA t78 TYPE REF TO zcl_lnt_expression_node.
        t78 = t45.
        t77 = zcl_lnt_sy_target=>run_syntax( i_node = t78 i_input_967e = t2 ).
        t76 = t77.
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = VALUE abap_bool( ).
        IF t3 = abap_true.
          DATA t84 TYPE abap_bool.
          DATA t85 TYPE REF TO zcl_lnt_type_utils.
          DATA t86 TYPE REF TO zcl_lnt_current_scope.
          t86 = t2->scope.
          t85 = NEW zcl_lnt_type_utils( i_scope = t86 ).
          t84 = t85->is_hex_like( i_type_9913 = t76 ).
          t82 = t84.
        ELSE.
          DATA t89 TYPE abap_bool.
          DATA t90 TYPE REF TO zcl_lnt_type_utils.
          DATA t91 TYPE REF TO zcl_lnt_current_scope.
          t91 = t2->scope.
          t90 = NEW zcl_lnt_type_utils( i_scope = t91 ).
          t89 = t90->is_char_like_strict( i_type_9913 = t76 ).
          t82 = t89.
        ENDIF.
        t81 = t82.
        DATA t94 TYPE abap_bool.
        t94 = xsdbool( t81 = abap_false ).
        IF t94 = abap_true.
          DATA(t98) = |Target type not compatible|.
          DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t99 = t2->issues.
          DATA t101 TYPE REF TO zcl_lnt_issue.
          DATA t103 TYPE REF TO zcl_lnt_abstract_token.
          t103 = t1->get_first_token( ).
          DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t101 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t103 i_message_26cb = t98 i_fix = t106 ).
          t99->load( ).
          APPEND t101 TO t99->items.
          t99->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t14 = abap_true.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t108 = t1->find_direct_expressions( i_type_9913 = t110 ).
      DATA t111 TYPE REF TO zcl_lnt_expression_node.
      DATA t112 TYPE REF TO object.
      DATA(t113) = VALUE i( ).
      DO.
        t108->load( ).
        IF t113 >= lines( t108->items ).
          EXIT.
        ENDIF.
        CLEAR t112.
        READ TABLE t108->items INDEX t113 + 1 INTO t112.
        t113 = t113 + 1.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        CLEAR t111.
        IF t112 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t114 ?= t112.
          DATA t115 TYPE REF TO object.
          t115 = t114->as_ref( ).
          t111 ?= t115.
        ELSE.
          t111 ?= t112.
        ENDIF.
        DATA t116 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t116.
        DATA t117 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t117.
        DATA t118 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t118.
        t118 = t111.
        DATA t123 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t123.
        DATA t124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t125.
        DATA t126 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t126.
        t117 = zcl_lnt_sy_source=>run_syntax( i_node = t118 i_input_967e = t2 i_target_type = t123 i_write_reference = t124 i_allow_generic_deference = t125 i_read_reference = t126 ).
        t116 = t117.
        DATA(t127) = VALUE abap_bool( ).
        DATA t128 TYPE abap_bool.
        DATA t129 TYPE abap_bool.
        DATA t130 TYPE abap_bool.
        t130 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_unknown_type ).
        t129 = xsdbool( t130 = abap_false ).
        t128 = t129.
        IF t129 = abap_true.
          DATA t132 TYPE abap_bool.
          DATA t133 TYPE abap_bool.
          t133 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_void_type ).
          t132 = xsdbool( t133 = abap_false ).
          t128 = t132.
        ENDIF.
        t127 = t128.
        IF t128 = abap_true.
          DATA t135 TYPE abap_bool.
          DATA t136 TYPE abap_bool.
          t136 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t135 = xsdbool( t136 = abap_false ).
          t127 = t135.
        ENDIF.
        IF t127 = abap_true.
          DATA(t139) = |Source must be an internal table|.
          DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t140 = t2->issues.
          DATA t142 TYPE REF TO zcl_lnt_issue.
          DATA t144 TYPE REF TO zcl_lnt_abstract_token.
          t144 = t1->get_first_token( ).
          DATA t147 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t147.
          t142 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t144 i_message_26cb = t139 i_fix = t147 ).
          t140->load( ).
          APPEND t142 TO t140->items.
          t140->save( ).
          RETURN.
        ENDIF.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = VALUE abap_bool( ).
        DATA t150 TYPE abap_bool.
        DATA t151 TYPE abap_bool.
        t151 = xsdbool( t14 = abap_true ).
        t150 = t151.
        IF t151 = abap_true.
          DATA t154 TYPE abap_bool.
          t154 = xsdbool( t3 = abap_true ).
          t150 = t154.
        ENDIF.
        t149 = t150.
        IF t150 = abap_true.
          DATA t157 TYPE abap_bool.
          t157 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t149 = t157.
        ENDIF.
        t148 = t149.
        IF t149 = abap_true.
          DATA t159 TYPE abap_bool.
          DATA t160 TYPE REF TO zcl_lnt_abstract_type.
          DATA t162 TYPE REF TO zcl_lnt_ty_table_type.
          t162 ?= t116.
          DATA t164 TYPE REF TO zcl_lnt_abstract_type.
          t164 = t162->row_type.
          t160 = t164.
          t159 = xsdbool( t160 IS BOUND AND t160 IS INSTANCE OF zcl_lnt_structure_type ).
          t148 = t159.
        ENDIF.
        IF t148 = abap_true.
          DATA(t167) = |Source row type must not be a structure in BYTE mode|.
          DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t168 = t2->issues.
          DATA t170 TYPE REF TO zcl_lnt_issue.
          DATA t172 TYPE REF TO zcl_lnt_abstract_token.
          t172 = t1->get_first_token( ).
          DATA t175 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t175.
          t170 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t172 i_message_26cb = t167 i_fix = t175 ).
          t168->load( ).
          APPEND t170 TO t168->items.
          t168->save( ).
          RETURN.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t176 = t1->find_direct_expressions( i_type_9913 = t178 ).
    DATA t179 TYPE REF TO zcl_lnt_expression_node.
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
      DATA t184 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t184.
      DATA t185 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t185.
      DATA t186 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t186.
      t186 = t179.
      DATA t191 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t191.
      DATA t192 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t192.
      DATA t193 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t193.
      DATA t194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t194.
      t185 = zcl_lnt_sy_source=>run_syntax( i_node = t186 i_input_967e = t2 i_target_type = t191 i_write_reference = t192 i_allow_generic_deference = t193 i_read_reference = t194 ).
      t184 = t185.
      DATA(t195) = VALUE abap_bool( ).
      DATA(t196) = VALUE abap_bool( ).
      IF t3 = abap_true.
        DATA t198 TYPE abap_bool.
        DATA t199 TYPE REF TO zcl_lnt_type_utils.
        DATA t200 TYPE REF TO zcl_lnt_current_scope.
        t200 = t2->scope.
        t199 = NEW zcl_lnt_type_utils( i_scope = t200 ).
        t198 = t199->is_hex_like( i_type_9913 = t184 ).
        t196 = t198.
      ELSE.
        DATA t203 TYPE abap_bool.
        DATA t204 TYPE REF TO zcl_lnt_type_utils.
        DATA t205 TYPE REF TO zcl_lnt_current_scope.
        t205 = t2->scope.
        t204 = NEW zcl_lnt_type_utils( i_scope = t205 ).
        t203 = t204->is_char_like_strict( i_type_9913 = t184 ).
        t196 = t203.
      ENDIF.
      t195 = t196.
      DATA t208 TYPE abap_bool.
      t208 = xsdbool( t195 = abap_false ).
      IF t208 = abap_true.
        DATA(t212) = |Source type not compatible|.
        DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t213 = t2->issues.
        DATA t215 TYPE REF TO zcl_lnt_issue.
        DATA t217 TYPE REF TO zcl_lnt_abstract_token.
        t217 = t1->get_first_token( ).
        DATA t220 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t220.
        t215 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t217 i_message_26cb = t212 i_fix = t220 ).
        t213->load( ).
        APPEND t215 TO t213->items.
        t213->save( ).
        RETURN.
      ENDIF.
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d879_686b4e830ffb.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
