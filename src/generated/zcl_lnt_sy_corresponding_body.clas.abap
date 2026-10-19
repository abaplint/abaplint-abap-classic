* TS: src/abap/5_syntax/expressions/corresponding_body.ts:7:1 CorrespondingBody
CLASS zcl_lnt_sy_corresponding_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_corresponding_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    IF t4 = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    t16 = t1.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d144_e73838d999aa.
    t15 = t16->find_direct_expression( i_type_9913 = t18 ).
    t14 = t15.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = xsdbool( t14 IS INITIAL ).
    IF t20 = abap_true.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      t24 = t14.
      DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t23 = t24->find_direct_expression( i_type_9913 = t26 ).
      t19 = t23.
    ENDIF.
    t12 = t19.
    DATA t27 TYPE abap_bool.
    t27 = xsdbool( t12 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      t30 = t12.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t29 = zcl_lnt_sy_source=>run_syntax( i_node = t30 i_input_967e = t2 i_target_type = t3 i_write_reference = t37 i_allow_generic_deference = t38 i_read_reference = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zcl_lnt_abstract_type.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    t43 = t1.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t42 = t43->find_direct_expressions( i_type_9913 = t45 ).
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA t47 TYPE REF TO object.
    DATA(t48) = VALUE i( ).
    DO.
      t42->load( ).
      IF t48 >= lines( t42->items ).
        EXIT.
      ENDIF.
      CLEAR t47.
      READ TABLE t42->items INDEX t48 + 1 INTO t47.
      t48 = t48 + 1.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      CLEAR t46.
      IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t49 ?= t47.
        DATA t50 TYPE REF TO object.
        t50 = t49->as_ref( ).
        t46 ?= t50.
      ELSE.
        t46 ?= t47.
      ENDIF.
      DATA(t51) = VALUE abap_bool( ).
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      t51 = xsdbool( t40 IS INITIAL ).
      IF t51 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t58.
        DATA t59 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t59.
        t59 = t46.
        DATA t64 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t64.
        DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t65.
        DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t67.
        t58 = zcl_lnt_sy_source=>run_syntax( i_node = t59 i_input_967e = t2 i_target_type = t64 i_write_reference = t65 i_allow_generic_deference = t66 i_read_reference = t67 ).
        t40 = t58.
      ELSE.
        DATA t68 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t69.
        t69 = t46.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t75.
        DATA t76 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t77.
        t68 = zcl_lnt_sy_source=>run_syntax( i_node = t69 i_input_967e = t2 i_target_type = t74 i_write_reference = t75 i_allow_generic_deference = t76 i_read_reference = t77 ).
      ENDIF.
    ENDDO.
    DATA t78 TYPE REF TO zcl_lnt_abstract_type.
    DATA t79 TYPE abap_bool.
    t79 = xsdbool( t3 IS BOUND ).
    IF t79 = abap_true.
      t78 = t3.
    ELSE.
      t78 = t40.
    ENDIF.
    result = t78.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d796_cdce9c68cd62.
  ENDMETHOD.
ENDCLASS.
