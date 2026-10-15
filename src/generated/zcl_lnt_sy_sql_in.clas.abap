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
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zcl_lnt_expression_node( t3 ).
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA(t10) = CAST zcl_lnt_expression_node( t3 ).
      t9 = t10.
      DATA(t11) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_sql_set_op_group=>run_syntax( i_node = t9 i_input_967e = t11 ).
      RETURN.
    ENDIF.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE i.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = CAST zif_lnt_union_bb14dc41( t1 ).
    t15 = t16->get_children(  ).
    t14 ?= t15.
    t14->load( ).
    t13 = lines( t14->items ).
    DATA(t17) = CONV i( 2 ).
    t12 = xsdbool( t13 = t17 ).
    IF t12 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
      t19 = t20->find_first_expression( i_type_9913 = t21 ).
      t18 = t19.
      DATA t22 TYPE abap_bool.
      DATA(t23) = CAST zcl_lnt_expression_node( t18 ).
      t22 = xsdbool( t23 IS BOUND ).
      IF t22 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        DATA t25 TYPE REF TO zcl_lnt_abstract_type.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        DATA(t27) = CAST zcl_lnt_expression_node( t18 ).
        t26 = t27.
        DATA(t28) = CAST zcl_lnt_syntax_input( t2 ).
        t25 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t26 i_input_967e = t28 ).
        t24 = t25.
        DATA(t29) = VALUE abap_bool( ).
        DATA(t30) = VALUE abap_bool( ).
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE abap_bool.
        DATA(t33) = CAST zcl_lnt_abstract_type( t24 ).
        t32 = xsdbool( t33 IS BOUND ).
        t31 = t32.
        IF t32 = abap_true.
          DATA t34 TYPE abap_bool.
          DATA t35 TYPE abap_bool.
          DATA t36 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t37) = CAST zcl_lnt_abstract_type( t24 ).
          t36 = t37.
          t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_void_type ).
          t34 = xsdbool( t35 = abap_false ).
          t31 = t34.
        ENDIF.
        t30 = t31.
        IF t31 = abap_true.
          DATA t38 TYPE abap_bool.
          DATA t39 TYPE abap_bool.
          DATA(t40) = CAST zcl_lnt_abstract_type( t24 ).
          t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_unknown_type ).
          t38 = xsdbool( t39 = abap_false ).
          t30 = t38.
        ENDIF.
        t29 = t30.
        IF t30 = abap_true.
          DATA t41 TYPE abap_bool.
          DATA t42 TYPE abap_bool.
          DATA(t43) = CAST zcl_lnt_abstract_type( t24 ).
          t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t41 = xsdbool( t42 = abap_false ).
          t29 = t41.
        ENDIF.
        IF t29 = abap_true.
          DATA t44 TYPE string.
          DATA(t45) = CONV string( |IN, not a table| ).
          t44 = t45.
          DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t47) = CAST zcl_lnt_syntax_input( t2 ).
          t46 = t47->issues.
          DATA t48 TYPE REF TO zcl_lnt_issue.
          DATA(t49) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t50 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t51) = CAST zif_lnt_union_bb14dc41( t1 ).
          t50 = t51->get_first_token(  ).
          DATA(t52) = CONV string( t44 ).
          DATA t53 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t53.
          t48 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t49 i_token = t50 i_message_26cb = t52 i_fix = t53 ).
          t46->load( ).
          APPEND t48 TO t46->items.
          t46->save( ).
          RETURN.
        ENDIF.
        DATA t54 TYPE abap_bool.
        DATA t55 TYPE abap_bool.
        DATA(t56) = CAST zcl_lnt_abstract_type( t24 ).
        t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t54 = t55.
        IF t55 = abap_true.
          DATA t57 TYPE abap_bool.
          DATA t58 TYPE abap_bool.
          DATA t59 TYPE REF TO zcl_lnt_abstract_type.
          DATA t60 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t61 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t62) = CAST zcl_lnt_abstract_type( t24 ).
          t61 ?= t62.
          t60 = t61.
          DATA t63 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t64) = CAST zcl_lnt_ty_table_type( t60 ).
          t63 = t64->row_type.
          t59 = t63.
          t58 = zcl_lnt_sy_sql_in=>is_range_row( i_row_type = t59 ).
          DATA(t65) = CONV abap_bool( abap_false ).
          t57 = xsdbool( t58 = t65 ).
          t54 = t57.
        ENDIF.
        IF t54 = abap_true.
          DATA t66 TYPE string.
          DATA t67 TYPE string.
          DATA t68 TYPE string.
          DATA t69 TYPE string.
          DATA t70 TYPE REF TO zcl_lnt_expression_node.
          DATA(t71) = CAST zcl_lnt_expression_node( t18 ).
          t70 = t71.
          t69 = t70->concat_tokens(  ).
          DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t72.
          DATA(t73) = CONV string( |^@| ).
          DATA(t74) = CONV string( || ).
          CREATE OBJECT t72 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t73 flags = t74.
          DATA(t75) = CONV string( || ).
          DATA(t76) = CONV i( strlen( t69 ) ).
          t68 = t72->replace( p0 = t69 p1 = t75 ).
          DATA t77 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t77.
          DATA(t78) = CONV string( `\[\]$` ).
          DATA(t79) = CONV string( || ).
          CREATE OBJECT t77 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t78 flags = t79.
          DATA(t80) = CONV string( || ).
          DATA(t81) = CONV i( strlen( t68 ) ).
          t67 = t77->replace( p0 = t68 p1 = t80 ).
          t66 = t67.
          DATA t82 TYPE string.
          DATA t83 TYPE string.
          DATA t84 TYPE string.
          DATA(t85) = CONV string( |row structure of | ).
          DATA(t86) = CONV string( t66 ).
          DATA(t87) = CONV i( strlen( t85 ) ).
          t84 = |{ t85 }{ t86 }|.
          DATA(t88) = CONV string( | is not correct| ).
          DATA(t89) = CONV i( strlen( t84 ) ).
          t83 = |{ t84 }{ t88 }|.
          t82 = t83.
          DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t91) = CAST zcl_lnt_syntax_input( t2 ).
          t90 = t91->issues.
          DATA t92 TYPE REF TO zcl_lnt_issue.
          DATA(t93) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t94 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t95) = CAST zif_lnt_union_bb14dc41( t1 ).
          t94 = t95->get_first_token(  ).
          DATA(t96) = CONV string( t82 ).
          DATA t97 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t97.
          t92 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t93 i_token = t94 i_message_26cb = t96 i_fix = t97 ).
          t90->load( ).
          APPEND t92 TO t90->items.
          t90->save( ).
          RETURN.
        ENDIF.
      ENDIF.
      RETURN.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t99) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t100) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
    t98 = t99->find_direct_expressions( i_type_9913 = t100 ).
    DATA t101 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t101.
    DATA t102 TYPE REF TO object.
    CLEAR t102.
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
      DATA(t107) = CAST zcl_lnt_expression_node( t101 ).
      DATA(t108) = CAST zcl_lnt_syntax_input( t2 ).
      t106 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t107 i_input_967e = t108 ).
    ENDDO.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t110) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t111) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d345_67103989a771 ).
    t109 = t110->find_direct_expressions( i_type_9913 = t111 ).
    DATA t112 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t112.
    DATA t113 TYPE REF TO object.
    CLEAR t113.
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
      DATA(t118) = CAST zcl_lnt_expression_node( t112 ).
      DATA(t119) = CAST zcl_lnt_syntax_input( t2 ).
      t117 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t118 i_input_967e = t119 ).
    ENDDO.
  ENDMETHOD.
  METHOD is_range_row.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_row_type ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA(t5) = CAST zcl_lnt_abstract_type( t1 ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_void_type ).
    t3 = t4.
    IF t4 = abap_false.
      DATA t6 TYPE abap_bool.
      DATA(t7) = CAST zcl_lnt_abstract_type( t1 ).
      t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_unknown_type ).
      t3 = t6.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t8 TYPE abap_bool.
      DATA(t9) = CAST zcl_lnt_abstract_type( t1 ).
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_any_type ).
      t2 = t8.
    ENDIF.
    IF t2 = abap_true.
      DATA(t10) = CONV abap_bool( abap_true ).
      result = t10.
      RETURN.
    ELSE.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE abap_bool.
      DATA(t13) = CAST zcl_lnt_abstract_type( t1 ).
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_structure_type ).
      t11 = xsdbool( t12 = abap_false ).
      IF t11 = abap_true.
        DATA(t14) = CONV abap_bool( abap_false ).
        result = t14.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t17.
    IF zcl_lnt_sql_in_module=>zlnt_builtin_init_67f8511dffbf = abap_false.
      zcl_lnt_sql_in_module=>zlnt_builtin_init_7517e34af3ee( ).
    ENDIF.
    t17 = zcl_lnt_sql_in_module=>range_components.
    t16 = t17.
    DATA t18 TYPE i.
    DATA t19 TYPE i.
    DATA(t20) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
    t20->load( ).
    t19 = lines( t20->items ).
    t18 = t19.
    DATA t21 TYPE i.
    DATA(t22) = CONV i( 0 ).
    t21 = t22.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CONV abap_bool( abap_true ).
    t23 = t24.
    DO.
      DATA t25 TYPE abap_bool.
      DATA(t26) = CONV i( t21 ).
      DATA(t27) = CONV i( t18 ).
      t25 = xsdbool( t26 < t27 ).
      IF t25 = abap_false.
        EXIT.
      ENDIF.
      DATA t28 TYPE string.
      DATA t29 TYPE string.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
      DATA(t32) = CONV i( t21 ).
      t30 = t31->get( p0 = t32 ).
      t29 = t30->value.
      t28 = t29.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_structure_type.
      DATA t38 TYPE REF TO zcl_lnt_structure_type.
      DATA(t39) = CAST zcl_lnt_abstract_type( t1 ).
      t38 ?= t39.
      t37 = t38.
      DATA t40 TYPE string.
      DATA(t41) = CONV string( t28 ).
      t40 = t41.
      DATA t42 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t44) = CAST zcl_lnt_structure_type( t37 ).
      t43 = t44->indexed.
      DATA t45 TYPE string.
      DATA(t46) = CONV string( t40 ).
      DATA(t47) = CONV i( strlen( t46 ) ).
      t45 = t46.
      IF t45 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t45 TO UPPER CASE.
      ELSE.
        t45 = zlnt_runtime_uppe_91169605024d=>full( t45 ).
      ENDIF.
      t42 = t43->get( p0 = t45 ).
      t36 = t42.
      t35 = t36.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      t48 = t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = CAST zcl_lnt_abstract_type( t35 ).
      IF t52 IS INITIAL.
        t51 = abap_true.
      ENDIF.
      t50 = xsdbool( t51 = abap_false ).
      t34 = t50.
      t33 = xsdbool( t34 = abap_false ).
      IF t33 = abap_true.
        DATA(t53) = CONV abap_bool( abap_false ).
        t23 = t53.
        EXIT.
      ENDIF.
      DATA t54 TYPE i.
      DATA(t55) = CONV i( t21 ).
      DATA(t56) = CONV i( 1 ).
      t54 = t55 + t56.
      t21 = t54.
    ENDDO.
    DATA(t57) = CONV abap_bool( t23 ).
    t15 = t57.
    result = t15.
    RETURN.
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
