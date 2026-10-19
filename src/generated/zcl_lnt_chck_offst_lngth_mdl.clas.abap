* TS: src/abap/5_syntax/expressions/_check_offset_length.ts.module module
CLASS zcl_lnt_chck_offst_lngth_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS check_offset_length IMPORTING i_source_75cf TYPE REF TO zcl_lnt_expression_node i_source_type TYPE REF TO zcl_lnt_abstract_type i_method TYPE REF TO zif_lnt_union_8cd68e5e i_input_967e TYPE REF TO zcl_lnt_syntax_input
    RETURNING VALUE(result) TYPE abap_bool.
    CLASS-DATA zlnt_builtin_init_edf7fe70abaa TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_396bfe70717a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_chck_offst_lngth_mdl IMPLEMENTATION.
  METHOD check_offset_length.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_source_type.
    DATA(t3) = i_method.
    DATA(t4) = i_input_967e.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    t5 = t1->find_direct_expression( i_type_9913 = t8 ).
    DATA(t9) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t12 = t1->find_direct_expression( i_type_9913 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9 = xsdbool( xsdbool( t12 IS INITIAL ) = abap_false ).
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t23 = xsdbool( xsdbool( t5 IS INITIAL ) = abap_false ).
    t22 = t23.
    IF t23 = abap_true.
      t22 = xsdbool( t9 = abap_false ).
    ENDIF.
    t21 = t22.
    IF t22 = abap_true.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      t38 = t5.
      DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
      t37 = t38->find_direct_expression( i_type_9913 = t40 ).
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t35 = xsdbool( xsdbool( t37 IS INITIAL ) = abap_false ).
      t34 = t35.
      IF t35 = abap_false.
        DATA t48 TYPE REF TO zcl_lnt_expression_node.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        t49 = t5.
        DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
        t48 = t49->find_direct_expression( i_type_9913 = t51 ).
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t34 = xsdbool( xsdbool( t48 IS INITIAL ) = abap_false ).
      ENDIF.
      t21 = t34.
    ENDIF.
    t20 = t21.
    DATA(t57) = VALUE abap_bool( ).
    DATA t58 TYPE abap_bool.
    t58 = t20.
    IF t20 = abap_true.
      t58 = xsdbool( xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_built_in_method ) = abap_false ).
    ENDIF.
    t57 = t58.
    IF t58 = abap_true.
      DATA t63 TYPE abap_bool.
      DATA t64 TYPE abap_bool.
      t64 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_string_type ).
      t63 = t64.
      IF t64 = abap_false.
        t63 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_x_string_type ).
      ENDIF.
      t57 = t63.
    ENDIF.
    IF t57 = abap_true.
      DATA(t69) = |Offsets or lengths cannot be specified for fields of type "S|.
      t69 = t69 && |TRING" or "XSTRING" in the current statement|.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t70 = t4->issues.
      DATA t72 TYPE REF TO zcl_lnt_issue.
      DATA t77 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t72 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t4 i_token = t1->get_first_token( ) i_message_26cb = t69 i_fix = t77 ).
      t70->load( ).
      APPEND t72 TO t70->items.
      t70->save( ).
      result = abap_true.
      RETURN.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD zlnt_builtin_init_396bfe70717a.
    IF zlnt_builtin_init_edf7fe70abaa = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_edf7fe70abaa = abap_true.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1928_7cfa03db898d.
  ENDMETHOD.
ENDCLASS.
