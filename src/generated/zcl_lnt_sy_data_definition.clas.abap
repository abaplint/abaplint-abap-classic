* TS: src/abap/5_syntax/expressions/data_definition.ts:9:1 DataDefinition
CLASS zcl_lnt_sy_data_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_data_definition IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    t4 = t1->find_first_expression( i_type_9913 = t6 ).
    IF xsdbool( t4 IS BOUND ) = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_sy_type_table=>run_syntax( i_node = t1 i_input_967e = t2 i_qualified_name_prefix = t12 ).
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
    t14 = t1->find_first_expression( i_type_9913 = t16 ).
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t14 IS BOUND ) = abap_true.
      t17 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->find_value( i_node = t1 ).
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t25 = t1->find_first_expression( i_type_9913 = t28 ).
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
    t30 = t1->find_first_expression( i_type_9913 = t32 ).
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE abap_bool.
    t34 = xsdbool( t30 IS BOUND ).
    t33 = t34.
    IF t34 = abap_true.
      t33 = xsdbool( t25 IS BOUND ).
    ENDIF.
    IF t33 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      t41 = t25->get_first_token( ).
      DATA t44 TYPE string.
      t44 = t2->filename.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = |DataDefinition, TypeStructure|.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t41 i_filename = t44 i_type_9913 = zcl_lnt_void_type=>get_db65( i_voided = t50 i_qualified_name = t52 ) i_meta = t53 i_value = t54 ).
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t56 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->simple_type( i_node = t1 i_qualified_name_prefix = t61 ).
    IF xsdbool( t56 IS BOUND ) = abap_true.
      DATA(t64) = VALUE abap_bool( ).
      IF t17 IS BOUND.
        IF t17->has = abap_true.
          t64 = xsdbool( strlen( t17->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t64 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_abstract_token.
        DATA t70 TYPE REF TO zcl_lnt_fi_identifier.
        t70 = t56.
        t69 = t70->token.
        DATA t75 TYPE string.
        t75 = t2->filename.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        t77 = t56->type_cba0.
        DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t83 = t56->meta.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t95 TYPE string.
        t95 = t17->value.
        CREATE OBJECT t94.
        t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t94->sval = t95.
        result = NEW zcl_lnt_typed_identifier( i_token = t69 i_filename = t75 i_type_9913 = t77 i_meta = t83 i_value = t94 ).
        RETURN.
      ELSE.
        result = t56.
        RETURN.
      ENDIF.
    ENDIF.
    IF xsdbool( t25 IS BOUND ) = abap_true.
      DATA t109 TYPE REF TO zcl_lnt_abstract_token.
      t109 = t25->get_first_token( ).
      DATA t112 TYPE string.
      t112 = t2->filename.
      DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t109 i_filename = t112 i_type_9913 = NEW zcl_lnt_unknown_type( i_error = |DataDefinition, fallback| i_qualified_name = t116 ) i_meta = t117 i_value = t118 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d797_7c876f6e1490.
  ENDMETHOD.
ENDCLASS.
