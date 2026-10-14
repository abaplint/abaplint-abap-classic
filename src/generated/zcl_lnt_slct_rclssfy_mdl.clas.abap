* TS: src/abap/2_statements/_select_reclassify.ts.module module
CLASS zcl_lnt_slct_rclssfy_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS contains_aggregation IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS is_count_all_pattern IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS scan_for_expr_types IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_found TYPE REF TO zlnt_runtime_set__7758c436a0c7 i_targets TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS is_select_loop IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS is_with_loop IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS reclassify_select IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_stmt TYPE REF TO zif_lnt_statement i_pragmas TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_statement_node.
    CLASS-METHODS fn_has IMPORTING i_found TYPE REF TO zlnt_runtime_set__7758c436a0c7 i_t TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE abap_bool.
    CLASS-DATA zlnt_builtin_init_0dc66ed7883a TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_6e4d264b60b9.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slct_rclssfy_mdl IMPLEMENTATION.
  METHOD contains_aggregation.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    LOOP AT t2->items INTO t4.
      t3 ?= t4.
      DATA t5 TYPE abap_bool.
      DATA t6 TYPE abap_bool.
      DATA(t7) = CAST zif_lnt_union_4cf1d054( t3 ).
      t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_expression_node ).
      t5 = xsdbool( t6 = abap_false ).
      IF t5 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE REF TO zif_lnt_statement_runnable.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = CAST zif_lnt_union_4cf1d054( t3 ).
      DATA t12 TYPE REF TO object.
      t12 = t11.
      t10 ?= t12.
      t9 = t10->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_sql_aggregation ).
      IF t8 = abap_true.
        DATA(t13) = VALUE abap_bool( ).
        DATA t14 TYPE REF TO zcl_lnt_expression_node.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        DATA t16 TYPE REF TO zcl_lnt_expression_node.
        DATA(t17) = CAST zif_lnt_union_4cf1d054( t3 ).
        DATA t18 TYPE REF TO object.
        t18 = t17.
        t16 ?= t18.
        DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2 ).
        t15 = t16->find_direct_expression( i_type_9913 = t19 ).
        t14 = t15.
        DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t21.
        t20 = t21.
        DATA(t22) = VALUE abap_bool( ).
        DATA(t23) = CAST zcl_lnt_expression_node( t14 ).
        IF t23 IS INITIAL.
          t22 = abap_true.
        ENDIF.
        t13 = t22.
        IF t13 = abap_true.
          DATA(t24) = abap_true.
          result = t24.
          RETURN.
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE REF TO zif_lnt_statement_runnable.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = CAST zif_lnt_union_4cf1d054( t3 ).
      DATA t29 TYPE REF TO object.
      t29 = t28.
      t27 ?= t29.
      t26 = t27->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_st_sql_set_op_group ).
      IF t25 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE REF TO zif_lnt_statement_runnable.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t33) = CAST zif_lnt_union_4cf1d054( t3 ).
      DATA t34 TYPE REF TO object.
      t34 = t33.
      t32 ?= t34.
      t31 = t32->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_sql_from ).
      IF t30 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t35 TYPE abap_bool.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zcl_lnt_abstract_node.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      DATA(t40) = CAST zif_lnt_union_4cf1d054( t3 ).
      DATA t41 TYPE REF TO object.
      t41 = t40.
      t39 ?= t41.
      t38 = t39.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t43) = CAST zcl_lnt_abstract_node( t38 ).
      t42 = t43->children.
      t37 = t42.
      t36 ?= t37.
      t35 = zcl_lnt_slct_rclssfy_mdl=>contains_aggregation( i_children_9020 = t36 ).
      IF t35 = abap_true.
        DATA(t44) = abap_true.
        result = t44.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA(t45) = abap_false.
    result = t45.

  ENDMETHOD.
  METHOD is_count_all_pattern.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    LOOP AT t2->items INTO t4.
      t3 ?= t4.
      DATA t5 TYPE abap_bool.
      DATA t6 TYPE abap_bool.
      DATA(t7) = CAST zif_lnt_union_4cf1d054( t3 ).
      t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_expression_node ).
      t5 = xsdbool( t6 = abap_false ).
      IF t5 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t8 TYPE REF TO zif_lnt_statement_runnable.
      DATA t9 TYPE REF TO zif_lnt_statement_runnable.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = CAST zif_lnt_union_4cf1d054( t3 ).
      DATA t12 TYPE REF TO object.
      t12 = t11.
      t10 ?= t12.
      t9 = t10->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t8 = t9.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA(t16) = CAST zif_lnt_statement_runnable( t8 ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_sql_group_by ).
      t14 = t15.
      IF t15 = abap_false.
        DATA t17 TYPE abap_bool.
        DATA(t18) = CAST zif_lnt_statement_runnable( t8 ).
        t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_sql_having ).
        t14 = t17.
      ENDIF.
      t13 = t14.
      IF t14 = abap_false.
        DATA t19 TYPE abap_bool.
        DATA(t20) = CAST zif_lnt_statement_runnable( t8 ).
        t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_st_sql_order_by ).
        t13 = t19.
      ENDIF.
      IF t13 = abap_true.
        DATA(t21) = abap_false.
        result = t21.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t22 TYPE abap_bool.
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t22 = zcl_lnt_slct_rclssfy_mdl=>contains_aggregation( i_children_9020 = t23 ).
    result = t22.

  ENDMETHOD.
  METHOD scan_for_expr_types.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA(t2) = CAST zlnt_runtime_set__7758c436a0c7( i_found ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_targets ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t5 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    LOOP AT t4->items INTO t6.
      t5 ?= t6.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE i.
      DATA(t9) = CAST zlnt_runtime_set__7758c436a0c7( t2 ).
      t8 = t9->size(  ).
      DATA t10 TYPE i.
      DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      t10 = lines( t11->items ).
      t7 = xsdbool( t8 = t10 ).
      IF t7 = abap_true.
        RETURN.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA(t14) = CAST zif_lnt_union_4cf1d054( t5 ).
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_expression_node ).
      t12 = xsdbool( t13 = abap_false ).
      IF t12 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_statement_runnable.
      DATA t16 TYPE REF TO zif_lnt_statement_runnable.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA(t18) = CAST zif_lnt_union_4cf1d054( t5 ).
      DATA t19 TYPE REF TO object.
      t19 = t18.
      t17 ?= t19.
      t16 = t17->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t15 = t16.
      DATA t20 TYPE abap_bool.
      DATA(t21) = CAST zif_lnt_statement_runnable( t15 ).
      t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_st_sql_set_op_group ).
      IF t20 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA t23 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      LOOP AT t22->items INTO t24.
        t23 ?= t24.
        DATA(t25) = VALUE abap_bool( ).
        DATA(t26) = CAST zif_lnt_statement_runnable( t15 ).
        DATA(t27) = CAST zlnt_runtime_clas_a39833db3295( t23 ).
        DATA t28 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t28.
        IF t26 IS BOUND.
          t28 = t26->zlnt_builtin_clas_3f891b097658( ).
          WHILE t28 IS BOUND.
            IF t28 = t27.
              t25 = abap_true.
              EXIT.
            ENDIF.
            t28 = t28->parent.
          ENDWHILE.
        ENDIF.
        IF t25 = abap_true.
          DATA t29 TYPE REF TO zlnt_runtime_set__7758c436a0c7.
          DATA(t30) = CAST zlnt_runtime_set__7758c436a0c7( t2 ).
          DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( t23 ).
          t29 = t30->add( p0 = t31 ).
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t34 TYPE REF TO zcl_lnt_abstract_node.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA(t36) = CAST zif_lnt_union_4cf1d054( t5 ).
      DATA t37 TYPE REF TO object.
      t37 = t36.
      t35 ?= t37.
      t34 = t35.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t39) = CAST zcl_lnt_abstract_node( t34 ).
      t38 = t39->children.
      t33 = t38.
      t32 ?= t33.
      DATA(t40) = CAST zlnt_runtime_set__7758c436a0c7( t2 ).
      DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      zcl_lnt_slct_rclssfy_mdl=>scan_for_expr_types( i_children_9020 = t32 i_found = t40 i_targets = t41 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD is_select_loop.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d254_c290c4a7bfe3 ).
    t3 = t4->find_direct_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE abap_bool.
    DATA(t9) = CAST zcl_lnt_expression_node( t2 ).
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t12 TYPE REF TO zcl_lnt_abstract_node.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = CAST zcl_lnt_expression_node( t2 ).
      t13 = t14.
      t12 = t13.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t16) = CAST zcl_lnt_abstract_node( t12 ).
      t15 = t16->children.
      t11 = t15.
      t10 ?= t11.
      t7 = t10.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      t7 = t17.
    ENDIF.
    t6 = t7.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE abap_bool.
    DATA(t20) = abap_false.
    t19 = t20.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    LOOP AT t21->items INTO t23.
      t22 ?= t23.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE abap_bool.
      DATA(t26) = CAST zif_lnt_union_4cf1d054( t22 ).
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_token_node ).
      t24 = t25.
      IF t25 = abap_true.
        DATA(t27) = VALUE abap_bool( ).
        DATA t28 TYPE string.
        DATA t29 TYPE string.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        DATA t32 TYPE REF TO zcl_lnt_token_node.
        DATA(t33) = CAST zif_lnt_union_4cf1d054( t22 ).
        DATA t34 TYPE REF TO object.
        t34 = t33.
        t32 ?= t34.
        t31 = t32->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd(  ).
        t30 = t31.
        DATA t35 TYPE string.
        DATA(t36) = CAST zcl_lnt_abstract_token( t30 ).
        t35 = t36->str.
        t29 = t35.
        DATA(t37) = strlen( t29 ).
        t28 = t29.
        IF t28 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t28 TO UPPER CASE.
        ELSE.
          t28 = zlnt_runtime_uppe_91169605024d=>full( t28 ).
        ENDIF.
        DATA(t38) = |SINGLE|.
        t27 = xsdbool( t28 = t38 ).
        t24 = t27.
      ENDIF.
      IF t24 = abap_true.
        DATA(t39) = abap_true.
        t19 = t39.
        EXIT.
      ENDIF.
    ENDLOOP.
    DATA(t40) = t19.
    t18 = t40.
    IF t18 = abap_true.
      DATA(t41) = abap_false.
      result = t41.
      RETURN.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    t44 = t45.
    DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    DATA(t47) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167 ).
    APPEND t47 TO t46->items.
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    DATA(t49) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d324_e103ee74a0b4 ).
    APPEND t49 TO t48->items.
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d ).
    APPEND t51 TO t50->items.
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258 ).
    APPEND t53 TO t52->items.
    DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    DATA(t55) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d251_f36ca3dcb3e0 ).
    APPEND t55 TO t54->items.
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d308_c2d6db3f5bbf ).
    APPEND t57 TO t56->items.
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    t43 = t58.
    t42 = t43.
    DATA t59 TYPE REF TO zlnt_runtime_set__7758c436a0c7.
    DATA(t60) = NEW zlnt_runtime_set__7758c436a0c7(  ).
    t59 = t60.
    DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA(t62) = CAST zlnt_runtime_set__7758c436a0c7( t59 ).
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    zcl_lnt_slct_rclssfy_mdl=>scan_for_expr_types( i_children_9020 = t61 i_found = t62 i_targets = t63 ).
    DATA t64 TYPE abap_bool.
    DATA(t65) = CAST zlnt_runtime_set__7758c436a0c7( t59 ).
    DATA(t66) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d324_e103ee74a0b4 ).
    t64 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t65 i_t = t66 ).
    IF t64 = abap_true.
      DATA(t67) = abap_true.
      result = t67.
      RETURN.
    ENDIF.
    DATA t68 TYPE abap_bool.
    DATA(t69) = CAST zlnt_runtime_set__7758c436a0c7( t59 ).
    DATA(t70) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d ).
    t68 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t69 i_t = t70 ).
    IF t68 = abap_true.
      DATA(t71) = abap_false.
      result = t71.
      RETURN.
    ENDIF.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = VALUE abap_bool( ).
    DATA t74 TYPE abap_bool.
    DATA t75 TYPE abap_bool.
    DATA(t76) = CAST zlnt_runtime_set__7758c436a0c7( t59 ).
    DATA(t77) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d ).
    t75 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t76 i_t = t77 ).
    t74 = t75.
    IF t75 = abap_false.
      DATA t78 TYPE abap_bool.
      DATA(t79) = CAST zlnt_runtime_set__7758c436a0c7( t59 ).
      DATA(t80) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258 ).
      t78 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t79 i_t = t80 ).
      t74 = t78.
    ENDIF.
    t73 = t74.
    IF t74 = abap_false.
      DATA t81 TYPE abap_bool.
      DATA(t82) = CAST zlnt_runtime_set__7758c436a0c7( t59 ).
      DATA(t83) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d251_f36ca3dcb3e0 ).
      t81 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t82 i_t = t83 ).
      t73 = t81.
    ENDIF.
    t72 = t73.
    DATA t84 TYPE abap_bool.
    DATA t85 TYPE abap_bool.
    DATA(t86) = t72.
    t85 = xsdbool( t86 = abap_false ).
    t84 = t85.
    IF t85 = abap_true.
      DATA t87 TYPE abap_bool.
      DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
      t87 = zcl_lnt_slct_rclssfy_mdl=>is_count_all_pattern( i_children_9020 = t88 ).
      t84 = t87.
    ENDIF.
    IF t84 = abap_true.
      DATA(t89) = abap_false.
      result = t89.
      RETURN.
    ENDIF.
    DATA t90 TYPE abap_bool.
    DATA(t91) = CAST zlnt_runtime_set__7758c436a0c7( t59 ).
    DATA(t92) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167 ).
    t90 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t91 i_t = t92 ).
    IF t90 = abap_true.
      DATA(t93) = abap_true.
      result = t93.
      RETURN.
    ENDIF.
    DATA t94 TYPE abap_bool.
    DATA t95 TYPE abap_bool.
    DATA t96 TYPE abap_bool.
    DATA(t97) = CAST zlnt_runtime_set__7758c436a0c7( t59 ).
    DATA(t98) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d308_c2d6db3f5bbf ).
    t96 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t97 i_t = t98 ).
    t95 = xsdbool( t96 = abap_false ).
    t94 = t95.
    IF t95 = abap_true.
      DATA t99 TYPE abap_bool.
      DATA(t100) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
      t99 = zcl_lnt_slct_rclssfy_mdl=>contains_aggregation( i_children_9020 = t100 ).
      t94 = t99.
    ENDIF.
    IF t94 = abap_true.
      DATA(t101) = abap_false.
      result = t101.
      RETURN.
    ENDIF.
    DATA(t102) = abap_true.
    result = t102.

  ENDMETHOD.
  METHOD is_with_loop.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/2_statements/_select_reclassify.ts:91|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD reclassify_select.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zif_lnt_statement( i_stmt ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_pragmas ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t14) = CAST zcl_lnt_statement_node( t1 ).
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = CAST zcl_lnt_abstract_node( t13 ).
    t15 = t16->children.
    t12 = t15.
    t11 ?= t12.
    t9 = t10->concat( p0 = t11 ).
    t8 = t9.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    t5 = t17.
    t4 = t5.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE abap_bool.
    DATA(t20) = CAST zif_lnt_statement( t2 ).
    t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_st_statem_select ).
    t18 = t19.
    IF t19 = abap_false.
      DATA t21 TYPE abap_bool.
      DATA(t22) = CAST zif_lnt_statement( t2 ).
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_select_loop ).
      t18 = t21.
    ENDIF.
    IF t18 = abap_true.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      DATA(t25) = CAST zcl_lnt_statement_node( t1 ).
      t24 = zcl_lnt_slct_rclssfy_mdl=>is_select_loop( i_node = t25 ).
      t23 = t24.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t23.
      t26 = t27.
      IF t27 = abap_true.
        DATA t28 TYPE abap_bool.
        DATA(t29) = CAST zif_lnt_statement( t2 ).
        t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_st_statem_select ).
        t26 = t28.
      ENDIF.
      IF t26 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t30.
        DATA t31 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t31.
        DATA(t32) = NEW zcl_lnt_st_select_loop(  ).
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA t34 TYPE REF TO zcl_lnt_statement_node.
        DATA(t35) = CAST zcl_lnt_statement_node( t1 ).
        t34 = t35.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t37) = CAST zcl_lnt_statement_node( t34 ).
        t36 = t37->colon.
        t33 = t36.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t38.
        DATA(t39) = abap_true.
        IF t39 = abap_true.
          DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
          t38 = t40.
        ELSE.
          DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t41.
          t38 = t41.
        ENDIF.
        t31 = NEW zcl_lnt_statement_node( i_statement = t32 i_colon = t33 i_pragmas = t38 ).
        DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
        t30 = t31->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t42 ).
        result = t30.
        RETURN.
      ELSE.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE abap_bool.
        DATA(t45) = t23.
        t44 = xsdbool( t45 = abap_false ).
        t43 = t44.
        IF t44 = abap_true.
          DATA t46 TYPE abap_bool.
          DATA(t47) = CAST zif_lnt_statement( t2 ).
          t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_select_loop ).
          t43 = t46.
        ENDIF.
        IF t43 = abap_true.
          DATA t48 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t48.
          DATA t49 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t49.
          DATA(t50) = NEW zcl_lnt_st_statem_select(  ).
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          DATA t52 TYPE REF TO zcl_lnt_statement_node.
          DATA(t53) = CAST zcl_lnt_statement_node( t1 ).
          t52 = t53.
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t55) = CAST zcl_lnt_statement_node( t52 ).
          t54 = t55->colon.
          t51 = t54.
          DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t56.
          DATA(t57) = abap_true.
          IF t57 = abap_true.
            DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
            t56 = t58.
          ELSE.
            DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t59.
            t56 = t59.
          ENDIF.
          t49 = NEW zcl_lnt_statement_node( i_statement = t50 i_colon = t51 i_pragmas = t56 ).
          DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
          t48 = t49->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t60 ).
          result = t48.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t61 TYPE abap_bool.
      DATA t62 TYPE abap_bool.
      DATA(t63) = CAST zif_lnt_statement( t2 ).
      t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_st_with ).
      t61 = t62.
      IF t62 = abap_false.
        DATA t64 TYPE abap_bool.
        DATA(t65) = CAST zif_lnt_statement( t2 ).
        t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_st_with_loop ).
        t61 = t64.
      ENDIF.
      IF t61 = abap_true.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE abap_bool.
        DATA(t68) = CAST zcl_lnt_statement_node( t1 ).
        t67 = zcl_lnt_slct_rclssfy_mdl=>is_with_loop( i_node = t68 ).
        t66 = t67.
        DATA t69 TYPE abap_bool.
        DATA(t70) = t66.
        t69 = t70.
        IF t70 = abap_true.
          DATA t71 TYPE abap_bool.
          DATA(t72) = CAST zif_lnt_statement( t2 ).
          t71 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_st_with ).
          t69 = t71.
        ENDIF.
        IF t69 = abap_true.
          DATA t73 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t73.
          DATA t74 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t74.
          DATA(t75) = NEW zcl_lnt_st_with_loop(  ).
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          DATA t77 TYPE REF TO zcl_lnt_statement_node.
          DATA(t78) = CAST zcl_lnt_statement_node( t1 ).
          t77 = t78.
          DATA t79 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t80) = CAST zcl_lnt_statement_node( t77 ).
          t79 = t80->colon.
          t76 = t79.
          DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t81.
          DATA(t82) = abap_true.
          IF t82 = abap_true.
            DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
            t81 = t83.
          ELSE.
            DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t84.
            t81 = t84.
          ENDIF.
          t74 = NEW zcl_lnt_statement_node( i_statement = t75 i_colon = t76 i_pragmas = t81 ).
          DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
          t73 = t74->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t85 ).
          result = t73.
          RETURN.
        ELSE.
          DATA t86 TYPE abap_bool.
          DATA t87 TYPE abap_bool.
          DATA(t88) = t66.
          t87 = xsdbool( t88 = abap_false ).
          t86 = t87.
          IF t87 = abap_true.
            DATA t89 TYPE abap_bool.
            DATA(t90) = CAST zif_lnt_statement( t2 ).
            t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_st_with_loop ).
            t86 = t89.
          ENDIF.
          IF t86 = abap_true.
            DATA t91 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t91.
            DATA t92 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t92.
            DATA(t93) = NEW zcl_lnt_st_with(  ).
            DATA t94 TYPE REF TO zcl_lnt_abstract_token.
            DATA t95 TYPE REF TO zcl_lnt_statement_node.
            DATA(t96) = CAST zcl_lnt_statement_node( t1 ).
            t95 = t96.
            DATA t97 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t98) = CAST zcl_lnt_statement_node( t95 ).
            t97 = t98->colon.
            t94 = t97.
            DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t99.
            DATA(t100) = abap_true.
            IF t100 = abap_true.
              DATA(t101) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
              t99 = t101.
            ELSE.
              DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t102.
              t99 = t102.
            ENDIF.
            t92 = NEW zcl_lnt_statement_node( i_statement = t93 i_colon = t94 i_pragmas = t99 ).
            DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
            t91 = t92->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t103 ).
            result = t91.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t104) = CAST zcl_lnt_statement_node( t1 ).
    result = t104.

  ENDMETHOD.
  METHOD fn_has.
    DATA(t1) = CAST zlnt_runtime_set__7758c436a0c7( i_found ).
    DATA(t2) = CAST zlnt_runtime_clas_a39833db3295( i_t ).
    DATA t3 TYPE abap_bool.
    DATA(t4) = CAST zlnt_runtime_set__7758c436a0c7( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( t2 ).
    t3 = t4->has( p0 = t5 ).
    result = t3.

  ENDMETHOD.
  METHOD zlnt_builtin_init_6e4d264b60b9.
    IF zlnt_builtin_init_0dc66ed7883a = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_0dc66ed7883a = abap_true.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1827_944b1577c42e.
  ENDMETHOD.
ENDCLASS.
