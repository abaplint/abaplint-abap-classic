* TS: src/abap/5_syntax/statements/describe.ts:12:1 Describe
CLASS zcl_lnt_sy_describe DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_describe IMPLEMENTATION.
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
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    t21 = t1->find_direct_expressions( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA t25 TYPE REF TO object.
    DATA(t26) = VALUE i( ).
    DO.
      t21->load( ).
      IF t26 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t21->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t34.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t34->sval = |Read From|.
      t32 = t34.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      t29 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t24 i_input_967e = t2 i_ref_type = t32 i_allow_generic_deference = t37 ).
    ENDDO.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    t38 = t1->find_expression_after_token( i_text = |LINES| ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    t44 = t38.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    IF xsdbool( t44 IS INITIAL ) = abap_true.
    ELSE.
      t46 = t44->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    ENDIF.
    t43 = t46.
    IF xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_st_target ) = abap_true.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      t55 = t38.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t55 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t58 = t55->find_direct_expression( i_type_9913 = t64 ).
      ENDIF.
      t53 = t58.
      IF xsdbool( t53 IS BOUND ) = abap_true.
        DATA t71 TYPE REF TO zcl_lnt_abstract_type_data.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t53 i_input_967e = t2 i_type_9913 = zcl_lnt_integer_type=>get_db65( i_input_967e = t71 ) ).
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_abstract_type.
        t72 = zcl_lnt_sy_target=>run_syntax( i_node = t38 i_input_967e = t2 ).
      ENDIF.
    ENDIF.
    DATA t76 TYPE REF TO zcl_lnt_expression_node.
    t76 = t1->find_expression_after_token( i_text = |TYPE| ).
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA t82 TYPE REF TO zcl_lnt_expression_node.
    t82 = t76.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    IF xsdbool( t82 IS INITIAL ) = abap_true.
    ELSE.
      t84 = t82->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    ENDIF.
    t81 = t84.
    IF xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_st_target ) = abap_true.
      DATA t91 TYPE REF TO zcl_lnt_expression_node.
      DATA t93 TYPE REF TO zcl_lnt_expression_node.
      t93 = t76.
      DATA t96 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t93 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t102) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t96 = t93->find_direct_expression( i_type_9913 = t102 ).
      ENDIF.
      t91 = t96.
      IF xsdbool( t91 IS BOUND ) = abap_true.
        DATA t110 TYPE REF TO zcl_lnt_abstract_type_data.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t91 i_input_967e = t2 i_type_9913 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t110 ) ).
      ELSE.
        DATA t111 TYPE REF TO zcl_lnt_abstract_type.
        t111 = zcl_lnt_sy_target=>run_syntax( i_node = t76 i_input_967e = t2 ).
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    t115 = t1->find_expression_after_token( i_text = |LENGTH| ).
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    DATA t121 TYPE REF TO zcl_lnt_expression_node.
    t121 = t115.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    IF xsdbool( t121 IS INITIAL ) = abap_true.
    ELSE.
      t123 = t121->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    ENDIF.
    t120 = t123.
    IF xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_st_target ) = abap_true.
      DATA t130 TYPE REF TO zcl_lnt_expression_node.
      DATA t132 TYPE REF TO zcl_lnt_expression_node.
      t132 = t115.
      DATA t135 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t132 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t135 = t132->find_direct_expression( i_type_9913 = t141 ).
      ENDIF.
      t130 = t135.
      IF xsdbool( t130 IS BOUND ) = abap_true.
        DATA t148 TYPE REF TO zcl_lnt_abstract_type_data.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t130 i_input_967e = t2 i_type_9913 = zcl_lnt_integer_type=>get_db65( i_input_967e = t148 ) ).
      ELSE.
        DATA t149 TYPE REF TO zcl_lnt_abstract_type.
        t149 = zcl_lnt_sy_target=>run_syntax( i_node = t115 i_input_967e = t2 ).
      ENDIF.
    ENDIF.
    DATA t153 TYPE REF TO zcl_lnt_expression_node.
    t153 = t1->find_expression_after_token( i_text = |COMPONENTS| ).
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    DATA t159 TYPE REF TO zcl_lnt_expression_node.
    t159 = t153.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    IF xsdbool( t159 IS INITIAL ) = abap_true.
    ELSE.
      t161 = t159->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    ENDIF.
    t158 = t161.
    IF xsdbool( t158 IS BOUND AND t158 IS INSTANCE OF zcl_lnt_st_target ) = abap_true.
      DATA t168 TYPE REF TO zcl_lnt_expression_node.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      t170 = t153.
      DATA t173 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t170 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t179) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t173 = t170->find_direct_expression( i_type_9913 = t179 ).
      ENDIF.
      t168 = t173.
      IF xsdbool( t168 IS BOUND ) = abap_true.
        DATA t186 TYPE REF TO zcl_lnt_abstract_type_data.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t168 i_input_967e = t2 i_type_9913 = zcl_lnt_integer_type=>get_db65( i_input_967e = t186 ) ).
      ELSE.
        DATA t187 TYPE REF TO zcl_lnt_abstract_type.
        t187 = zcl_lnt_sy_target=>run_syntax( i_node = t153 i_input_967e = t2 ).
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d892_419d6cde2530.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
