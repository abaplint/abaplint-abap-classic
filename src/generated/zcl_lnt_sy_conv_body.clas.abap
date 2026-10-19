* TS: src/abap/5_syntax/expressions/conv_body.ts:9:1 ConvBody
CLASS zcl_lnt_sy_conv_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_conv_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE abap_bool.
    t3 = abap_false.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t5 = t1->find_direct_expression( i_type_9913 = t8 ).
    IF xsdbool( t5 IS BOUND ) = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t3 = zcl_lnt_sy_let=>run_syntax( i_node = t5 i_input_967e = t2 i_skip_scope = t18 ).
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t19 = t1->find_direct_expression( i_type_9913 = t22 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t19 IS INITIAL ) = abap_true.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t32 = t2->issues.
      DATA t34 TYPE REF TO zcl_lnt_issue.
      DATA t39 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t34 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |ConvBody, no source found| i_fix = t39 ).
      t32->load( ).
      APPEND t34 TO t32->items.
      t32->save( ).
      DATA(t43) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t43.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t44 i_qualified_name = t46 ).
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    DATA t55 TYPE REF TO zcl_lnt_abstract_type.
    DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t48 = zcl_lnt_sy_source=>run_syntax( i_node = t19 i_input_967e = t2 i_target_type = t55 i_write_reference = t56 i_allow_generic_deference = t57 i_read_reference = t58 ).
    IF xsdbool( t3 = abap_true ) = abap_true.
      DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t63 TYPE REF TO zcl_lnt_current_scope.
      t63 = t2->scope.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      t66 = t1->get_last_token( ).
      DATA t70 TYPE f.
      t70 = t66->start->row.
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t77 = t66->start->col.
      DATA t83 TYPE f.
      t83 = strlen( t66->str ).
      DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t88->has = abap_true.
      t88->value = t83.
      t62 = t63->pop( i_end = NEW zcl_lnt_position( i_row = t70 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t77 right = t88 op = `+` ) ) ).
    ENDIF.
    result = t48.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d795_e406b9e872b1.
  ENDMETHOD.
ENDCLASS.
