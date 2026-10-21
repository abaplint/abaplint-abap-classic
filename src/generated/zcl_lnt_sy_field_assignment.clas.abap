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
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    t4 = t1->find_direct_expression( i_type_9913 = t7 ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t17 = t2->issues.
      DATA t19 TYPE REF TO zcl_lnt_issue.
      DATA t24 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t19 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |FieldAssignment, FieldSub node not found| i_fix = t24 ).
      t17->load( ).
      APPEND t19 TO t17->items.
      t17->save( ).
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t25 = t1->find_direct_expression( i_type_9913 = t28 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t25 IS INITIAL ) = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t38 = t2->issues.
      DATA t40 TYPE REF TO zcl_lnt_issue.
      DATA t45 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t40 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |FieldAssignment, Source node not found| i_fix = t45 ).
      t38->load( ).
      APPEND t40 TO t38->items.
      t38->save( ).
      RETURN.
    ENDIF.
    DATA t46 TYPE REF TO zcl_lnt_abstract_type.
    IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
      DATA t50 TYPE REF TO zcl_lnt_abstract_type.
      DATA t51 TYPE REF TO zcl_lnt_structure_type.
      t51 ?= t3.
      t50 = t51.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t55 TYPE REF TO zcl_lnt_abstract_node.
      t55 = t4.
      t53 ?= t55->children.
      DATA t60 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t61 TYPE REF TO object.
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
        t65 = t60->concat_tokens( ).
        DATA t68 TYPE abap_bool.
        DATA t69 TYPE abap_bool.
        t69 = xsdbool( t65 <> |-| ).
        t68 = t69.
        IF t69 = abap_true.
          DATA(t73) = t50.
          t68 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_structure_type ).
        ENDIF.
        IF t68 = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_structure_type.
          t76 ?= t50.
          DATA t78 TYPE string.
          t78 = t65.
          DATA t81 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          t81 = t76->indexed.
          DATA t83 TYPE string.
          DATA(t85) = strlen( t78 ).
          t83 = t78.
          IF t83 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t83 TO UPPER CASE.
          ELSE.
            t83 = zlnt_runtime_uppe_91169605024d=>full( t83 ).
          ENDIF.
          t50 = t81->get( p0 = t83 ).
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          IF xsdbool( t50 IS INITIAL ) = abap_true.
            DATA t94 TYPE string.
            DATA t95 TYPE string.
            DATA(t96) = |field |.
            DATA(t98) = strlen( t96 ).
            t95 = |{ t96 }{ t65 }|.
            DATA(t100) = strlen( t95 ).
            t94 = |{ t95 }{ | does not exist in structure| }|.
            DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t101 = t2->issues.
            DATA t103 TYPE REF TO zcl_lnt_issue.
            DATA t105 TYPE REF TO zcl_lnt_abstract_token.
            t105 = t1->get_first_token( ).
            DATA t108 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t108.
            t103 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t105 i_message_26cb = t94 i_fix = t108 ).
            t101->load( ).
            APPEND t103 TO t101->items.
            t101->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDDO.
      t46 = t50.
    ELSE.
      IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
        DATA t116 TYPE REF TO zcl_lnt_void_type.
        t116 ?= t3.
        t46 = t116.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zcl_lnt_abstract_type.
    DATA t126 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t128 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t118 = zcl_lnt_sy_source=>run_syntax( i_node = t25 i_input_967e = t2 i_target_type = t46 i_write_reference = t126 i_allow_generic_deference = t127 i_read_reference = t128 ).
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
