* TS: src/abap/5_syntax/statements/get_parameter.ts:10:1 GetParameter
CLASS zcl_lnt_sy_get_parameter DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_get_parameter IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    t9 = t3.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      t16 = t9.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t11 = t16->find_direct_expression( i_type_9913 = t18 ).
    ENDIF.
    t7 = t11.
    IF xsdbool( t7 IS BOUND ) = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type_data.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t7 i_input_967e = t2 i_type_9913 = NEW zcl_lnt_character_type( i_length = CONV f( 40 ) i_extra = t26 ) ).
    ELSE.
      IF xsdbool( t3 IS BOUND ) = abap_true.
        DATA t29 TYPE REF TO zcl_lnt_abstract_type.
        t29 = zcl_lnt_sy_target=>run_syntax( i_node = t3 i_input_967e = t2 ).
      ENDIF.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t33 = t1->find_direct_expressions( i_type_9913 = t35 ).
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    DATA t37 TYPE REF TO object.
    DATA(t38) = VALUE i( ).
    DO.
      t33->load( ).
      IF t38 >= lines( t33->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t33->items INDEX t38 + 1 INTO t37.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t36.
      IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t37.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t36 ?= t40.
      ELSE.
        t36 ?= t37.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_abstract_type.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t42.
      t42 = t36.
      DATA t47 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t50.
      t41 = zcl_lnt_sy_source=>run_syntax( i_node = t42 i_input_967e = t2 i_target_type = t47 i_write_reference = t48 i_allow_generic_deference = t49 i_read_reference = t50 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d909_ebf0da9da5af.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
