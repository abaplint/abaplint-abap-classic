* TS: src/abap/5_syntax/expressions/type_table.ts:10:1 TypeTable
CLASS zcl_lnt_sy_type_table DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input i_qualified_name_prefix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_type_table IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_qualified_name_prefix.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t4 = t1->find_first_expression( i_type_9913 = t7 ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t4 = t1->find_first_expression( i_type_9913 = t17 ).
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    t26 = t4->get_first_token( ).
    DATA(t30) = VALUE string( ).
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t32 = t3.
    DATA(t34) = VALUE string( ).
    DATA(t35) = VALUE abap_bool( ).
    IF t32 IS BOUND.
      IF t32->has = abap_true.
        t35 = xsdbool( strlen( t32->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t35 = abap_true.
      t34 = t32->value.
    ELSE.
      t34 = ||.
    ENDIF.
    t30 = t34.
    DATA t41 TYPE string.
    DATA t42 TYPE string.
    t42 = t1->get_first_token( )->str.
    DATA(t48) = strlen( t42 ).
    t41 = t42.
    IF t41 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t41 TO UPPER CASE.
    ELSE.
      t41 = zlnt_runtime_uppe_91169605024d=>full( t41 ).
    ENDIF.
    IF xsdbool( t41 = |TYPES| ) = abap_true.
      DATA(t51) = t30.
      DATA t52 TYPE string.
      t52 = t26->str.
      DATA(t57) = strlen( t51 ).
      t30 = |{ t51 }{ t52 }|.
      DATA t58 TYPE abap_bool.
      DATA t59 TYPE abap_bool.
      t59 = xsdbool( t2->scope->get_type( ) = |class_definition| ).
      t58 = t59.
      IF t59 = abap_false.
        t58 = xsdbool( t2->scope->get_type( ) = |interface| ).
      ENDIF.
      IF t58 = abap_true.
        DATA t70 TYPE string.
        DATA t71 TYPE string.
        t71 = t2->scope->get_name( ).
        DATA(t75) = strlen( t71 ).
        t70 = |{ t71 }{ |=>| }|.
        DATA(t77) = strlen( t70 ).
        t30 = |{ t70 }{ t30 }|.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zcl_lnt_abstract_type.
    DATA t80 TYPE REF TO zcl_lnt_basic_types.
    t80 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t86->has = abap_true.
    t86->value = t30.
    t78 = t80->parse_table( i_node = t1 i_name = t86 ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t78 IS INITIAL ) = abap_true.
      DATA t99 TYPE string.
      t99 = t2->filename.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t26 i_filename = t99 i_type_9913 = NEW zcl_lnt_unknown_type( i_error = |TableType, fallback| i_qualified_name = t103 ) i_meta = t104 i_value = t105 ).
      RETURN.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d353_58ca0f41496e.
    t107 = t1->find_all_expressions( i_type_9913 = t109 ).
    DATA t110 TYPE REF TO zcl_lnt_expression_node.
    DATA t111 TYPE REF TO object.
    DATA(t112) = VALUE i( ).
    DO.
      t107->load( ).
      IF t112 >= lines( t107->items ).
        EXIT.
      ENDIF.
      CLEAR t111.
      READ TABLE t107->items INDEX t112 + 1 INTO t111.
      t112 = t112 + 1.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      CLEAR t110.
      IF t111 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t113 ?= t111.
        DATA t114 TYPE REF TO object.
        t114 = t113->as_ref( ).
        t110 ?= t114.
      ELSE.
        t110 ?= t111.
      ENDIF.
      DATA t115 TYPE REF TO zcl_lnt_unknown_type.
      t115 = zcl_lnt_sy_type_table_key=>run_syntax( i_node = t110 i_type_9913 = t78 ).
      IF xsdbool( t115 IS BOUND ) = abap_true.
        t78 = t115.
      ENDIF.
    ENDDO.
    DATA t128 TYPE string.
    t128 = t2->filename.
    DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    result = NEW zcl_lnt_typed_identifier( i_token = t26 i_filename = t128 i_type_9913 = t78 i_meta = t132 i_value = t133 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d846_1c13f6855d17.
  ENDMETHOD.
ENDCLASS.
