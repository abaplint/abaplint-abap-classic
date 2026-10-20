* TS: src/abap/5_syntax/expressions/method_call_body.ts:10:1 MethodCallBody
CLASS zcl_lnt_sy_method_call_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_call_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    t4 = t1->find_direct_expression( i_type_9913 = t7 ).
    IF xsdbool( t4 IS BOUND ) = abap_true.
      NEW zcl_lnt_sy_method_parameters( )->run_syntax( i_node = t4 i_input_967e = t2 i_method = t3 ).
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
    t15 = t1->find_direct_expression( i_type_9913 = t18 ).
    IF xsdbool( t15 IS BOUND ) = abap_true.
      zcl_lnt_sy_method_call_param=>run_syntax( i_node = t15 i_input_967e = t2 i_method = t3 ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t25 = t1->find_direct_expressions( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_expression_node.
    DATA t29 TYPE REF TO object.
    DATA(t30) = VALUE i( ).
    DO.
      t25->load( ).
      IF t30 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t25->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t34.
      t34 = t28.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t42.
      t33 = zcl_lnt_sy_source=>run_syntax( i_node = t34 i_input_967e = t2 i_target_type = t39 i_write_reference = t40 i_allow_generic_deference = t41 i_read_reference = t42 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d818_822e44b2803d.
  ENDMETHOD.
ENDCLASS.
