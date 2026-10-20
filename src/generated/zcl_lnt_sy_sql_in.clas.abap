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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    IF xsdbool( t3 IS BOUND ) = abap_true.
      zcl_lnt_sy_sql_set_op_group=>run_syntax( i_node = t3 i_input_967e = t2 ).
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t15 = t1->get_children( ).
    t14 ?= t15.
    t14->load( ).
    IF xsdbool( lines( t14->items ) = 2 ) = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
      t18 = t1->find_first_expression( i_type_9913 = t21 ).
      IF xsdbool( t18 IS BOUND ) = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        t24 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t18 i_input_967e = t2 ).
        DATA(t29) = VALUE abap_bool( ).
        DATA(t30) = VALUE abap_bool( ).
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE abap_bool.
        t32 = xsdbool( t24 IS BOUND ).
        t31 = t32.
        IF t32 = abap_true.
          DATA t36 TYPE REF TO zcl_lnt_abstract_type.
          t36 = t24.
          t31 = xsdbool( xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
        ENDIF.
        t30 = t31.
        IF t31 = abap_true.
          t30 = xsdbool( xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
        ENDIF.
        t29 = t30.
        IF t30 = abap_true.
          t29 = xsdbool( xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_false ).
        ENDIF.
        IF t29 = abap_true.
          DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t46 = t2->issues.
          DATA t48 TYPE REF TO zcl_lnt_issue.
          DATA t53 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t48 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |IN, not a table| i_fix = t53 ).
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
          DATA t61 TYPE REF TO zcl_lnt_ty_table_type.
          t61 ?= t24.
          DATA t63 TYPE REF TO zcl_lnt_abstract_type.
          t63 = t61->row_type.
          t54 = xsdbool( zcl_lnt_sy_sql_in=>is_range_row( i_row_type = t63 ) = abap_false ).
        ENDIF.
        IF t54 = abap_true.
          DATA t67 TYPE string.
          DATA t68 TYPE string.
          DATA t69 TYPE string.
          t69 = t18->concat_tokens( ).
          DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CREATE OBJECT t72 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^@| flags = ||.
          DATA(t76) = strlen( t69 ).
          t68 = t72->replace( p0 = t69 p1 = || ).
          DATA t77 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CREATE OBJECT t77 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `\[\]$` flags = ||.
          DATA(t81) = strlen( t68 ).
          t67 = t77->replace( p0 = t68 p1 = || ).
          DATA t83 TYPE string.
          DATA t84 TYPE string.
          DATA(t85) = |row structure of |.
          DATA(t87) = strlen( t85 ).
          t84 = |{ t85 }{ t67 }|.
          DATA(t89) = strlen( t84 ).
          t83 = |{ t84 }{ | is not correct| }|.
          DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t90 = t2->issues.
          DATA t92 TYPE REF TO zcl_lnt_issue.
          DATA t97 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t92 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t83 i_fix = t97 ).
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
      t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
    ENDIF.
    IF t2 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.

    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF zcl_lnt_sql_in_module=>zlnt_builtin_init_67f8511dffbf = abap_false.
      zcl_lnt_sql_in_module=>zlnt_builtin_init_7517e34af3ee( ).
    ENDIF.
    t16 = zcl_lnt_sql_in_module=>range_components.
    DATA t18 TYPE i.
    t16->load( ).
    t18 = lines( t16->items ).
    DATA t21 TYPE i.
    t21 = 0.
    DATA t23 TYPE abap_bool.
    t23 = abap_true.
    DO.
      IF xsdbool( t21 < t18 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t29 TYPE string.
      t29 = t16->get( p0 = t21 )->value.
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
      IF xsdbool( xsdbool( xsdbool( t42 IS INITIAL ) = abap_false ) = abap_false ) = abap_true.
        t23 = abap_false.
        EXIT.
      ENDIF.
      DATA(t56) = 1.
      t21 = t21 + t56.
    ENDDO.
    result = t23.

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
