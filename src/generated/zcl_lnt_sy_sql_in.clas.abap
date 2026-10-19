* TS: src/abap/5_syntax/expressions/sql_in.ts:11:1 SQLIn
CLASS zcl_lnt_sy_sql_in DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS is_range_row IMPORTING i_row_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_in IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d.
    t4 = t1->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t3 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      t9 = t3.
      zcl_lnt_sy_sql_set_op_group=>run_syntax( i_node = t9 i_input_967e = t2 ).
      RETURN.
    ENDIF.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE i.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t15 = t1->get_children( ).
    t14 ?= t15.
    t14->load( ).
    t13 = lines( t14->items ).
    DATA(t17) = 2.
    t12 = xsdbool( t13 = t17 ).
    IF t12 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
      t19 = t1->find_first_expression( i_type_9913 = t21 ).
      t18 = t19.
      DATA t22 TYPE abap_bool.
      t22 = xsdbool( t18 IS BOUND ).
      IF t22 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        DATA t25 TYPE REF TO zcl_lnt_abstract_type.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        t26 = t18.
        t25 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t26 i_input_967e = t2 ).
        t24 = t25.
        DATA(t29) = VALUE abap_bool( ).
        DATA(t30) = VALUE abap_bool( ).
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE abap_bool.
        t32 = xsdbool( t24 IS BOUND ).
        t31 = t32.
        IF t32 = abap_true.
          DATA t34 TYPE abap_bool.
          DATA t35 TYPE abap_bool.
          DATA t36 TYPE REF TO zcl_lnt_abstract_type.
          t36 = t24.
          t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_void_type ).
          t34 = xsdbool( t35 = abap_false ).
          t31 = t34.
        ENDIF.
        t30 = t31.
        IF t31 = abap_true.
          DATA t38 TYPE abap_bool.
          DATA t39 TYPE abap_bool.
          t39 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_unknown_type ).
          t38 = xsdbool( t39 = abap_false ).
          t30 = t38.
        ENDIF.
        t29 = t30.
        IF t30 = abap_true.
          DATA t41 TYPE abap_bool.
          DATA t42 TYPE abap_bool.
          t42 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t41 = xsdbool( t42 = abap_false ).
          t29 = t41.
        ENDIF.
        IF t29 = abap_true.
          DATA(t45) = |IN, not a table|.
          DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t46 = t2->issues.
          DATA t48 TYPE REF TO zcl_lnt_issue.
          DATA t50 TYPE REF TO zcl_lnt_abstract_token.
          t50 = t1->get_first_token( ).
          DATA t53 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t48 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t50 i_message_26cb = t45 i_fix = t53 ).
          t46->load( ).
          APPEND t48 TO t46->items.
          t46->save( ).
          RETURN.
        ENDIF.
        DATA t54 TYPE abap_bool.
        DATA t55 TYPE abap_bool.
        t55 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t54 = t55.
        IF t55 = abap_true.
          DATA t57 TYPE abap_bool.
          DATA t58 TYPE abap_bool.
          DATA t59 TYPE REF TO zcl_lnt_abstract_type.
          DATA t61 TYPE REF TO zcl_lnt_ty_table_type.
          t61 ?= t24.
          DATA t63 TYPE REF TO zcl_lnt_abstract_type.
          t63 = t61->row_type.
          t59 = t63.
          t58 = zcl_lnt_sy_sql_in=>is_range_row( i_row_type = t59 ).
          t57 = xsdbool( t58 = abap_false ).
          t54 = t57.
        ENDIF.
        IF t54 = abap_true.
          DATA t67 TYPE string.
          DATA t68 TYPE string.
          DATA t69 TYPE string.
          DATA t70 TYPE REF TO zcl_lnt_expression_node.
          t70 = t18.
          t69 = t70->concat_tokens( ).
          DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          DATA(t73) = |^@|.
          DATA(t74) = ||.
          CREATE OBJECT t72 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t73 flags = t74.
          DATA(t75) = ||.
          DATA(t76) = strlen( t69 ).
          t68 = t72->replace( p0 = t69 p1 = t75 ).
          DATA t77 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          DATA(t78) = `\[\]$`.
          DATA(t79) = ||.
          CREATE OBJECT t77 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t78 flags = t79.
          DATA(t80) = ||.
          DATA(t81) = strlen( t68 ).
          t67 = t77->replace( p0 = t68 p1 = t80 ).
          DATA t83 TYPE string.
          DATA t84 TYPE string.
          DATA(t85) = |row structure of |.
          DATA(t87) = strlen( t85 ).
          t84 = |{ t85 }{ t67 }|.
          DATA(t88) = | is not correct|.
          DATA(t89) = strlen( t84 ).
          t83 = |{ t84 }{ t88 }|.
          DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t90 = t2->issues.
          DATA t92 TYPE REF TO zcl_lnt_issue.
          DATA t94 TYPE REF TO zcl_lnt_abstract_token.
          t94 = t1->get_first_token( ).
          DATA t97 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t92 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t94 i_message_26cb = t83 i_fix = t97 ).
          t90->load( ).
          APPEND t92 TO t90->items.
          t90->save( ).
          RETURN.
        ENDIF.
      ENDIF.
      RETURN.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t98 = t1->find_direct_expressions( i_type_9913 = t100 ).
    DATA t101 TYPE REF TO zcl_lnt_expression_node.
    DATA t102 TYPE REF TO object.
    DATA(t103) = VALUE i( ).
    DO.
      t98->load( ).
      IF t103 >= lines( t98->items ).
        EXIT.
      ENDIF.
      CLEAR t102.
      READ TABLE t98->items INDEX t103 + 1 INTO t102.
      t103 = t103 + 1.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      CLEAR t101.
      IF t102 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t104 ?= t102.
        DATA t105 TYPE REF TO object.
        t105 = t104->as_ref( ).
        t101 ?= t105.
      ELSE.
        t101 ?= t102.
      ENDIF.
      DATA t106 TYPE REF TO zcl_lnt_abstract_type.
      t106 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t101 i_input_967e = t2 ).
    ENDDO.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d345_67103989a771.
    t109 = t1->find_direct_expressions( i_type_9913 = t111 ).
    DATA t112 TYPE REF TO zcl_lnt_expression_node.
    DATA t113 TYPE REF TO object.
    DATA(t114) = VALUE i( ).
    DO.
      t109->load( ).
      IF t114 >= lines( t109->items ).
        EXIT.
      ENDIF.
      CLEAR t113.
      READ TABLE t109->items INDEX t114 + 1 INTO t113.
      t114 = t114 + 1.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      CLEAR t112.
      IF t113 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t115 ?= t113.
        DATA t116 TYPE REF TO object.
        t116 = t115->as_ref( ).
        t112 ?= t116.
      ELSE.
        t112 ?= t113.
      ENDIF.
      DATA t117 TYPE REF TO zcl_lnt_abstract_type.
      t117 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t112 i_input_967e = t2 ).
    ENDDO.
  ENDMETHOD.

  METHOD is_range_row.
    DATA(t1) = i_row_type.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
    t3 = t4.
    IF t4 = abap_false.
      DATA t6 TYPE abap_bool.
      t6 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
      t3 = t6.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t8 TYPE abap_bool.
      t8 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
      t2 = t8.
    ENDIF.
    IF t2 = abap_true.
      result = abap_true.
      RETURN.
    ELSE.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE abap_bool.
      t12 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
      t11 = xsdbool( t12 = abap_false ).
      IF t11 = abap_true.
        result = abap_false.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF zcl_lnt_sql_in_module=>zlnt_builtin_init_67f8511dffbf = abap_false.
      zcl_lnt_sql_in_module=>zlnt_builtin_init_7517e34af3ee( ).
    ENDIF.
    t17 = zcl_lnt_sql_in_module=>range_components.
    t16 = t17.
    DATA t18 TYPE i.
    DATA t19 TYPE i.
    t16->load( ).
    t19 = lines( t16->items ).
    t18 = t19.
    DATA t21 TYPE i.
    t21 = 0.
    DATA t23 TYPE abap_bool.
    t23 = abap_true.
    DO.
      DATA t25 TYPE abap_bool.
      t25 = xsdbool( t21 < t18 ).
      IF t25 = abap_false.
        EXIT.
      ENDIF.
      DATA t29 TYPE string.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t30 = t16->get( p0 = t21 ).
      t29 = t30->value.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zcl_lnt_structure_type.
      t38 ?= t1.
      DATA t40 TYPE string.
      t40 = t29.
      DATA t42 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      t43 = t38->indexed.
      DATA t45 TYPE string.
      DATA(t47) = strlen( t40 ).
      t45 = t40.
      IF t45 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t45 TO UPPER CASE.
      ELSE.
        t45 = zlnt_runtime_uppe_91169605024d=>full( t45 ).
      ENDIF.
      t42 = t43->get( p0 = t45 ).
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = xsdbool( t42 IS INITIAL ).
      t50 = xsdbool( t51 = abap_false ).
      t34 = t50.
      t33 = xsdbool( t34 = abap_false ).
      IF t33 = abap_true.
        t23 = abap_false.
        EXIT.
      ENDIF.
      DATA t54 TYPE i.
      DATA(t56) = 1.
      t54 = t21 + t56.
      t21 = t54.
    ENDDO.
    t15 = t23.
    result = t15.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d838_3ad58c72117d.
  ENDMETHOD.
ENDCLASS.
