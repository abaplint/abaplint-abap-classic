* TS: src/abap/5_syntax/expressions/field_assignment.ts:8:1 FieldAssignment
CLASS zcl_lnt_sy_field_assignment DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_field_assignment IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = CAST zcl_lnt_expression_node( t4 ).
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = CAST zcl_lnt_expression_node( t9 ).
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE string.
      DATA(t16) = |FieldAssignment, FieldSub node not found|.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = CAST zcl_lnt_syntax_input( t2 ).
      t17 = t18->issues.
      DATA t19 TYPE REF TO zcl_lnt_issue.
      DATA(t20) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t22) = CAST zif_lnt_union_bb14dc41( t1 ).
      t21 = t22->get_first_token( ).
      DATA(t23) = t15.
      DATA t24 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t24.
      t19 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t20 i_token = t21 i_message_26cb = t23 i_fix = t24 ).
      APPEND t19 TO t17->items.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA(t27) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t26 = t27->find_direct_expression( i_type_9913 = t28 ).
    t25 = t26.
    DATA(t29) = VALUE abap_bool( ).
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = CAST zcl_lnt_expression_node( t25 ).
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = CAST zcl_lnt_expression_node( t30 ).
    IF t35 IS INITIAL.
      t34 = abap_true.
    ENDIF.
    t29 = t34.
    IF t29 = abap_true.
      DATA t36 TYPE string.
      DATA(t37) = |FieldAssignment, Source node not found|.
      t36 = t37.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t39) = CAST zcl_lnt_syntax_input( t2 ).
      t38 = t39->issues.
      DATA t40 TYPE REF TO zcl_lnt_issue.
      DATA(t41) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t43) = CAST zif_lnt_union_bb14dc41( t1 ).
      t42 = t43->get_first_token( ).
      DATA(t44) = t36.
      DATA t45 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t45.
      t40 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t41 i_token = t42 i_message_26cb = t44 i_fix = t45 ).
      APPEND t40 TO t38->items.
      RETURN.
    ENDIF.
    DATA t46 TYPE REF TO zcl_lnt_abstract_type.
    DATA t47 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t47.
    t46 = t47.
    DATA t48 TYPE abap_bool.
    DATA(t49) = CAST zcl_lnt_abstract_type( t3 ).
    t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_structure_type ).
    IF t48 = abap_true.
      DATA t50 TYPE REF TO zcl_lnt_abstract_type.
      DATA t51 TYPE REF TO zcl_lnt_structure_type.
      DATA(t52) = CAST zcl_lnt_abstract_type( t3 ).
      t51 ?= t52.
      t50 = t51.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t55 TYPE REF TO zcl_lnt_abstract_node.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA(t57) = CAST zcl_lnt_expression_node( t4 ).
      t56 = t57.
      t55 = t56.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t59) = CAST zcl_lnt_abstract_node( t55 ).
      t58 = t59->children.
      t54 = t58.
      t53 ?= t54.
      DATA t60 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t60.
      DATA t61 TYPE REF TO object.
      CLEAR t61.
      LOOP AT t53->items INTO t61.
        t60 ?= t61.
        DATA t62 TYPE string.
        DATA t63 TYPE string.
        DATA(t64) = CAST zif_lnt_union_4cf1d054( t60 ).
        t63 = t64->concat_tokens( ).
        t62 = t63.
        DATA t65 TYPE abap_bool.
        DATA t66 TYPE abap_bool.
        DATA(t67) = t62.
        DATA(t68) = |-|.
        t66 = xsdbool( t67 <> t68 ).
        t65 = t66.
        IF t66 = abap_true.
          DATA t69 TYPE abap_bool.
          DATA(t70) = CAST zcl_lnt_abstract_type( t50 ).
          t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_structure_type ).
          t65 = t69.
        ENDIF.
        IF t65 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_structure_type.
          DATA t73 TYPE REF TO zcl_lnt_structure_type.
          DATA(t74) = CAST zcl_lnt_abstract_type( t50 ).
          t73 ?= t74.
          t72 = t73.
          DATA t75 TYPE string.
          DATA(t76) = t62.
          t75 = t76.
          DATA t77 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t77.
          DATA t78 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          DATA(t79) = CAST zcl_lnt_structure_type( t72 ).
          t78 = t79->indexed.
          DATA t80 TYPE string.
          DATA(t81) = t75.
          DATA(t82) = strlen( t81 ).
          t80 = t81.
          IF t80 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t80 TO UPPER CASE.
          ELSE.
            t80 = zlnt_runtime_uppe_91169605024d=>full( t80 ).
          ENDIF.
          t77 = t78->get( p0 = t80 ).
          t71 = t77.
          t50 = t71.
          DATA(t83) = VALUE abap_bool( ).
          DATA t84 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t85) = CAST zcl_lnt_abstract_type( t50 ).
          t84 = t85.
          DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t87.
          t86 = t87.
          DATA(t88) = VALUE abap_bool( ).
          DATA(t89) = CAST zcl_lnt_abstract_type( t84 ).
          IF t89 IS INITIAL.
            t88 = abap_true.
          ENDIF.
          t83 = t88.
          IF t83 = abap_true.
            DATA t90 TYPE string.
            DATA t91 TYPE string.
            DATA t92 TYPE string.
            DATA(t93) = |field |.
            DATA(t94) = t62.
            DATA(t95) = strlen( t93 ).
            t92 = |{ t93 }{ t94 }|.
            DATA(t96) = | does not exist in structure|.
            DATA(t97) = strlen( t92 ).
            t91 = |{ t92 }{ t96 }|.
            t90 = t91.
            DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t99) = CAST zcl_lnt_syntax_input( t2 ).
            t98 = t99->issues.
            DATA t100 TYPE REF TO zcl_lnt_issue.
            DATA(t101) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t102 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t103) = CAST zif_lnt_union_bb14dc41( t1 ).
            t102 = t103->get_first_token( ).
            DATA(t104) = t90.
            DATA t105 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t105.
            t100 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t101 i_token = t102 i_message_26cb = t104 i_fix = t105 ).
            APPEND t100 TO t98->items.
            RETURN.
          ENDIF.
        ENDIF.
      ENDLOOP.
      DATA t106 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t106.
      DATA(t107) = abap_true.
      IF t107 = abap_true.
        DATA t108 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t109) = CAST zcl_lnt_abstract_type( t50 ).
        t108 = t109.
        t106 = t108.
      ELSE.
        DATA t110 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t110.
        t106 = t110.
      ENDIF.
      t46 = t106.
    ELSE.
      DATA t111 TYPE abap_bool.
      DATA(t112) = CAST zcl_lnt_abstract_type( t3 ).
      t111 = xsdbool( t112 IS BOUND AND t112 IS INSTANCE OF zcl_lnt_void_type ).
      IF t111 = abap_true.
        DATA t113 TYPE REF TO zcl_lnt_void_type.
        DATA(t114) = CAST zcl_lnt_abstract_type( t3 ).
        t113 ?= t114.
        t46 = t113.
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t115.
    DATA t116 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t116.
    DATA(t117) = abap_true.
    IF t117 = abap_true.
      DATA t118 TYPE REF TO zcl_lnt_expression_node.
      DATA(t119) = CAST zcl_lnt_expression_node( t25 ).
      t118 = t119.
      t116 = t118.
    ELSE.
      DATA t120 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t120.
      t116 = t120.
    ENDIF.
    DATA(t121) = CAST zcl_lnt_syntax_input( t2 ).
    DATA(t122) = CAST zcl_lnt_abstract_type( t46 ).
    DATA t123 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t125.
    t115 = zcl_lnt_sy_source=>run_syntax( i_node = t116 i_input_967e = t121 i_target_type = t122 i_write_reference = t123 i_allow_generic_deference = t124 i_read_reference = t125 ).
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d780_7184b6fdb7fe.
  ENDMETHOD.
ENDCLASS.
