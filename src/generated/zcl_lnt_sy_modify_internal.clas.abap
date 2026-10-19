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
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t21 = t1->find_first_expression( i_type_9913 = t24 ).
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    t25 = t21.
    IF xsdbool( t25 IS BOUND ) = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      t29 = zcl_lnt_sy_target=>run_syntax( i_node = t25 i_input_967e = t2 ).
      DATA(t34) = VALUE abap_bool( ).
      DATA t35 TYPE abap_bool.
      DATA t36 TYPE abap_bool.
      t36 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_void_type ).
      t35 = t36.
      IF t36 = abap_false.
        t35 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_any_type ).
      ENDIF.
      t34 = t35.
      IF t35 = abap_false.
        t34 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown_type ).
      ENDIF.
      IF t34 = abap_true.
      ELSE.
        IF xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = VALUE abap_bool( ).
          DATA(t46) = VALUE abap_bool( ).
          DATA t48 TYPE REF TO zcl_lnt_abstract_token.
          t48 = t1->find_direct_token_by_text( i_text = |TABLE| ).
          DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t46 = xsdbool( t48 IS INITIAL ).
          t45 = t46.
          IF t46 = abap_true.
            DATA t56 TYPE REF TO zcl_lnt_abstract_token.
            t56 = t1->find_direct_token_by_text( i_text = |INDEX| ).
            t45 = xsdbool( t56 IS BOUND ).
          ENDIF.
          t44 = t45.
          IF t45 = abap_true.
            DATA(t59) = VALUE abap_bool( ).
            DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t62 TYPE REF TO zcl_lnt_ty_table_type.
            t62 ?= t29.
            DATA t65 TYPE REF TO zcl_lnt_itable_key.
            t65 = t62->options->zlnt_view_read_sr_48b89cc62ab9( ).
            DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            IF xsdbool( t65 IS INITIAL ) = abap_true.
            ELSE.
              DATA t73 TYPE string.
              t73 = t65->zlnt_view_read_sr_f361ef311f50( ).
              DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t76->has = abap_true.
              t76->value = t73.
              t69 = t76.
            ENDIF.
            t60 = t69.
            DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t80->has = abap_true.
            t80->value = |HASHED|.
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
            DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t88 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t85 i_fix = t93 ).
            t86->load( ).
            APPEND t88 TO t86->items.
            t86->save( ).
            RETURN.
          ENDIF.
          DATA(t94) = VALUE abap_bool( ).
          DATA t95 TYPE abap_bool.
          DATA t96 TYPE abap_bool.
          DATA t97 TYPE REF TO zcl_lnt_abstract_token.
          t97 = t1->find_direct_token_by_text( i_text = |TABLE| ).
          t96 = xsdbool( t97 IS BOUND ).
          t95 = t96.
          IF t96 = abap_true.
            DATA t101 TYPE REF TO zcl_lnt_abstract_token.
            t101 = t1->find_direct_token_by_text( i_text = |INDEX| ).
            t95 = xsdbool( t101 IS BOUND ).
          ENDIF.
          t94 = t95.
          IF t95 = abap_true.
            DATA t107 TYPE REF TO zcl_lnt_ty_table_type.
            t107 ?= t29.
            DATA t110 TYPE REF TO zcl_lnt_itable_options.
            t110 = t107->options.
            t94 = xsdbool( t110->zlnt_view_read_sr_ec4602663c93( ) = abap_false ).
          ENDIF.
          IF t94 = abap_true.
            DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t115 = t2->issues.
            DATA t117 TYPE REF TO zcl_lnt_issue.
            DATA t122 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t117 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Table does not have header line| i_fix = t122 ).
            t115->load( ).
            APPEND t117 TO t115->items.
            t115->save( ).
            RETURN.
          ENDIF.
        ELSE.
          IF xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
            DATA(t125) = VALUE abap_bool( ).
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t128 TYPE string.
            DATA t129 TYPE string.
            t129 = t21->concat_tokens( ).
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
            t140 = t136->data_56cc.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            IF xsdbool( t140 IS INITIAL ) = abap_true.
            ELSE.
              t143 = t140->zlnt_view_read_sr_19ee0de30d00( ).
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
              DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t154 = t2->issues.
              DATA t156 TYPE REF TO zcl_lnt_issue.
              DATA t161 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t156 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Not an internal table| i_fix = t161 ).
              t154->load( ).
              APPEND t156 TO t154->items.
              t154->save( ).
              RETURN.
            ENDIF.
          ELSE.
            DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t164 = t2->issues.
            DATA t166 TYPE REF TO zcl_lnt_issue.
            DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t166 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Not an internal table| i_fix = t171 ).
            t164->load( ).
            APPEND t166 TO t164->items.
            t164->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t172 TYPE REF TO zcl_lnt_expression_node.
    DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    t172 = t1->find_direct_expression( i_type_9913 = t175 ).
    IF xsdbool( t172 IS BOUND ) = abap_true.
      DATA t181 TYPE REF TO zcl_lnt_abstract_type.
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t172 i_input_967e = t2 i_type_9913 = t181 ).
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
