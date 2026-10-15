* TS: src/abap/5_syntax/statements/static.ts:9:1 Static
CLASS zcl_lnt_sy_static DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_static IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t3.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t11) = t1.
      DATA(t12) = t2.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t10 = zcl_lnt_sy_type_table=>run_syntax( i_node = t11 i_input_967e = t12 i_qualified_name_prefix = t13 ).
      t9 = t10.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t9.
      t14 = xsdbool( t15 IS BOUND ).
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t16.
        DATA(t17) = abap_true.
        IF t17 = abap_true.
          DATA t18 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t19) = t9.
          t18 = t19.
          t16 = t18.
        ELSE.
          DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t20.
          t16 = t20.
        ENDIF.
        result = t16.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t23 TYPE REF TO zcl_lnt_basic_types.
    DATA(t24) = t2.
    t23 = NEW zcl_lnt_basic_types( i_input_967e = t24 ).
    DATA(t25) = t1.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    t22 = t23->simple_type( i_node = t25 i_qualified_name_prefix = t26 ).
    t21 = t22.
    DATA t27 TYPE abap_bool.
    DATA(t28) = t21.
    t27 = xsdbool( t28 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t29.
      DATA(t30) = abap_true.
      IF t30 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t32) = t21.
        t31 = t32.
        t29 = t31.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t33.
        t29 = t33.
      ENDIF.
      result = t29.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA(t36) = t1.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t35 = t36->find_first_expression( i_type_9913 = t37 ).
    t34 = t35.
    DATA t38 TYPE abap_bool.
    DATA(t39) = t34.
    t38 = xsdbool( t39 IS BOUND ).
    IF t38 = abap_true.
      DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t40.
      DATA(t41) = abap_true.
      IF t41 = abap_true.
        DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t43 TYPE REF TO zcl_lnt_abstract_token.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        DATA(t45) = t34.
        t44 = t45.
        t43 = t44->get_first_token( ).
        DATA t46 TYPE string.
        DATA(t47) = t2.
        t46 = t47->filename.
        DATA t48 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t49) = |Static, fallback|.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        t48 = NEW zcl_lnt_unknown_type( i_error = t49 i_qualified_name = t50 ).
        DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        t42 = NEW zcl_lnt_typed_identifier( i_token = t43 i_filename = t46 i_type_9913 = t48 i_meta = t51 i_value = t52 ).
        t40 = t42.
      ELSE.
        DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t53.
        t40 = t53.
      ENDIF.
      result = t40.
      RETURN.
    ENDIF.
    DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t54.
    result = t54.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d969_6c1cdcca8bf8.
  ENDMETHOD.
ENDCLASS.
