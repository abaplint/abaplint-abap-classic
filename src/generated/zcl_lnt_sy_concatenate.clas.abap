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
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    t6 = t1->find_direct_token_by_text( i_text = |BYTE| ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( xsdbool( t6 IS INITIAL ) = abap_false ).
    DATA(t14) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    t17 = t1->find_direct_token_by_text( i_text = |LINES| ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t14 = xsdbool( xsdbool( t17 IS INITIAL ) = abap_false ).
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d.
    t27 = t1->find_first_expression( i_type_9913 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t27 IS INITIAL ) = abap_false ) = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t37 = t2->issues.
      DATA t39 TYPE REF TO zcl_lnt_issue.
      DATA t44 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t39 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |CONCATENATE with table expression not possible| i_fix = t44 ).
      t37->load( ).
      APPEND t39 TO t37->items.
      t37->save( ).
      RETURN.
    ENDIF.
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t45 = t1->find_first_expression( i_type_9913 = t48 ).
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    DATA t51 TYPE REF TO zcl_lnt_expression_node.
    t51 = t45.
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t51 IS INITIAL ) = abap_true.
    ELSE.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      t58 = t51.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t53 = t58->find_direct_expression( i_type_9913 = t60 ).
    ENDIF.
    t49 = t53.
    IF xsdbool( t49 IS BOUND ) = abap_true.
      IF t3 = abap_true.
        DATA t68 TYPE REF TO zcl_lnt_abstract_type_data.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t49 i_input_967e = t2 i_type_9913 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t68 ) ).
      ELSE.
        DATA t73 TYPE REF TO zcl_lnt_abstract_type_data.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t49 i_input_967e = t2 i_type_9913 = zcl_lnt_string_type=>get_db65( i_input_967e = t73 ) ).
      ENDIF.
    ELSE.
      IF xsdbool( t45 IS BOUND ) = abap_true.
        DATA t76 TYPE REF TO zcl_lnt_abstract_type.
        t76 = zcl_lnt_sy_target=>run_syntax( i_node = t45 i_input_967e = t2 ).
        DATA(t82) = VALUE abap_bool( ).
        IF t3 = abap_true.
          DATA t86 TYPE REF TO zcl_lnt_current_scope.
          t86 = t2->scope.
          t82 = NEW zcl_lnt_type_utils( i_scope = t86 )->is_hex_like( i_type_9913 = t76 ).
        ELSE.
          DATA t91 TYPE REF TO zcl_lnt_current_scope.
          t91 = t2->scope.
          t82 = NEW zcl_lnt_type_utils( i_scope = t91 )->is_char_like_strict( i_type_9913 = t76 ).
        ENDIF.
        IF xsdbool( t82 = abap_false ) = abap_true.
          DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t99 = t2->issues.
          DATA t101 TYPE REF TO zcl_lnt_issue.
          DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t101 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Target type not compatible| i_fix = t106 ).
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
        t116 = zcl_lnt_sy_source=>run_syntax( i_node = t118 i_input_967e = t2 i_target_type = t123 i_write_reference = t124 i_allow_generic_deference = t125 i_read_reference = t126 ).
        DATA(t127) = VALUE abap_bool( ).
        DATA t128 TYPE abap_bool.
        DATA t129 TYPE abap_bool.
        t129 = xsdbool( xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
        t128 = t129.
        IF t129 = abap_true.
          t128 = xsdbool( xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
        ENDIF.
        t127 = t128.
        IF t128 = abap_true.
          t127 = xsdbool( xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_false ).
        ENDIF.
        IF t127 = abap_true.
          DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t140 = t2->issues.
          DATA t142 TYPE REF TO zcl_lnt_issue.
          DATA t144 TYPE REF TO zcl_lnt_abstract_token.
          t144 = t1->get_first_token( ).
          DATA t147 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t147.
          t142 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t144 i_message_26cb = |Source must be an internal table| i_fix = t147 ).
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
          t150 = xsdbool( t3 = abap_true ).
        ENDIF.
        t149 = t150.
        IF t150 = abap_true.
          t149 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_ty_table_type ).
        ENDIF.
        t148 = t149.
        IF t149 = abap_true.
          DATA t160 TYPE REF TO zcl_lnt_abstract_type.
          DATA t162 TYPE REF TO zcl_lnt_ty_table_type.
          t162 ?= t116.
          t160 = t162->row_type.
          t148 = xsdbool( t160 IS BOUND AND t160 IS INSTANCE OF zcl_lnt_structure_type ).
        ENDIF.
        IF t148 = abap_true.
          DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t168 = t2->issues.
          DATA t170 TYPE REF TO zcl_lnt_issue.
          DATA t172 TYPE REF TO zcl_lnt_abstract_token.
          t172 = t1->get_first_token( ).
          DATA t175 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t175.
          t170 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t172 i_message_26cb = |Source row type must not be a structure in BYTE mode| i_fix = t175 ).
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
      t184 = zcl_lnt_sy_source=>run_syntax( i_node = t186 i_input_967e = t2 i_target_type = t191 i_write_reference = t192 i_allow_generic_deference = t193 i_read_reference = t194 ).
      DATA(t196) = VALUE abap_bool( ).
      IF t3 = abap_true.
        DATA t200 TYPE REF TO zcl_lnt_current_scope.
        t200 = t2->scope.
        t196 = NEW zcl_lnt_type_utils( i_scope = t200 )->is_hex_like( i_type_9913 = t184 ).
      ELSE.
        DATA t205 TYPE REF TO zcl_lnt_current_scope.
        t205 = t2->scope.
        t196 = NEW zcl_lnt_type_utils( i_scope = t205 )->is_char_like_strict( i_type_9913 = t184 ).
      ENDIF.
      IF xsdbool( t196 = abap_false ) = abap_true.
        DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t213 = t2->issues.
        DATA t215 TYPE REF TO zcl_lnt_issue.
        DATA t217 TYPE REF TO zcl_lnt_abstract_token.
        t217 = t1->get_first_token( ).
        DATA t220 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t220.
        t215 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t217 i_message_26cb = |Source type not compatible| i_fix = t220 ).
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
