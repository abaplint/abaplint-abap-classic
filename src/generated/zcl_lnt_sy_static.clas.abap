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
    IF xsdbool( t4 IS BOUND ) = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t9 = zcl_lnt_sy_type_table=>run_syntax( i_node = t1 i_input_967e = t2 i_qualified_name_prefix = t13 ).
      IF xsdbool( t9 IS BOUND ) = abap_true.
        result = t9.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->simple_type( i_node = t1 i_qualified_name_prefix = t26 ).
    IF xsdbool( t21 IS BOUND ) = abap_true.
      result = t21.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t34 = t1->find_first_expression( i_type_9913 = t37 ).
    IF xsdbool( t34 IS BOUND ) = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      t43 = t34->get_first_token( ).
      DATA t46 TYPE string.
      t46 = t2->filename.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t43 i_filename = t46 i_type_9913 = NEW zcl_lnt_unknown_type( i_error = |Static, fallback| i_qualified_name = t50 ) i_meta = t51 i_value = t52 ).
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
