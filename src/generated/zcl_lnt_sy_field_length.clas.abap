* TS: src/abap/5_syntax/expressions/field_length.ts:7:1 FieldLength
CLASS zcl_lnt_sy_field_length DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_field_length IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t3.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = t3.
      t10 = t11.
      DATA(t12) = t2.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t15.
        DATA(t16) = |Read From|.
        CLEAR t15.
        CREATE OBJECT t15.
        t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t15->sval = t16.
        t13 = t15.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      t9 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t10 i_input_967e = t12 i_ref_type = t13 i_allow_generic_deference = t18 ).
      DATA t19 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t19.
      result = t19.
      RETURN.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t24) = t1.
      t23 = t24.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t26) = t23.
      t25 = t26->children.
      t22 = t25.
      t21 ?= t22.
      t20 = t21.
      DATA t27 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t27.
      DATA t28 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t28.
      DATA(t29) = t20.
      DATA t30 TYPE i.
      DATA t31 TYPE i.
      DATA(t32) = t20.
      t32->load( ).
      t31 = lines( t32->items ).
      DATA(t33) = 2.
      t30 = t31 - t33.
      t30 = t30 + 1.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      t29->load( ).
      CLEAR t34.
      READ TABLE t29->items INDEX t30 INTO t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t28.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t34.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t28 ?= t36.
      ELSE.
        t28 ?= t34.
      ENDIF.
      t27 = t28.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE string.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t41) = t27.
      t40 = t41->get_last_token( ).
      t39 = t40.
      DATA t42 TYPE string.
      DATA(t43) = t39.
      t42 = t43->str.
      t38 = t42.
      DATA(t44) = |*|.
      t37 = xsdbool( t38 = t44 ).
      IF t37 = abap_true.
        DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t45.
        result = t45.
        RETURN.
      ENDIF.
      DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t49 TYPE string.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t52) = t27.
        t51 = t52->get_last_token( ).
        t50 = t51.
        DATA t53 TYPE string.
        DATA(t54) = t50.
        t53 = t54->str.
        t49 = t53.
        t48 = zlnt_runtime_stri_248d3505915c=>int_optional( t49 ).
        t46 = t48.
      ELSE.
        DATA t55 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t55.
        t46 = t55.
      ENDIF.
      result = t46.

    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d804_2c0ba40f9348.
  ENDMETHOD.
ENDCLASS.
