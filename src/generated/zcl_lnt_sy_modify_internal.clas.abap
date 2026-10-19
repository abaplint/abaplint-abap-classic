* TS: src/abap/5_syntax/statements/modify_internal.ts:11:1 ModifyInternal
CLASS zcl_lnt_sy_modify_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_modify_internal IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t1->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
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
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      t12 = t6.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t2 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t22 = t1->find_first_expression( i_type_9913 = t24 ).
    t21 = t22.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    t25 = t21.
    DATA t27 TYPE abap_bool.
    t27 = xsdbool( t25 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      t31 = t25.
      t30 = zcl_lnt_sy_target=>run_syntax( i_node = t31 i_input_967e = t2 ).
      t29 = t30.
      DATA(t34) = VALUE abap_bool( ).
      DATA t35 TYPE abap_bool.
      DATA t36 TYPE abap_bool.
      t36 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_void_type ).
      t35 = t36.
      IF t36 = abap_false.
        DATA t38 TYPE abap_bool.
        t38 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_any_type ).
        t35 = t38.
      ENDIF.
      t34 = t35.
      IF t35 = abap_false.
        DATA t40 TYPE abap_bool.
        t40 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown_type ).
        t34 = t40.
      ENDIF.
      IF t34 = abap_true.
      ELSE.
        DATA t42 TYPE abap_bool.
        t42 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t42 = abap_true.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = VALUE abap_bool( ).
          DATA(t46) = VALUE abap_bool( ).
          DATA t48 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t50) = |TABLE|.
          t48 = t1->find_direct_token_by_text( i_text = t50 ).
          DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t46 = xsdbool( t48 IS INITIAL ).
          t45 = t46.
          IF t46 = abap_true.
            DATA t55 TYPE abap_bool.
            DATA t56 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t58) = |INDEX|.
            t56 = t1->find_direct_token_by_text( i_text = t58 ).
            t55 = xsdbool( t56 IS BOUND ).
            t45 = t55.
          ENDIF.
          t44 = t45.
          IF t45 = abap_true.
            DATA(t59) = VALUE abap_bool( ).
            DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t62 TYPE REF TO zcl_lnt_ty_table_type.
            t62 ?= t29.
            DATA t65 TYPE REF TO zcl_lnt_itable_key.
            DATA t66 TYPE REF TO zcl_lnt_itable_key.
            DATA t67 TYPE REF TO zcl_lnt_itable_options.
            t67 = t62->options.
            t66 = t67->zlnt_view_read_sr_48b89cc62ab9( ).
            t65 = t66.
            DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t70) = xsdbool( t65 IS INITIAL ).
            IF t70 = abap_true.
            ELSE.
              DATA t73 TYPE string.
              DATA t74 TYPE REF TO zcl_lnt_itable_key.
              t74 = t65.
              t73 = t74->zlnt_view_read_sr_f361ef311f50( ).
              DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t76->has = abap_true.
              t76->value = t73.
              t69 = t76.
            ENDIF.
            t60 = t69.
            DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t79) = |HASHED|.
            DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t80->has = abap_true.
            t80->value = t79.
            t77 = t80.
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = VALUE abap_bool( ).
            IF t60 IS BOUND.
              t82 = t60->has.
            ENDIF.
            IF t77 IS BOUND.
              t83 = t77->has.
            ENDIF.
            IF t82 = t83.
              IF t82 = abap_false.
                t59 = abap_true.
              ELSEIF t60->value = t77->value.
                t59 = abap_true.
              ENDIF.
            ENDIF.
            t44 = t59.
          ENDIF.
          IF t44 = abap_true.
            DATA(t85) = |Implicit or explicit index operation on hashed table is not |.
            t85 = t85 && |possible|.
            DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t86 = t2->issues.
            DATA t88 TYPE REF TO zcl_lnt_issue.
            DATA t90 TYPE REF TO zcl_lnt_abstract_token.
            t90 = t1->get_first_token( ).
            DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t88 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t90 i_message_26cb = t85 i_fix = t93 ).
            t86->load( ).
            APPEND t88 TO t86->items.
            t86->save( ).
            RETURN.
          ENDIF.
          DATA(t94) = VALUE abap_bool( ).
          DATA t95 TYPE abap_bool.
          DATA t96 TYPE abap_bool.
          DATA t97 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t99) = |TABLE|.
          t97 = t1->find_direct_token_by_text( i_text = t99 ).
          t96 = xsdbool( t97 IS BOUND ).
          t95 = t96.
          IF t96 = abap_true.
            DATA t100 TYPE abap_bool.
            DATA t101 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t103) = |INDEX|.
            t101 = t1->find_direct_token_by_text( i_text = t103 ).
            t100 = xsdbool( t101 IS BOUND ).
            t95 = t100.
          ENDIF.
          t94 = t95.
          IF t95 = abap_true.
            DATA t104 TYPE abap_bool.
            DATA t105 TYPE abap_bool.
            DATA t107 TYPE REF TO zcl_lnt_ty_table_type.
            t107 ?= t29.
            DATA t109 TYPE abap_bool.
            DATA t110 TYPE REF TO zcl_lnt_itable_options.
            t110 = t107->options.
            t109 = t110->zlnt_view_read_sr_ec4602663c93( ).
            t105 = t109.
            t104 = xsdbool( t105 = abap_false ).
            t94 = t104.
          ENDIF.
          IF t94 = abap_true.
            DATA(t114) = |Table does not have header line|.
            DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t115 = t2->issues.
            DATA t117 TYPE REF TO zcl_lnt_issue.
            DATA t119 TYPE REF TO zcl_lnt_abstract_token.
            t119 = t1->get_first_token( ).
            DATA t122 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t117 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t119 i_message_26cb = t114 i_fix = t122 ).
            t115->load( ).
            APPEND t117 TO t115->items.
            t115->save( ).
            RETURN.
          ENDIF.
        ELSE.
          DATA t123 TYPE abap_bool.
          t123 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_structure_type ).
          IF t123 = abap_true.
            DATA(t125) = VALUE abap_bool( ).
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t128 TYPE string.
            DATA t129 TYPE string.
            DATA t130 TYPE REF TO zcl_lnt_expression_node.
            t130 = t21.
            t129 = t130->concat_tokens( ).
            DATA(t132) = strlen( t129 ).
            t128 = t129.
            IF t128 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t128 TO UPPER CASE.
            ELSE.
              t128 = zlnt_runtime_uppe_91169605024d=>full( t128 ).
            ENDIF.
            DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t133->has = abap_true.
            t133->value = t128.
            t126 = t133.
            DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t136 TYPE REF TO zcl_lnt_abstract_type.
            DATA t137 TYPE REF TO zcl_lnt_structure_type.
            t137 ?= t29.
            t136 = t137.
            DATA t140 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA t141 TYPE REF TO zcl_lnt_abstract_type_data.
            t141 = t136->data_56cc.
            t140 = t141.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t144) = xsdbool( t140 IS INITIAL ).
            IF t144 = abap_true.
            ELSE.
              DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t148 TYPE REF TO zcl_lnt_abstract_type_data.
              t148 = t140.
              t147 = t148->zlnt_view_read_sr_19ee0de30d00( ).
              t143 = t147.
            ENDIF.
            t135 = t143.
            DATA(t150) = VALUE abap_bool( ).
            DATA(t151) = VALUE abap_bool( ).
            IF t126 IS BOUND.
              t150 = t126->has.
            ENDIF.
            IF t135 IS BOUND.
              t151 = t135->has.
            ENDIF.
            IF t150 = t151.
              IF t150 = abap_false.
                t125 = abap_true.
              ELSEIF t126->value = t135->value.
                t125 = abap_true.
              ENDIF.
            ENDIF.
            IF t125 = abap_true.
              t125 = abap_false.
            ELSE.
              t125 = abap_true.
            ENDIF.
            IF t125 = abap_true.
              DATA(t153) = |Not an internal table|.
              DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t154 = t2->issues.
              DATA t156 TYPE REF TO zcl_lnt_issue.
              DATA t158 TYPE REF TO zcl_lnt_abstract_token.
              t158 = t1->get_first_token( ).
              DATA t161 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t156 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t158 i_message_26cb = t153 i_fix = t161 ).
              t154->load( ).
              APPEND t156 TO t154->items.
              t154->save( ).
              RETURN.
            ENDIF.
          ELSE.
            DATA(t163) = |Not an internal table|.
            DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t164 = t2->issues.
            DATA t166 TYPE REF TO zcl_lnt_issue.
            DATA t168 TYPE REF TO zcl_lnt_abstract_token.
            t168 = t1->get_first_token( ).
            DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t166 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t168 i_message_26cb = t163 i_fix = t171 ).
            t164->load( ).
            APPEND t166 TO t164->items.
            t164->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t172 TYPE REF TO zcl_lnt_expression_node.
    DATA t173 TYPE REF TO zcl_lnt_expression_node.
    DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    t173 = t1->find_direct_expression( i_type_9913 = t175 ).
    t172 = t173.
    DATA t176 TYPE abap_bool.
    t176 = xsdbool( t172 IS BOUND ).
    IF t176 = abap_true.
      DATA t178 TYPE REF TO zcl_lnt_expression_node.
      t178 = t172.
      DATA t181 TYPE REF TO zcl_lnt_abstract_type.
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t178 i_input_967e = t2 i_type_9913 = t181 ).
    ENDIF.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t184) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t182 = t1->find_direct_expressions( i_type_9913 = t184 ).
    DATA t185 TYPE REF TO zcl_lnt_expression_node.
    DATA t186 TYPE REF TO object.
    DATA(t187) = VALUE i( ).
    DO.
      t182->load( ).
      IF t187 >= lines( t182->items ).
        EXIT.
      ENDIF.
      CLEAR t186.
      READ TABLE t182->items INDEX t187 + 1 INTO t186.
      t187 = t187 + 1.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      CLEAR t185.
      IF t186 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t188 ?= t186.
        DATA t189 TYPE REF TO object.
        t189 = t188->as_ref( ).
        t185 ?= t189.
      ELSE.
        t185 ?= t186.
      ENDIF.
      DATA t192 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t192.
      DATA t193 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t193.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t185 i_input_967e = t2 i_left_type = t192 i_right_type = t193 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d932_5a2e35d0b4cd.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
