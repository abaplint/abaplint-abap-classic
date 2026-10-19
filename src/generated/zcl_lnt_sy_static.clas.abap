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
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    t4 = t1->find_first_expression( i_type_9913 = t6 ).
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t4 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t10 = zcl_lnt_sy_type_table=>run_syntax( i_node = t1 i_input_967e = t2 i_qualified_name_prefix = t13 ).
      t9 = t10.
      DATA t14 TYPE abap_bool.
      t14 = xsdbool( t9 IS BOUND ).
      IF t14 = abap_true.
        result = t9.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t23 TYPE REF TO zcl_lnt_basic_types.
    t23 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t22 = t23->simple_type( i_node = t1 i_qualified_name_prefix = t26 ).
    t21 = t22.
    DATA t27 TYPE abap_bool.
    t27 = xsdbool( t21 IS BOUND ).
    IF t27 = abap_true.
      result = t21.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t35 = t1->find_first_expression( i_type_9913 = t37 ).
    t34 = t35.
    DATA t38 TYPE abap_bool.
    t38 = xsdbool( t34 IS BOUND ).
    IF t38 = abap_true.
      DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      t44 = t34.
      t43 = t44->get_first_token( ).
      DATA t46 TYPE string.
      t46 = t2->filename.
      DATA t48 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t49) = |Static, fallback|.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t48 = NEW zcl_lnt_unknown_type( i_error = t49 i_qualified_name = t50 ).
      DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t42 = NEW zcl_lnt_typed_identifier( i_token = t43 i_filename = t46 i_type_9913 = t48 i_meta = t51 i_value = t52 ).
      result = t42.
      RETURN.
    ENDIF.
    CLEAR result.

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
