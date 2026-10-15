* TS: src/abap/5_syntax/expressions/field_assignment.ts:8:1 FieldAssignment
CLASS zcl_lnt_sy_field_assignment DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_field_assignment IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = t4.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE string.
      DATA(t16) = |FieldAssignment, FieldSub node not found|.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = t2.
      t17 = t18->issues.
      DATA t19 TYPE REF TO zcl_lnt_issue.
      DATA(t20) = t2.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t22) = t1.
      t21 = t22->get_first_token( ).
      DATA(t23) = t15.
      DATA t24 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t24.
      t19 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t20 i_token = t21 i_message_26cb = t23 i_fix = t24 ).
      t17->load( ).
      APPEND t19 TO t17->items.
      t17->save( ).
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA(t27) = t1.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t26 = t27->find_direct_expression( i_type_9913 = t28 ).
    t25 = t26.
    DATA(t29) = VALUE abap_bool( ).
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = t25.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = t30.
    IF t35 IS INITIAL.
      t34 = abap_true.
    ENDIF.
    t29 = t34.
    IF t29 = abap_true.
      DATA t36 TYPE string.
      DATA(t37) = |FieldAssignment, Source node not found|.
      t36 = t37.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t39) = t2.
      t38 = t39->issues.
      DATA t40 TYPE REF TO zcl_lnt_issue.
      DATA(t41) = t2.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t43) = t1.
      t42 = t43->get_first_token( ).
      DATA(t44) = t36.
      DATA t45 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t45.
      t40 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t41 i_token = t42 i_message_26cb = t44 i_fix = t45 ).
      t38->load( ).
      APPEND t40 TO t38->items.
      t38->save( ).
      RETURN.
    ENDIF.
    DATA t46 TYPE REF TO zcl_lnt_abstract_type.
    DATA t47 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t47.
    t46 = t47.
    DATA t48 TYPE abap_bool.
    DATA(t49) = t3.
    t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_structure_type ).
    IF t48 = abap_true.
      DATA t50 TYPE REF TO zcl_lnt_abstract_type.
      DATA t51 TYPE REF TO zcl_lnt_structure_type.
      DATA(t52) = t3.
      t51 ?= t52.
      t50 = t51.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t55 TYPE REF TO zcl_lnt_abstract_node.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA(t57) = t4.
      t56 = t57.
      t55 = t56.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t59) = t55.
      t58 = t59->children.
      t54 = t58.
      t53 ?= t54.
      DATA t60 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t60.
      DATA t61 TYPE REF TO object.
      CLEAR t61.
      DATA(t62) = VALUE i( ).
      DO.
        t53->load( ).
        IF t62 >= lines( t53->items ).
          EXIT.
        ENDIF.
        CLEAR t61.
        READ TABLE t53->items INDEX t62 + 1 INTO t61.
        t62 = t62 + 1.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        CLEAR t60.
        IF t61 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t63 ?= t61.
          DATA t64 TYPE REF TO object.
          t64 = t63->as_ref( ).
          t60 ?= t64.
        ELSE.
          t60 ?= t61.
        ENDIF.
        DATA t65 TYPE string.
        DATA t66 TYPE string.
        DATA(t67) = t60.
        t66 = t67->concat_tokens( ).
        t65 = t66.
        DATA t68 TYPE abap_bool.
        DATA t69 TYPE abap_bool.
        DATA(t70) = t65.
        DATA(t71) = |-|.
        t69 = xsdbool( t70 <> t71 ).
        t68 = t69.
        IF t69 = abap_true.
          DATA t72 TYPE abap_bool.
          DATA(t73) = t50.
          t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_structure_type ).
          t68 = t72.
        ENDIF.
        IF t68 = abap_true.
          DATA t74 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t74.
          DATA t75 TYPE REF TO zcl_lnt_structure_type.
          DATA t76 TYPE REF TO zcl_lnt_structure_type.
          DATA(t77) = t50.
          t76 ?= t77.
          t75 = t76.
          DATA t78 TYPE string.
          DATA(t79) = t65.
          t78 = t79.
          DATA t80 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t80.
          DATA t81 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          DATA(t82) = t75.
          t81 = t82->indexed.
          DATA t83 TYPE string.
          DATA(t84) = t78.
          DATA(t85) = strlen( t84 ).
          t83 = t84.
          IF t83 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t83 TO UPPER CASE.
          ELSE.
            t83 = zlnt_runtime_uppe_91169605024d=>full( t83 ).
          ENDIF.
          t80 = t81->get( p0 = t83 ).
          t74 = t80.
          t50 = t74.
          DATA(t86) = VALUE abap_bool( ).
          DATA t87 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t88) = t50.
          t87 = t88.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          t89 = t90.
          DATA(t91) = VALUE abap_bool( ).
          DATA(t92) = t87.
          IF t92 IS INITIAL.
            t91 = abap_true.
          ENDIF.
          t86 = t91.
          IF t86 = abap_true.
            DATA t93 TYPE string.
            DATA t94 TYPE string.
            DATA t95 TYPE string.
            DATA(t96) = |field |.
            DATA(t97) = t65.
            DATA(t98) = strlen( t96 ).
            t95 = |{ t96 }{ t97 }|.
            DATA(t99) = | does not exist in structure|.
            DATA(t100) = strlen( t95 ).
            t94 = |{ t95 }{ t99 }|.
            t93 = t94.
            DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t102) = t2.
            t101 = t102->issues.
            DATA t103 TYPE REF TO zcl_lnt_issue.
            DATA(t104) = t2.
            DATA t105 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t106) = t1.
            t105 = t106->get_first_token( ).
            DATA(t107) = t93.
            DATA t108 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t108.
            t103 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t104 i_token = t105 i_message_26cb = t107 i_fix = t108 ).
            t101->load( ).
            APPEND t103 TO t101->items.
            t101->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDDO.
      DATA t109 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t109.
      DATA(t110) = abap_true.
      IF t110 = abap_true.
        DATA t111 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t112) = t50.
        t111 = t112.
        t109 = t111.
      ELSE.
        DATA t113 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t113.
        t109 = t113.
      ENDIF.
      t46 = t109.
    ELSE.
      DATA t114 TYPE abap_bool.
      DATA(t115) = t3.
      t114 = xsdbool( t115 IS BOUND AND t115 IS INSTANCE OF zcl_lnt_void_type ).
      IF t114 = abap_true.
        DATA t116 TYPE REF TO zcl_lnt_void_type.
        DATA(t117) = t3.
        t116 ?= t117.
        t46 = t116.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t118.
    DATA t119 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t119.
    DATA(t120) = abap_true.
    IF t120 = abap_true.
      DATA t121 TYPE REF TO zcl_lnt_expression_node.
      DATA(t122) = t25.
      t121 = t122.
      t119 = t121.
    ELSE.
      DATA t123 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t123.
      t119 = t123.
    ENDIF.
    DATA(t124) = t2.
    DATA(t125) = t46.
    DATA t126 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t128.
    t118 = zcl_lnt_sy_source=>run_syntax( i_node = t119 i_input_967e = t124 i_target_type = t125 i_write_reference = t126 i_allow_generic_deference = t127 i_read_reference = t128 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d802_0c6a63100fb5.
  ENDMETHOD.
ENDCLASS.
