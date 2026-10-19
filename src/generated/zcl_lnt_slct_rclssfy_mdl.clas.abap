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
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t4 TYPE REF TO object.
    DATA(t5) = VALUE i( ).
    DO.
      t1->load( ).
      IF t5 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t1->items INDEX t5 + 1 INTO t4.
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
      IF xsdbool( xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t12 TYPE REF TO zif_lnt_statement_runnable.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO object.
      t15 = t3.
      t13 ?= t15.
      t12 = t13->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      IF xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_sql_aggregation ) = abap_true.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA t21 TYPE REF TO object.
        t21 = t3.
        t19 ?= t21.
        DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
        t18 = t19->find_direct_expression( i_type_9913 = t22 ).
        DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t23.
        IF xsdbool( t18 IS INITIAL ) = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t29 TYPE REF TO zif_lnt_statement_runnable.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA t32 TYPE REF TO object.
      t32 = t3.
      t30 ?= t32.
      t29 = t30->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      IF xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_st_sql_set_op_group ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t34 TYPE REF TO zif_lnt_statement_runnable.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA t37 TYPE REF TO object.
      t37 = t3.
      t35 ?= t37.
      t34 = t35->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      IF xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_st_sql_from ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t41 TYPE REF TO zcl_lnt_abstract_node.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      DATA t44 TYPE REF TO object.
      t44 = t3.
      t42 ?= t44.
      t41 = t42.
      t40 = t41->children.
      t39 ?= t40.
      IF zcl_lnt_slct_rclssfy_mdl=>contains_aggregation( i_children_9020 = t39 ) = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD is_count_all_pattern.
    DATA(t1) = i_children_9020.
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t4 TYPE REF TO object.
    DATA(t5) = VALUE i( ).
    DO.
      t1->load( ).
      IF t5 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t1->items INDEX t5 + 1 INTO t4.
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
      IF xsdbool( xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t11 TYPE REF TO zif_lnt_statement_runnable.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO object.
      t15 = t3.
      t13 ?= t15.
      t11 = t13->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_sql_group_by ).
      t17 = t18.
      IF t18 = abap_false.
        t17 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_sql_having ).
      ENDIF.
      t16 = t17.
      IF t17 = abap_false.
        t16 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_st_sql_order_by ).
      ENDIF.
      IF t16 = abap_true.
        result = abap_false.
        RETURN.
      ENDIF.
    ENDDO.
    result = zcl_lnt_slct_rclssfy_mdl=>contains_aggregation( i_children_9020 = t1 ).

  ENDMETHOD.

  METHOD scan_for_expr_types.
    DATA(t1) = i_children_9020.
    DATA(t2) = i_found.
    DATA(t3) = i_targets.
    DATA t5 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
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
      DATA t11 TYPE i.
      t11 = t2->size( ).
      t3->load( ).
      IF xsdbool( t11 = lines( t3->items ) ) = abap_true.
        RETURN.
      ENDIF.
      IF xsdbool( xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_statement_runnable.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO object.
      t22 = t5.
      t20 ?= t22.
      t18 = t20->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      IF xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_st_sql_set_op_group ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t26 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      DATA(t28) = VALUE i( ).
      DO.
        t3->load( ).
        IF t28 >= lines( t3->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t3->items INDEX t28 + 1 INTO t27.
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
        DATA(t32) = t26.
        DATA t33 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t33.
        IF t18 IS BOUND.
          t33 = t18->zlnt_builtin_clas_3f891b097658( ).
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
          t34 = t2->add( p0 = t26 ).
          EXIT.
        ENDIF.
      ENDDO.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t39 TYPE REF TO zcl_lnt_abstract_node.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      DATA t42 TYPE REF TO object.
      t42 = t5.
      t40 ?= t42.
      t39 = t40.
      t38 = t39->children.
      t37 ?= t38.
      zcl_lnt_slct_rclssfy_mdl=>scan_for_expr_types( i_children_9020 = t37 i_found = t2 i_targets = t3 ).
    ENDDO.
  ENDMETHOD.

  METHOD is_select_loop.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
    t2 = i_node->find_direct_expression( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t2 IS BOUND ) = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t12 TYPE REF TO zcl_lnt_abstract_node.
      t12 = t2.
      t11 = t12->children.
      t10 ?= t11.
      t7 = t10.
    ELSE.
      CREATE OBJECT t7.
    ENDIF.
    t6 = t7.
    DATA t19 TYPE abap_bool.
    t19 = abap_false.
    DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t6->load( ).
      IF t24 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t6->items INDEX t24 + 1 INTO t23.
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
      t28 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_token_node ).
      t27 = t28.
      IF t28 = abap_true.
        DATA t31 TYPE string.
        DATA t32 TYPE string.
        DATA t35 TYPE REF TO zcl_lnt_token_node.
        DATA t37 TYPE REF TO object.
        t37 = t22.
        t35 ?= t37.
        t32 = t35->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->str.
        DATA(t40) = strlen( t32 ).
        t31 = t32.
        IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t31 TO UPPER CASE.
        ELSE.
          t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
        ENDIF.
        t27 = xsdbool( t31 = |SINGLE| ).
      ENDIF.
      IF t27 = abap_true.
        t19 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    IF t19 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a.
    t47->load( ).
    APPEND t50 TO t47->items.
    t47->save( ).
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d341_321f607af2eb.
    t47->load( ).
    APPEND t52 TO t47->items.
    t47->save( ).
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t47->load( ).
    APPEND t54 TO t47->items.
    t47->save( ).
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
    t47->load( ).
    APPEND t56 TO t47->items.
    t47->save( ).
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
    t47->load( ).
    APPEND t58 TO t47->items.
    t47->save( ).
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60.
    t47->load( ).
    APPEND t60 TO t47->items.
    t47->save( ).
    DATA t62 TYPE REF TO zlnt_runtime_set__7758c436a0c7.
    t62 = NEW zlnt_runtime_set__7758c436a0c7( ).
    zcl_lnt_slct_rclssfy_mdl=>scan_for_expr_types( i_children_9020 = t6 i_found = t62 i_targets = t47 ).
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d341_321f607af2eb.
    IF zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t62 i_t = t69 ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    IF zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t62 i_t = t73 ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE abap_bool.
    DATA t78 TYPE abap_bool.
    DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t78 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t62 i_t = t80 ).
    t77 = t78.
    IF t78 = abap_false.
      DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
      t77 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t62 i_t = t83 ).
    ENDIF.
    t76 = t77.
    IF t77 = abap_false.
      DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
      t76 = zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t62 i_t = t86 ).
    ENDIF.
    DATA t87 TYPE abap_bool.
    DATA t88 TYPE abap_bool.
    t88 = xsdbool( t76 = abap_false ).
    t87 = t88.
    IF t88 = abap_true.
      t87 = zcl_lnt_slct_rclssfy_mdl=>is_count_all_pattern( i_children_9020 = t6 ).
    ENDIF.
    IF t87 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a.
    IF zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t62 i_t = t95 ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t97 TYPE abap_bool.
    DATA t98 TYPE abap_bool.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60.
    t98 = xsdbool( zcl_lnt_slct_rclssfy_mdl=>fn_has( i_found = t62 i_t = t101 ) = abap_false ).
    t97 = t98.
    IF t98 = abap_true.
      t97 = zcl_lnt_slct_rclssfy_mdl=>contains_aggregation( i_children_9020 = t6 ).
    ENDIF.
    IF t97 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    result = abap_true.

  ENDMETHOD.

  METHOD is_with_loop.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
    t2 = i_node->find_direct_expression( i_type_9913 = t5 ).
    IF xsdbool( xsdbool( t2 IS BOUND ) = abap_false ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d341_321f607af2eb.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t12->load( ).
    APPEND t17 TO t12->items.
    t12->save( ).
    DATA t19 TYPE REF TO zlnt_runtime_set__7758c436a0c7.
    t19 = NEW zlnt_runtime_set__7758c436a0c7( ).
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zcl_lnt_abstract_node.
    t23 = t2.
    t22 = t23->children.
    t21 ?= t22.
    zcl_lnt_slct_rclssfy_mdl=>scan_for_expr_types( i_children_9020 = t21 i_found = t19 i_targets = t12 ).
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d341_321f607af2eb.
    IF t19->has( p0 = t32 ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    IF t19->has( p0 = t36 ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    result = abap_true.

  ENDMETHOD.

  METHOD reclassify_select.
    DATA(t1) = i_node.
    DATA(t2) = i_stmt.
    DATA(t3) = i_pragmas.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zcl_lnt_abstract_node.
    t13 = t1.
    t12 = t13->children.
    t11 ?= t12.
    t4 = t7->concat( p0 = t11 ).
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE abap_bool.
    t19 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_statem_select ).
    t18 = t19.
    IF t19 = abap_false.
      t18 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_select_loop ).
    ENDIF.
    IF t18 = abap_true.
      DATA t23 TYPE abap_bool.
      t23 = zcl_lnt_slct_rclssfy_mdl=>is_select_loop( i_node = t1 ).
      DATA t26 TYPE abap_bool.
      t26 = t23.
      IF t23 = abap_true.
        t26 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_statem_select ).
      ENDIF.
      IF t26 = abap_true.
        DATA(t32) = NEW zcl_lnt_st_select_loop( ).
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        t33 = t1->colon.
        result = NEW zcl_lnt_statement_node( i_statement = t32 i_colon = t33 i_pragmas = t3 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t4 ).
        RETURN.
      ELSE.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE abap_bool.
        t44 = xsdbool( t23 = abap_false ).
        t43 = t44.
        IF t44 = abap_true.
          t43 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_select_loop ).
        ENDIF.
        IF t43 = abap_true.
          DATA(t50) = NEW zcl_lnt_st_statem_select( ).
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          t51 = t1->colon.
          result = NEW zcl_lnt_statement_node( i_statement = t50 i_colon = t51 i_pragmas = t3 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t4 ).
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t61 TYPE abap_bool.
      DATA t62 TYPE abap_bool.
      t62 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_with ).
      t61 = t62.
      IF t62 = abap_false.
        t61 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_with_loop ).
      ENDIF.
      IF t61 = abap_true.
        DATA t66 TYPE abap_bool.
        t66 = zcl_lnt_slct_rclssfy_mdl=>is_with_loop( i_node = t1 ).
        DATA t69 TYPE abap_bool.
        t69 = t66.
        IF t66 = abap_true.
          t69 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_with ).
        ENDIF.
        IF t69 = abap_true.
          DATA(t75) = NEW zcl_lnt_st_with_loop( ).
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          t76 = t1->colon.
          result = NEW zcl_lnt_statement_node( i_statement = t75 i_colon = t76 i_pragmas = t3 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t4 ).
          RETURN.
        ELSE.
          DATA t86 TYPE abap_bool.
          DATA t87 TYPE abap_bool.
          t87 = xsdbool( t66 = abap_false ).
          t86 = t87.
          IF t87 = abap_true.
            t86 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_with_loop ).
          ENDIF.
          IF t86 = abap_true.
            DATA(t93) = NEW zcl_lnt_st_with( ).
            DATA t94 TYPE REF TO zcl_lnt_abstract_token.
            t94 = t1->colon.
            result = NEW zcl_lnt_statement_node( i_statement = t93 i_colon = t94 i_pragmas = t3 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t4 ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD fn_has.
    DATA(t2) = i_t.
    result = i_found->has( p0 = t2 ).

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
