* TS: src/abap/5_syntax/expressions/filter_body.ts:9:1 FilterBody
CLASS zcl_lnt_sy_filter_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_filter_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8d6bb411953d.
    CREATE OBJECT t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    t15 = t1.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t14 = t15->find_direct_expressions( i_type_9913 = t17 ).
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO object.
    DATA(t20) = VALUE i( ).
    DO.
      t14->load( ).
      IF t20 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t14->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA t24 TYPE REF TO zcl_lnt_abstract_type.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      t25 = t18.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t33.
      t24 = zcl_lnt_sy_source=>run_syntax( i_node = t25 i_input_967e = t2 i_target_type = t30 i_write_reference = t31 i_allow_generic_deference = t32 i_read_reference = t33 ).
      t12->load( ).
      APPEND t24 TO t12->items.
      t12->save( ).
    ENDDO.
    DATA t35 TYPE REF TO zcl_lnt_abstract_type.
    DATA t37 TYPE REF TO zcl_lnt_abstract_type.
    t12->load( ).
    READ TABLE t12->items INDEX 1 INTO t37.
    IF xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t44 TYPE REF TO zcl_lnt_abstract_type.
      t12->load( ).
      READ TABLE t12->items INDEX 1 INTO t44.
      t43 ?= t44.
      t35 = t43->row_type.
    ELSE.
      CLEAR t35.
    ENDIF.
    DATA t51 TYPE REF TO zcl_lnt_abstract_type.
    DATA t53 TYPE REF TO zcl_lnt_abstract_type.
    t12->load( ).
    READ TABLE t12->items INDEX 2 INTO t53.
    IF xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
      DATA t59 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t60 TYPE REF TO zcl_lnt_abstract_type.
      t12->load( ).
      READ TABLE t12->items INDEX 2 INTO t60.
      t59 ?= t60.
      t51 = t59->row_type.
    ELSE.
      CLEAR t51.
    ENDIF.
    DATA t68 TYPE REF TO zcl_lnt_expression_node.
    t68 = t1.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    zcl_lnt_sy_component_cond=>run_syntax( i_node = t68->find_direct_expression( i_type_9913 = t70 ) i_input_967e = t2 i_left_type = t35 i_right_type = t51 ).
    DATA t74 TYPE REF TO zcl_lnt_abstract_type.
    DATA t76 TYPE REF TO zcl_lnt_abstract_type.
    t12->load( ).
    READ TABLE t12->items INDEX 1 INTO t76.
    IF xsdbool( t76 IS BOUND ) = abap_true.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type.
      t12->load( ).
      READ TABLE t12->items INDEX 1 INTO t81.
      t74 = t81.
    ELSE.
      t74 = t3.
    ENDIF.
    result = t74.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d806_031c0d786620.
  ENDMETHOD.
ENDCLASS.
