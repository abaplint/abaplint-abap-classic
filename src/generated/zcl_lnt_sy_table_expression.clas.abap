* TS: src/abap/5_syntax/expressions/table_expression.ts:9:1 TableExpression
CLASS zcl_lnt_sy_table_expression DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_row_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_table_expression IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_abstract_type.
    t11 = i_row_type.
    DATA(t14) = t11.
    IF xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_ty_table_type.
      t19 ?= t11.
      t11 = t19->row_type.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zcl_lnt_abstract_node.
    t28 = t1.
    t27 = t28->children.
    t26 ?= t27.
    t26->load( ).
    IF xsdbool( lines( t26->items ) = 3 ) = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      t36 = t1.
      DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t39 = zcl_lnt_sy_source=>run_syntax( i_node = t36->find_direct_expression( i_type_9913 = t38 ) i_input_967e = t2 i_target_type = t11 i_write_reference = t43 i_allow_generic_deference = t44 i_read_reference = t45 ).
    ELSE.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      t47 = t1->find_direct_token_by_text( i_text = |INDEX| ).
      IF xsdbool( t47 IS BOUND ) = abap_true.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        t53 = t1.
        DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        DATA t56 TYPE REF TO zcl_lnt_abstract_type.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t56 = zcl_lnt_sy_source=>run_syntax( i_node = t53->find_direct_expression( i_type_9913 = t55 ) i_input_967e = t2 i_target_type = t59 i_write_reference = t60 i_allow_generic_deference = t61 i_read_reference = t62 ).
      ELSE.
        DATA t63 TYPE REF TO zcl_lnt_abstract_type.
        DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t67 TYPE REF TO zcl_lnt_abstract_node.
        t67 = t1.
        t66 = t67->children.
        t65 ?= t66.
        DATA t72 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t73 TYPE REF TO object.
        DATA(t74) = VALUE i( ).
        DO.
          t65->load( ).
          IF t74 >= lines( t65->items ).
            EXIT.
          ENDIF.
          CLEAR t73.
          READ TABLE t65->items INDEX t74 + 1 INTO t73.
          t74 = t74 + 1.
          DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t75.
          CLEAR t72.
          IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t75 ?= t73.
            DATA t76 TYPE REF TO object.
            t76 = t75->as_ref( ).
            t72 ?= t76.
          ELSE.
            t72 ?= t73.
          ENDIF.
          DATA t77 TYPE abap_bool.
          DATA t78 TYPE abap_bool.
          t78 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_expression_node ).
          t77 = t78.
          IF t78 = abap_true.
            DATA t81 TYPE REF TO zif_lnt_statement_runnable.
            DATA t82 TYPE REF TO zcl_lnt_expression_node.
            DATA t84 TYPE REF TO object.
            t84 = t72.
            t82 ?= t84.
            t81 = t82->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t77 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_component_chain_simple ).
          ENDIF.
          IF t77 = abap_true.
            DATA t87 TYPE REF TO zcl_lnt_expression_node.
            DATA t89 TYPE REF TO object.
            t89 = t72.
            t87 ?= t89.
            t63 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t11 i_node = t87 i_input_967e = t2 ).
          ELSE.
            DATA t91 TYPE abap_bool.
            DATA t92 TYPE abap_bool.
            t92 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_expression_node ).
            t91 = t92.
            IF t92 = abap_true.
              DATA t95 TYPE REF TO zif_lnt_statement_runnable.
              DATA t96 TYPE REF TO zcl_lnt_expression_node.
              DATA t98 TYPE REF TO object.
              t98 = t72.
              t96 ?= t98.
              t95 = t96->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t91 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_st_source ).
            ENDIF.
            IF t91 = abap_true.
              DATA t99 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t99.
              DATA t100 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t100.
              DATA t102 TYPE REF TO zcl_lnt_expression_node.
              DATA t104 TYPE REF TO object.
              t104 = t72.
              t102 ?= t104.
              t100 = t102.
              DATA t108 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t108.
              DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t109.
              DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t110.
              t99 = zcl_lnt_sy_source=>run_syntax( i_node = t100 i_input_967e = t2 i_target_type = t63 i_write_reference = t108 i_allow_generic_deference = t109 i_read_reference = t110 ).
            ENDIF.
          ENDIF.
        ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d844_8526ed1be758.
  ENDMETHOD.
ENDCLASS.
