* TS: src/abap/2_statements/_select_reclassify.ts.module module
CLASS zcl_lnt_slct_rclssfy_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slct_rclssfy_mdl IMPLEMENTATION.
  METHOD contains_aggregation.
    DATA(t1) = i_children_9020.
    DATA(t2) = t1.
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t3.
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_expression_node ).
      t8 = xsdbool( t9 = abap_false ).
      IF t8 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE REF TO zif_lnt_statement_runnable.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = t3.
      DATA t15 TYPE REF TO object.
      t15 = t14.
      t13 ?= t15.
      t12 = t13->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_sql_aggregation ).
      IF t11 = abap_true.
        DATA(t16) = VALUE abap_bool( ).
        DATA t17 TYPE REF TO zcl_lnt_expression_node.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA(t20) = t3.
        DATA t21 TYPE REF TO object.
        t21 = t20.
        t19 ?= t21.
        DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
        t18 = t19->find_direct_expression( i_type_9913 = t22 ).
        t17 = t18.
        DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t24.
        t23 = t24.
        DATA(t25) = VALUE abap_bool( ).
        DATA(t26) = t17.
        IF t26 IS INITIAL.
          t25 = abap_true.
        ENDIF.
        t16 = t25.
        IF t16 = abap_true.
          DATA(t27) = abap_true.
          result = t27.
          RETURN.
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE REF TO zif_lnt_statement_runnable.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA(t31) = t3.
      DATA t32 TYPE REF TO object.
      t32 = t31.
      t30 ?= t32.
      t29 = t30->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_st_sql_set_op_group ).
      IF t28 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE REF TO zif_lnt_statement_runnable.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA(t36) = t3.
      DATA t37 TYPE REF TO object.
      t37 = t36.
      t35 ?= t37.
      t34 = t35->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_st_sql_from ).
      IF t33 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t41 TYPE REF TO zcl_lnt_abstract_node.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      DATA(t43) = t3.
      DATA t44 TYPE REF TO object.
      t44 = t43.
      t42 ?= t44.
      t41 = t42.
      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t46) = t41.
      t45 = t46->children.
      t40 = t45.
      t39 ?= t40.
      t38 = zcl_lnt_slct_rclssfy_mdl=>contains_aggregation( i_children_9020 = t39 ).
      IF t38 = abap_true.
        DATA(t47) = abap_true.
        result = t47.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t48) = abap_false.
    result = t48.

  ENDMETHOD.

  METHOD is_count_all_pattern.
    DATA(t1) = i_children_9020.
    DATA(t2) = t1.
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t3.
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_expression_node ).
      t8 = xsdbool( t9 = abap_false ).
      IF t8 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t11 TYPE REF TO zif_lnt_statement_runnable.
      DATA t12 TYPE REF TO zif_lnt_statement_runnable.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = t3.
      DATA t15 TYPE REF TO object.
      t15 = t14.
      t13 ?= t15.
      t12 = t13->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t11 = t12.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t11.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_sql_group_by ).
      t17 = t18.
      IF t18 = abap_false.
        DATA t20 TYPE abap_bool.
        DATA(t21) = t11.
        t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_sql_having ).
        t17 = t20.
      ENDIF.
      t16 = t17.
      IF t17 = abap_false.
        DATA t22 TYPE abap_bool.
        DATA(t23) = t11.
        t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_st_sql_order_by ).
        t16 = t22.
      ENDIF.
      IF t16 = abap_true.
        DATA(t24) = abap_false.
        result = t24.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t25 TYPE abap_bool.
    DATA(t26) = t1.
    t25 = zcl_lnt_slct_rclssfy_mdl=>contains_aggregation( i_children_9020 = t26 ).
    result = t25.

  ENDMETHOD.

  METHOD scan_for_expr_types.
    DATA(t1) = i_children_9020.
    DATA(t2) = i_found.
    DATA(t3) = i_targets.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE i.
      DATA(t12) = t2.
      t11 = t12->size( ).
      DATA t13 TYPE i.
      DATA(t14) = t3.
      t14->load( ).
      t13 = lines( t14->items ).
      t10 = xsdbool( t11 = t13 ).
      IF t10 = abap_true.
        RETURN.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t5.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_expression_node ).
      t15 = xsdbool( t16 = abap_false ).
      IF t15 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_statement_runnable.
      DATA t19 TYPE REF TO zif_lnt_statement_runnable.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = t5.
      DATA t22 TYPE REF TO object.
      t22 = t21.
      t20 ?= t22.
      t19 = t20->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t18 = t19.
      DATA t23 TYPE abap_bool.
      DATA(t24) = t18.
      t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_sql_set_op_group ).
      IF t23 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t25) = t3.
      DATA t26 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      DATA(t28) = VALUE i( ).
      DO.
        t25->load( ).
        IF t28 >= lines( t25->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t25->items INDEX t28 + 1 INTO t27.
        t28 = t28 + 1.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        CLEAR t26.
        IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t29 ?= t27.
          t26 = t29->as_classvalue( ).
        ELSE.
          t26 ?= t27.
        ENDIF.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t31) = t18.
        DATA(t32) = t26.
        DATA t33 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t33.
        IF t31 IS BOUND.
          t33 = t31->zlnt_builtin_clas_3f891b097658( ).
          WHILE t33 IS BOUND.
            IF t33 = t32.
              t30 = abap_true.
              EXIT.
            ENDIF.
            t33 = t33->parent.
          ENDWHILE.
        ENDIF.
        IF t30 = abap_true.
          DATA t34 TYPE REF TO zlnt_runtime_set__7758c436a0c7.
          DATA(t35) = t2.
          DATA(t36) = t26.
          t34 = t35->add( p0 = t36 ).
          EXIT.
        ENDIF.
      ENDDO.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t39 TYPE REF TO zcl_lnt_abstract_node.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      DATA(t41) = t5.
      DATA t42 TYPE REF TO object.
      t42 = t41.
      t40 ?= t42.
      t39 = t40.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t44) = t39.
      t43 = t44->children.
      t38 = t43.
      t37 ?= t38.
      DATA(t45) = t2.
      DATA(t46) = t3.
      zcl_lnt_slct_rclssfy_mdl=>scan_for_expr_types( i_children_9020 = t37 i_found = t45 i_targets = t46 ).
    ENDDO.
  ENDMETHOD.

  METHOD is_select_loop.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
    t3 = t4->find_direct_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t2.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t12 TYPE REF TO zcl_lnt_abstract_node.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = t2.
      t13 = t14.
      t12 = t13.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t16) = t12.
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
    DATA(t21) = t6.
    DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    DATA(t24) = VALUE i( ).
    DO.
      t21->load( ).
      IF t24 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t21->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      DATA(t29) = t22.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_token_node ).
      t27 = t28.
      IF t28 = abap_true.
        DATA(t30) = VALUE abap_bool( ).
        DATA t31 TYPE string.
        DATA t32 TYPE string.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        DATA t35 TYPE REF TO zcl_lnt_token_node.
        DATA(t36) = t22.
        DATA t37 TYPE REF TO object.
        t37 = t36.
        t35 ?= t37.
        t34 = t35->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t33 = t34.
        DATA t38 TYPE string.
        DATA(t39) = t33.
        t38 = t39->str.
        t32 = t38.
        DATA(t40) = strlen( t32 ).
        t31 = t32.
        IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t31 TO UPPER CASE.
        ELSE.
          t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
        ENDIF.
        DATA(t41) = |SINGLE|.
        t30 = xsdbool( t31 = t41 ).
        t27 = t30.
      ENDIF.
      IF t27 = abap_true.
        DATA(t42) = abap_true.
        t19 = t42.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t43) = t19.
    t18 = t43.
    IF t18 = abap_true.
      DATA(t44) = abap_false.
      result = t44.
      RETURN.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t48.
    t47 = t48.
    DATA(t49) = t47.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a.
    t49->load( ).
    APPEND t50 TO t49->items.
    t49->save( ).
    DATA(t51) = t47.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d341_321f607af2eb.
    t51->load( ).
    APPEND t52 TO t51->items.
    t51->save( ).
    DATA(t53) = t47.
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA(t55) = t47.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
    t55->load( ).
    APPEND t56 TO t55->items.
    t55->save( ).
    DATA(t57) = t47.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
    t57->load( ).
    APPEND t58 TO t57->items.
    t57->save( ).
    DATA(t59) = t47.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60.
    t59->load( ).
    APPEND t60 TO t59->items.
    t59->save( ).
    DATA(t61) = t47.
    t46 = t61.
    t45 = t46.
    DATA t62 TYPE REF TO zlnt_runtime_set__7758c436a0c7.
    DATA(t63) = NEW zlnt_runtime_set__7758c436a0c7( ).
    t62 = t63.
    DATA(t64) = t6.
    DATA(t65) = t62.
    DATA(t66) = t45.
    zcl_lnt_slct_rclssfy_mdl=>scan_for_expr_types( i_children_9020 = t64 i_found = t65 i_targets = t66 ).
    DATA t67 TYPE abap_bool.
    DATA(t68) = t62.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d341_321f607af2eb.
    t67 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t68 i_t = t69 ).
    IF t67 = abap_true.
      DATA(t70) = abap_true.
      result = t70.
      RETURN.
    ENDIF.
    DATA t71 TYPE abap_bool.
    DATA(t72) = t62.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t71 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t72 i_t = t73 ).
    IF t71 = abap_true.
      DATA(t74) = abap_false.
      result = t74.
      RETURN.
    ENDIF.
    DATA(t75) = VALUE abap_bool( ).
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE abap_bool.
    DATA t78 TYPE abap_bool.
    DATA(t79) = t62.
    DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t78 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t79 i_t = t80 ).
    t77 = t78.
    IF t78 = abap_false.
      DATA t81 TYPE abap_bool.
      DATA(t82) = t62.
      DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
      t81 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t82 i_t = t83 ).
      t77 = t81.
    ENDIF.
    t76 = t77.
    IF t77 = abap_false.
      DATA t84 TYPE abap_bool.
      DATA(t85) = t62.
      DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
      t84 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t85 i_t = t86 ).
      t76 = t84.
    ENDIF.
    t75 = t76.
    DATA t87 TYPE abap_bool.
    DATA t88 TYPE abap_bool.
    DATA(t89) = t75.
    t88 = xsdbool( t89 = abap_false ).
    t87 = t88.
    IF t88 = abap_true.
      DATA t90 TYPE abap_bool.
      DATA(t91) = t6.
      t90 = zcl_lnt_slct_rclssfy_mdl=>is_count_all_pattern( i_children_9020 = t91 ).
      t87 = t90.
    ENDIF.
    IF t87 = abap_true.
      DATA(t92) = abap_false.
      result = t92.
      RETURN.
    ENDIF.
    DATA t93 TYPE abap_bool.
    DATA(t94) = t62.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a.
    t93 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t94 i_t = t95 ).
    IF t93 = abap_true.
      DATA(t96) = abap_true.
      result = t96.
      RETURN.
    ENDIF.
    DATA t97 TYPE abap_bool.
    DATA t98 TYPE abap_bool.
    DATA t99 TYPE abap_bool.
    DATA(t100) = t62.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60.
    t99 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t100 i_t = t101 ).
    t98 = xsdbool( t99 = abap_false ).
    t97 = t98.
    IF t98 = abap_true.
      DATA t102 TYPE abap_bool.
      DATA(t103) = t6.
      t102 = zcl_lnt_slct_rclssfy_mdl=>contains_aggregation( i_children_9020 = t103 ).
      t97 = t102.
    ENDIF.
    IF t97 = abap_true.
      DATA(t104) = abap_false.
      result = t104.
      RETURN.
    ENDIF.
    DATA(t105) = abap_true.
    result = t105.

  ENDMETHOD.

  METHOD is_with_loop.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
    t3 = t4->find_direct_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t2.
    t7 = xsdbool( t8 IS BOUND ).
    t6 = xsdbool( t7 = abap_false ).
    IF t6 = abap_true.
      DATA(t9) = abap_true.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d341_321f607af2eb.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t16) = t12.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t16->load( ).
    APPEND t17 TO t16->items.
    t16->save( ).
    DATA(t18) = t12.
    t11 = t18.
    t10 = t11.
    DATA t19 TYPE REF TO zlnt_runtime_set__7758c436a0c7.
    DATA(t20) = NEW zlnt_runtime_set__7758c436a0c7( ).
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zcl_lnt_abstract_node.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA(t25) = t2.
    t24 = t25.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = t23.
    t26 = t27->children.
    t22 = t26.
    t21 ?= t22.
    DATA(t28) = t19.
    DATA(t29) = t10.
    zcl_lnt_slct_rclssfy_mdl=>scan_for_expr_types( i_children_9020 = t21 i_found = t28 i_targets = t29 ).
    DATA t30 TYPE abap_bool.
    DATA(t31) = t19.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d341_321f607af2eb.
    t30 = t31->has( p0 = t32 ).
    IF t30 = abap_true.
      DATA(t33) = abap_true.
      result = t33.
      RETURN.
    ENDIF.
    DATA t34 TYPE abap_bool.
    DATA(t35) = t19.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t34 = t35->has( p0 = t36 ).
    IF t34 = abap_true.
      DATA(t37) = abap_false.
      result = t37.
      RETURN.
    ENDIF.
    DATA(t38) = abap_true.
    result = t38.

  ENDMETHOD.

  METHOD reclassify_select.
    DATA(t1) = i_node.
    DATA(t2) = i_stmt.
    DATA(t3) = i_pragmas.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t6.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t14) = t1.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t13.
    t15 = t16->children.
    t12 = t15.
    t11 ?= t12.
    t9 = t10->concat( p0 = t11 ).
    t8 = t9.
    DATA(t17) = t8.
    t5 = t17.
    t4 = t5.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t2.
    t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_st_statem_select ).
    t18 = t19.
    IF t19 = abap_false.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t2.
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_select_loop ).
      t18 = t21.
    ENDIF.
    IF t18 = abap_true.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      DATA(t25) = t1.
      t24 = zcl_lnt_slct_rclssfy_mdl=>is_select_loop( i_node = t25 ).
      t23 = t24.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t23.
      t26 = t27.
      IF t27 = abap_true.
        DATA t28 TYPE abap_bool.
        DATA(t29) = t2.
        t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_st_statem_select ).
        t26 = t28.
      ENDIF.
      IF t26 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t30.
        DATA t31 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t31.
        DATA(t32) = NEW zcl_lnt_st_select_loop( ).
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA t34 TYPE REF TO zcl_lnt_statement_node.
        DATA(t35) = t1.
        t34 = t35.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t37) = t34.
        t36 = t37->colon.
        t33 = t36.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t38.
        DATA(t39) = abap_true.
        IF t39 = abap_true.
          DATA(t40) = t3.
          t38 = t40.
        ELSE.
          DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t41.
          t38 = t41.
        ENDIF.
        t31 = NEW zcl_lnt_statement_node( i_statement = t32 i_colon = t33 i_pragmas = t38 ).
        DATA(t42) = t4.
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
          DATA(t47) = t2.
          t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_select_loop ).
          t43 = t46.
        ENDIF.
        IF t43 = abap_true.
          DATA t48 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t48.
          DATA t49 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t49.
          DATA(t50) = NEW zcl_lnt_st_statem_select( ).
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          DATA t52 TYPE REF TO zcl_lnt_statement_node.
          DATA(t53) = t1.
          t52 = t53.
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t55) = t52.
          t54 = t55->colon.
          t51 = t54.
          DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t56.
          DATA(t57) = abap_true.
          IF t57 = abap_true.
            DATA(t58) = t3.
            t56 = t58.
          ELSE.
            DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t59.
            t56 = t59.
          ENDIF.
          t49 = NEW zcl_lnt_statement_node( i_statement = t50 i_colon = t51 i_pragmas = t56 ).
          DATA(t60) = t4.
          t48 = t49->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t60 ).
          result = t48.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t61 TYPE abap_bool.
      DATA t62 TYPE abap_bool.
      DATA(t63) = t2.
      t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_st_with ).
      t61 = t62.
      IF t62 = abap_false.
        DATA t64 TYPE abap_bool.
        DATA(t65) = t2.
        t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_st_with_loop ).
        t61 = t64.
      ENDIF.
      IF t61 = abap_true.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE abap_bool.
        DATA(t68) = t1.
        t67 = zcl_lnt_slct_rclssfy_mdl=>is_with_loop( i_node = t68 ).
        t66 = t67.
        DATA t69 TYPE abap_bool.
        DATA(t70) = t66.
        t69 = t70.
        IF t70 = abap_true.
          DATA t71 TYPE abap_bool.
          DATA(t72) = t2.
          t71 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_st_with ).
          t69 = t71.
        ENDIF.
        IF t69 = abap_true.
          DATA t73 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t73.
          DATA t74 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t74.
          DATA(t75) = NEW zcl_lnt_st_with_loop( ).
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          DATA t77 TYPE REF TO zcl_lnt_statement_node.
          DATA(t78) = t1.
          t77 = t78.
          DATA t79 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t80) = t77.
          t79 = t80->colon.
          t76 = t79.
          DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t81.
          DATA(t82) = abap_true.
          IF t82 = abap_true.
            DATA(t83) = t3.
            t81 = t83.
          ELSE.
            DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t84.
            t81 = t84.
          ENDIF.
          t74 = NEW zcl_lnt_statement_node( i_statement = t75 i_colon = t76 i_pragmas = t81 ).
          DATA(t85) = t4.
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
            DATA(t90) = t2.
            t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_st_with_loop ).
            t86 = t89.
          ENDIF.
          IF t86 = abap_true.
            DATA t91 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t91.
            DATA t92 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t92.
            DATA(t93) = NEW zcl_lnt_st_with( ).
            DATA t94 TYPE REF TO zcl_lnt_abstract_token.
            DATA t95 TYPE REF TO zcl_lnt_statement_node.
            DATA(t96) = t1.
            t95 = t96.
            DATA t97 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t98) = t95.
            t97 = t98->colon.
            t94 = t97.
            DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t99.
            DATA(t100) = abap_true.
            IF t100 = abap_true.
              DATA(t101) = t3.
              t99 = t101.
            ELSE.
              DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t102.
              t99 = t102.
            ENDIF.
            t92 = NEW zcl_lnt_statement_node( i_statement = t93 i_colon = t94 i_pragmas = t99 ).
            DATA(t103) = t4.
            t91 = t92->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t103 ).
            result = t91.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t104) = t1.
    result = t104.

  ENDMETHOD.

  METHOD fn_has.
    DATA(t1) = i_found.
    DATA(t2) = i_t.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    DATA(t5) = t2.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1919_72e5ec9eb822.
  ENDMETHOD.
ENDCLASS.
