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
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t4 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t9 = zcl_lnt_sy_type_table=>run_syntax( i_node = t1 i_input_967e = t2 i_qualified_name_prefix = t12 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
    t14 = t1->find_first_expression( i_type_9913 = t16 ).
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE abap_bool.
    t19 = xsdbool( t14 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t22 TYPE REF TO zcl_lnt_basic_types.
      t22 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
      t21 = t22->find_value( i_node = t1 ).
      t17 = t21.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t26 = t1->find_first_expression( i_type_9913 = t28 ).
    t25 = t26.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
    t30 = t1->find_first_expression( i_type_9913 = t32 ).
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE abap_bool.
    t34 = xsdbool( t30 IS BOUND ).
    t33 = t34.
    IF t34 = abap_true.
      DATA t36 TYPE abap_bool.
      t36 = xsdbool( t25 IS BOUND ).
      t33 = t36.
    ENDIF.
    IF t33 = abap_true.
      DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      t42 = t25.
      t41 = t42->get_first_token( ).
      DATA t44 TYPE string.
      t44 = t2->filename.
      DATA t46 TYPE REF TO zcl_lnt_void_type.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t49) = |DataDefinition, TypeStructure|.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t49.
      t47 = t50.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t46 = zcl_lnt_void_type=>get_db65( i_voided = t47 i_qualified_name = t52 ).
      DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t40 = NEW zcl_lnt_typed_identifier( i_token = t41 i_filename = t44 i_type_9913 = t46 i_meta = t53 i_value = t54 ).
      result = t40.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t58 TYPE REF TO zcl_lnt_basic_types.
    t58 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t57 = t58->simple_type( i_node = t1 i_qualified_name_prefix = t61 ).
    t56 = t57.
    DATA t62 TYPE abap_bool.
    t62 = xsdbool( t56 IS BOUND ).
    IF t62 = abap_true.
      DATA(t64) = VALUE abap_bool( ).
      IF t17 IS BOUND.
        IF t17->has = abap_true.
          t64 = xsdbool( strlen( t17->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t64 = abap_true.
        DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t69 TYPE REF TO zcl_lnt_abstract_token.
        DATA t70 TYPE REF TO zcl_lnt_fi_identifier.
        t70 = t56.
        DATA t73 TYPE REF TO zcl_lnt_abstract_token.
        t73 = t70->token.
        t69 = t73.
        DATA t75 TYPE string.
        t75 = t2->filename.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        DATA t81 TYPE REF TO zcl_lnt_abstract_type.
        t81 = t56->type_cba0.
        t77 = t81.
        DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t89 = t56->meta.
        t83 = t89.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t95 TYPE string.
        t95 = t17->value.
        CREATE OBJECT t94.
        t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t94->sval = t95.
        t92 = t94.
        t68 = NEW zcl_lnt_typed_identifier( i_token = t69 i_filename = t75 i_type_9913 = t77 i_meta = t83 i_value = t92 ).
        result = t68.
        RETURN.
      ELSE.
        result = t56.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t104 TYPE abap_bool.
    t104 = xsdbool( t25 IS BOUND ).
    IF t104 = abap_true.
      DATA t108 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t109 TYPE REF TO zcl_lnt_abstract_token.
      DATA t110 TYPE REF TO zcl_lnt_expression_node.
      t110 = t25.
      t109 = t110->get_first_token( ).
      DATA t112 TYPE string.
      t112 = t2->filename.
      DATA t114 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t115) = |DataDefinition, fallback|.
      DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t114 = NEW zcl_lnt_unknown_type( i_error = t115 i_qualified_name = t116 ).
      DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t108 = NEW zcl_lnt_typed_identifier( i_token = t109 i_filename = t112 i_type_9913 = t114 i_meta = t117 i_value = t118 ).
      result = t108.
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
