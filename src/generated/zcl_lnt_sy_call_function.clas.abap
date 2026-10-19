* TS: src/abap/5_syntax/statements/call_function.ts:11:1 CallFunction
CLASS zcl_lnt_sy_call_function DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_call_function IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
    t3 = t1->find_first_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    t9 = t3.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      t16 = t9.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
      t11 = t16->find_first_expression( i_type_9913 = t18 ).
    ENDIF.
    t7 = t11.
    IF xsdbool( t7 IS BOUND ) = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      t22 = t7.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t27->sval = |Read From|.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t21 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t22 i_input_967e = t2 i_ref_type = t27 i_allow_generic_deference = t30 ).
    ELSE.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE abap_bool.
      t32 = xsdbool( t2->scope->reg->get_config( )->get_language_version( ) = |Cloud| ).
      t31 = t32.
      IF t32 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835.
        t44 = t1->find_direct_expression( i_type_9913 = t46 ).
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t31 = xsdbool( t44 IS INITIAL ).
      ENDIF.
      IF t31 = abap_true.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        t55 = t3.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t55 IS INITIAL ) = abap_true.
        ELSE.
          DATA t61 TYPE string.
          t61 = t55->concat_tokens( ).
          DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t64->has = abap_true.
          t64->value = t61.
          t57 = t64.
        ENDIF.
        t53 = t57.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t66) = VALUE abap_bool( ).
        IF t53 IS INITIAL.
          t66 = abap_true.
        ELSEIF t53->has = abap_false.
          t66 = abap_true.
        ENDIF.
        IF t66 = abap_true.
        ELSE.
          DATA t69 TYPE string.
          DATA t70 TYPE string.
          t70 = t53->value.
          DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CREATE OBJECT t72 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |'| flags = |g| checked = abap_true.
          DATA(t76) = strlen( t70 ).
          t69 = t72->replace( p0 = t70 p1 = || ).
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = t69.
          t65 = t77.
        ENDIF.
        t51 = t65.
        DATA t80 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
        t80 = t2->scope->find_function_module( i_name = t51 ).
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t80 IS INITIAL ) = abap_true.
          DATA(t88) = VALUE string( ).
          DATA(t90) = VALUE string( ).
          DATA(t91) = |Function module "|.
          DATA(t92) = VALUE string( ).
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t93 = t51.
          DATA(t95) = VALUE string( ).
          DATA(t96) = VALUE abap_bool( ).
          IF t93 IS INITIAL.
            t96 = abap_true.
          ELSEIF t93->has = abap_false.
            t96 = abap_true.
          ENDIF.
          IF t96 = abap_true.
            t95 = |undefined|.
          ELSE.
            t95 = t93->value.
          ENDIF.
          t92 = t95.
          DATA(t101) = strlen( t91 ).
          t90 = |{ t91 }{ t92 }|.
          DATA(t103) = strlen( t90 ).
          t88 = |{ t90 }{ |" not found/released| }|.
          DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t104 = t2->issues.
          DATA t106 TYPE REF TO zcl_lnt_issue.
          DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t106 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t88 i_fix = t111 ).
          t104->load( ).
          APPEND t106 TO t104->items.
          t104->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d211_bc99aed7bb7c.
    t112 = t1->find_direct_expressions( i_type_9913 = t114 ).
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    DATA t116 TYPE REF TO object.
    DATA(t117) = VALUE i( ).
    DO.
      t112->load( ).
      IF t117 >= lines( t112->items ).
        EXIT.
      ENDIF.
      CLEAR t116.
      READ TABLE t112->items INDEX t117 + 1 INTO t116.
      t117 = t117 + 1.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      CLEAR t115.
      IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t118 ?= t116.
        DATA t119 TYPE REF TO object.
        t119 = t118->as_ref( ).
        t115 ?= t119.
      ELSE.
        t115 ?= t116.
      ENDIF.
      DATA t120 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t120.
      DATA t121 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t121.
      t121 = t115.
      DATA t126 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t126.
      DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t127.
      DATA t128 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t129.
      t120 = zcl_lnt_sy_source=>run_syntax( i_node = t121 i_input_967e = t2 i_target_type = t126 i_write_reference = t127 i_allow_generic_deference = t128 i_read_reference = t129 ).
    ENDDO.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t130 = t1->find_direct_expressions( i_type_9913 = t132 ).
    DATA t133 TYPE REF TO zcl_lnt_expression_node.
    DATA t134 TYPE REF TO object.
    DATA(t135) = VALUE i( ).
    DO.
      t130->load( ).
      IF t135 >= lines( t130->items ).
        EXIT.
      ENDIF.
      CLEAR t134.
      READ TABLE t130->items INDEX t135 + 1 INTO t134.
      t135 = t135 + 1.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      CLEAR t133.
      IF t134 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t136 ?= t134.
        DATA t137 TYPE REF TO object.
        t137 = t136->as_ref( ).
        t133 ?= t137.
      ELSE.
        t133 ?= t134.
      ENDIF.
      DATA t138 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t138.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t139.
      t139 = t133.
      DATA t144 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t144.
      DATA t145 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t145.
      DATA t146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t146.
      DATA t147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t147.
      t138 = zcl_lnt_sy_source=>run_syntax( i_node = t139 i_input_967e = t2 i_target_type = t144 i_write_reference = t145 i_allow_generic_deference = t146 i_read_reference = t147 ).
    ENDDO.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835.
    t148 = t1->find_direct_expressions( i_type_9913 = t150 ).
    DATA t151 TYPE REF TO zcl_lnt_expression_node.
    DATA t152 TYPE REF TO object.
    DATA(t153) = VALUE i( ).
    DO.
      t148->load( ).
      IF t153 >= lines( t148->items ).
        EXIT.
      ENDIF.
      CLEAR t152.
      READ TABLE t148->items INDEX t153 + 1 INTO t152.
      t153 = t153 + 1.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      CLEAR t151.
      IF t152 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t154 ?= t152.
        DATA t155 TYPE REF TO object.
        t155 = t154->as_ref( ).
        t151 ?= t155.
      ELSE.
        t151 ?= t152.
      ENDIF.
      DATA t156 TYPE REF TO zcl_lnt_expression_node.
      DATA(t159) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t156 = t151->find_first_expression( i_type_9913 = t159 ).
      IF xsdbool( t156 IS BOUND ) = abap_true.
        DATA t162 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t162.
        DATA t163 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t163.
        t163 = t156.
        DATA t169 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t169.
        DATA t170 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t170.
        DATA t171 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t171.
        DATA t172 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t172.
        t162 = zcl_lnt_sy_source=>run_syntax( i_node = t163 i_input_967e = t2 i_target_type = t169 i_write_reference = t170 i_allow_generic_deference = t171 i_read_reference = t172 ).
      ENDIF.
    ENDDO.
    DATA t173 TYPE REF TO zcl_lnt_expression_node.
    DATA(t176) = zlnt_runtime_desc_78196487750d=>zlnt_member_d201_586873752c2d.
    t173 = t1->find_direct_expression( i_type_9913 = t176 ).
    IF xsdbool( t173 IS BOUND ) = abap_true.
      zcl_lnt_sy_function_parameters=>run_syntax( i_node = t173 i_input_967e = t2 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d862_d6e64174f777.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
