* TS: src/abap/5_syntax/expressions/component_compare_simple.ts:9:1 ComponentCompareSimple
CLASS zcl_lnt_sy_cmpnnt_cmpr_smpl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_row_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_cmpnnt_cmpr_smpl IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_row_type.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    t8 = t1.
    t6 ?= t8->children.
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t6->load( ).
      IF t14 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t6->items INDEX t14 + 1 INTO t13.
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
      IF xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_expression_node ) = abap_true.
        DATA t20 TYPE REF TO zif_lnt_statement_runnable.
        DATA t21 TYPE REF TO zcl_lnt_expression_node.
        t21 ?= t12.
        t20 = t21->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        IF xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_component_chain_simple ) = abap_true.
          DATA t25 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t25.
          t25 = t3.
          DATA t29 TYPE REF TO zcl_lnt_expression_node.
          t29 ?= t12.
          t4 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t25 i_node = t29 i_input_967e = t2 ).
        ELSE.
          DATA t34 TYPE REF TO zif_lnt_statement_runnable.
          DATA t35 TYPE REF TO zcl_lnt_expression_node.
          t35 ?= t12.
          t34 = t35->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          IF xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_st_dynamic ) = abap_true.
            CLEAR t4.
          ELSE.
            DATA(t39) = VALUE abap_bool( ).
            DATA t40 TYPE abap_bool.
            DATA t41 TYPE abap_bool.
            DATA t42 TYPE REF TO zif_lnt_statement_runnable.
            DATA t43 TYPE REF TO zcl_lnt_expression_node.
            t43 ?= t12.
            t42 = t43->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_st_source ).
            t40 = t41.
            IF t41 = abap_false.
              DATA t47 TYPE REF TO zif_lnt_statement_runnable.
              DATA t48 TYPE REF TO zcl_lnt_expression_node.
              t48 ?= t12.
              t47 = t48->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t40 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_simple_source4 ).
            ENDIF.
            t39 = t40.
            IF t40 = abap_false.
              DATA t52 TYPE REF TO zif_lnt_statement_runnable.
              DATA t53 TYPE REF TO zcl_lnt_expression_node.
              t53 ?= t12.
              t52 = t53->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t39 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_simple_source2 ).
            ENDIF.
            IF t39 = abap_true.
              DATA t57 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t57.
              DATA t58 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t58.
              DATA t60 TYPE REF TO zcl_lnt_expression_node.
              t60 ?= t12.
              t58 = t60.
              DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t66.
              DATA t67 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t67.
              DATA t68 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t68.
              t57 = zcl_lnt_sy_source=>run_syntax( i_node = t58 i_input_967e = t2 i_target_type = t4 i_write_reference = t66 i_allow_generic_deference = t67 i_read_reference = t68 ).
              DATA t69 TYPE abap_bool.
              DATA t70 TYPE abap_bool.
              t70 = xsdbool( t4 IS BOUND ).
              t69 = t70.
              IF t70 = abap_true.
                DATA t75 TYPE REF TO zcl_lnt_current_scope.
                t75 = t2->scope.
                t69 = xsdbool( NEW zcl_lnt_type_utils( i_scope = t75 )->is_assignable( i_source_75cf = t57 i_target_5f8a = t4 ) = abap_false ).
              ENDIF.
              IF t69 = abap_true.
                DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t86 = t2->issues.
                DATA t88 TYPE REF TO zcl_lnt_issue.
                DATA t90 TYPE REF TO zcl_lnt_abstract_token.
                t90 = t1->get_first_token( ).
                DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t93.
                t88 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t90 i_message_26cb = |ComponentCompareSimple, incompatible types| i_fix = t93 ).
                t86->load( ).
                APPEND t88 TO t86->items.
                t86->save( ).
                RETURN.
              ENDIF.
            ELSE.
              DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t96 = t2->issues.
              DATA t98 TYPE REF TO zcl_lnt_issue.
              DATA t100 TYPE REF TO zcl_lnt_abstract_token.
              t100 = t1->get_first_token( ).
              DATA t103 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t103.
              t98 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t100 i_message_26cb = |ComponentCompareSimple, unexpected node| i_fix = t103 ).
              t96->load( ).
              APPEND t98 TO t96->items.
              t96->save( ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d789_c1253e72ade8.
  ENDMETHOD.
ENDCLASS.
