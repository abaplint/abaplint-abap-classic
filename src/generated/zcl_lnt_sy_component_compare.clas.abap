* TS: src/abap/5_syntax/expressions/component_compare.ts:9:1 ComponentCompare
CLASS zcl_lnt_sy_component_compare DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_left_type TYPE REF TO zcl_lnt_abstract_type i_right_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_component_compare IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_left_type.
    DATA(t4) = i_right_type.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390.
    t6 = t1->find_direct_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9 = xsdbool( t5 IS INITIAL ).
    IF t9 = abap_true.
      DATA(t17) = |ComponentCompare, chain not found|.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t18 = t2->issues.
      DATA t20 TYPE REF TO zcl_lnt_issue.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      t22 = t1->get_first_token( ).
      DATA t25 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t20 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t22 i_message_26cb = t17 i_fix = t25 ).
      t18->load( ).
      APPEND t20 TO t18->items.
      t18->save( ).
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_abstract_type.
    DATA t27 TYPE REF TO zcl_lnt_abstract_type.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    t29 = t5.
    t27 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t3 i_node = t29 i_input_967e = t2 ).
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t32 = t1->find_direct_expressions( i_type_9913 = t34 ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA t36 TYPE REF TO object.
    DATA(t37) = VALUE i( ).
    DO.
      t32->load( ).
      IF t37 >= lines( t32->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t32->items INDEX t37 + 1 INTO t36.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t35.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t38 ?= t36.
        DATA t39 TYPE REF TO object.
        t39 = t38->as_ref( ).
        t35 ?= t39.
      ELSE.
        t35 ?= t36.
      ENDIF.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
      t41 = t35->find_direct_expression( i_type_9913 = t43 ).
      t40 = t41.
      DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t44.
      DATA t46 TYPE REF TO zcl_lnt_expression_node.
      t46 = t40.
      DATA t48 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t48.
      DATA(t49) = xsdbool( t46 IS INITIAL ).
      IF t49 = abap_true.
        CLEAR t48.
      ELSE.
        DATA t52 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t52.
        DATA t53 TYPE REF TO zif_lnt_node.
        CLEAR t53.
        DATA t54 TYPE REF TO zcl_lnt_abstract_node.
        t54 = t46.
        DATA t59 TYPE REF TO zif_lnt_node.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t60 = t54->children.
        DATA t62 TYPE REF TO object.
        CLEAR t62.
        t60->load( ).
        CLEAR t62.
        READ TABLE t60->items INDEX 1 INTO t62.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        CLEAR t59.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t63 ?= t62.
          DATA t64 TYPE REF TO object.
          t64 = t63->as_ref( ).
          t59 ?= t64.
        ELSE.
          t59 ?= t62.
        ENDIF.
        t53 = t59.
        t52 ?= t53.
        t48 = t52.
      ENDIF.
      t44 = t48.
      DATA(t66) = VALUE abap_bool( ).
      DATA t67 TYPE abap_bool.
      DATA t68 TYPE abap_bool.
      t68 = xsdbool( t4 IS BOUND ).
      t67 = t68.
      IF t68 = abap_true.
        DATA t70 TYPE abap_bool.
        t70 = xsdbool( t40 IS BOUND ).
        t67 = t70.
      ENDIF.
      t66 = t67.
      IF t67 = abap_true.
        DATA t72 TYPE abap_bool.
        t72 = xsdbool( t44 IS BOUND ).
        t66 = t72.
      ENDIF.
      IF t66 = abap_true.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t74.
        t74 = t4.
        DATA(t80) = VALUE abap_bool( ).
        DATA t81 TYPE string.
        DATA t82 TYPE string.
        DATA t83 TYPE REF TO zif_lnt_union_4cf1d054.
        t83 = t44.
        t82 = t83->concat_tokens( ).
        DATA(t85) = strlen( t82 ).
        t81 = t82.
        IF t81 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t81 TO UPPER CASE.
        ELSE.
          t81 = zlnt_runtime_uppe_91169605024d=>full( t81 ).
        ENDIF.
        DATA(t86) = |TABLE_LINE|.
        t80 = xsdbool( t81 <> t86 ).
        IF t80 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t87.
          DATA t88 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t88.
          t88 = t74.
          DATA t93 TYPE REF TO zif_lnt_node.
          DATA t94 TYPE REF TO zif_lnt_union_4cf1d054.
          t94 = t44.
          t93 ?= t94.
          t87 = zcl_lnt_sy_component_name=>run_syntax( i_context = t88 i_node = t93 i_input_967e = t2 ).
          t74 = t87.
        ENDIF.
        DATA t97 TYPE REF TO zcl_lnt_abstract_type.
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        t99 = t40.
        t97 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t74 i_node = t99 i_input_967e = t2 ).
      ELSE.
        DATA t102 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t102.
        DATA t103 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t103.
        t103 = t35.
        DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t109.
        DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t110.
        DATA t111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t111.
        t102 = zcl_lnt_sy_source=>run_syntax( i_node = t103 i_input_967e = t2 i_target_type = t26 i_write_reference = t109 i_allow_generic_deference = t110 i_read_reference = t111 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d788_a999225d2a41.
  ENDMETHOD.
ENDCLASS.
