* TS: src/abap/5_syntax/expressions/_check_offset_length.ts.module module
CLASS zcl_lnt_chck_offst_lngth_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS check_offset_length IMPORTING i_source_75cf TYPE REF TO zcl_lnt_expression_node i_source_type TYPE REF TO zcl_lnt_abstract_type i_method TYPE REF TO zif_lnt_union_8cd68e5e i_input_967e TYPE REF TO zcl_lnt_syntax_input
    RETURNING VALUE(result) TYPE abap_bool.
    CLASS-DATA zlnt_builtin_init_edf7fe70abaa TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_396bfe70717a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_chck_offst_lngth_mdl IMPLEMENTATION.
  METHOD check_offset_length.
    DATA(t1) = CAST zcl_lnt_expression_node( i_source_75cf ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_source_type ).
    DATA(t3) = CAST zif_lnt_union_8cd68e5e( i_method ).
    DATA(t4) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    t6 = t7->find_direct_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t12 = t13->find_direct_expression( i_type_9913 = t14 ).
    t11 = t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = CAST zcl_lnt_expression_node( t11 ).
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    t17 = xsdbool( t18 = abap_false ).
    t10 = t17.
    t9 = t10.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA(t25) = CAST zcl_lnt_expression_node( t5 ).
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    t26 = t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = CAST zcl_lnt_expression_node( t24 ).
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    t28 = xsdbool( t29 = abap_false ).
    t23 = t28.
    t22 = t23.
    IF t23 = abap_true.
      DATA t31 TYPE abap_bool.
      DATA(t32) = t9.
      DATA(t33) = abap_false.
      t31 = xsdbool( t32 = t33 ).
      t22 = t31.
    ENDIF.
    t21 = t22.
    IF t22 = abap_true.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      DATA(t39) = CAST zcl_lnt_expression_node( t5 ).
      t38 = t39.
      DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d ).
      t37 = t38->find_direct_expression( i_type_9913 = t40 ).
      t36 = t37.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      t41 = t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = CAST zcl_lnt_expression_node( t36 ).
      IF t45 IS INITIAL.
        t44 = abap_true.
      ENDIF.
      t43 = xsdbool( t44 = abap_false ).
      t35 = t43.
      t34 = t35.
      IF t35 = abap_false.
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        DATA t48 TYPE REF TO zcl_lnt_expression_node.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        DATA(t50) = CAST zcl_lnt_expression_node( t5 ).
        t49 = t50.
        DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d102_cb65ad2c1bba ).
        t48 = t49->find_direct_expression( i_type_9913 = t51 ).
        t47 = t48.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        t52 = t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = CAST zcl_lnt_expression_node( t47 ).
        IF t56 IS INITIAL.
          t55 = abap_true.
        ENDIF.
        t54 = xsdbool( t55 = abap_false ).
        t46 = t54.
        t34 = t46.
      ENDIF.
      t21 = t34.
    ENDIF.
    t20 = t21.
    DATA(t57) = VALUE abap_bool( ).
    DATA t58 TYPE abap_bool.
    DATA(t59) = t20.
    t58 = t59.
    IF t59 = abap_true.
      DATA t60 TYPE abap_bool.
      DATA t61 TYPE abap_bool.
      DATA(t62) = CAST zif_lnt_union_8cd68e5e( t3 ).
      t61 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_built_in_method ).
      t60 = xsdbool( t61 = abap_false ).
      t58 = t60.
    ENDIF.
    t57 = t58.
    IF t58 = abap_true.
      DATA t63 TYPE abap_bool.
      DATA t64 TYPE abap_bool.
      DATA(t65) = CAST zcl_lnt_abstract_type( t2 ).
      t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_string_type ).
      t63 = t64.
      IF t64 = abap_false.
        DATA t66 TYPE abap_bool.
        DATA(t67) = CAST zcl_lnt_abstract_type( t2 ).
        t66 = xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcl_lnt_x_string_type ).
        t63 = t66.
      ENDIF.
      t57 = t63.
    ENDIF.
    IF t57 = abap_true.
      DATA t68 TYPE string.
      DATA(t69) = |Offsets or lengths cannot be specified for fields of type "S|.
      t69 = t69 && |TRING" or "XSTRING" in the current statement|.
      t68 = t69.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t71) = CAST zcl_lnt_syntax_input( t4 ).
      t70 = t71->issues.
      DATA t72 TYPE REF TO zcl_lnt_issue.
      DATA(t73) = CAST zcl_lnt_syntax_input( t4 ).
      DATA t74 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t75) = CAST zcl_lnt_expression_node( t1 ).
      t74 = t75->get_first_token(  ).
      DATA(t76) = t68.
      DATA t77 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t77.
      t72 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t73 i_token = t74 i_message_26cb = t76 i_fix = t77 ).
      APPEND t72 TO t70->items.
      DATA(t78) = abap_true.
      result = t78.
      RETURN.
    ENDIF.
    DATA(t79) = abap_false.
    result = t79.

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
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1836_06e663fe917f.
  ENDMETHOD.
ENDCLASS.
