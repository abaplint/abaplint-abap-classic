* TS: src/abap/5_syntax/statements/get_parameter.ts:10:1 GetParameter
CLASS zcl_lnt_sy_get_parameter DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_get_parameter IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = CAST zcl_lnt_expression_node( t3 ).
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_expression_node( t9 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA(t17) = CAST zcl_lnt_expression_node( t9 ).
      t16 = t17.
      DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t15 = t16->find_direct_expression( i_type_9913 = t18 ).
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA t19 TYPE abap_bool.
    DATA(t20) = CAST zcl_lnt_expression_node( t7 ).
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA(t22) = CAST zcl_lnt_expression_node( t7 ).
      t21 = t22.
      DATA(t23) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t24 TYPE REF TO zcl_lnt_character_type.
      DATA(t25) = CONV int8( 40 ).
      DATA t26 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t26.
      t24 = NEW zcl_lnt_character_type( i_length = t25 i_extra = t26 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t21 i_input_967e = t23 i_type_9913 = t24 ).
    ELSE.
      DATA t27 TYPE abap_bool.
      DATA(t28) = CAST zcl_lnt_expression_node( t3 ).
      t27 = xsdbool( t28 IS BOUND ).
      IF t27 = abap_true.
        DATA t29 TYPE REF TO zcl_lnt_abstract_type.
        DATA t30 TYPE REF TO zcl_lnt_expression_node.
        DATA(t31) = CAST zcl_lnt_expression_node( t3 ).
        t30 = t31.
        DATA(t32) = CAST zcl_lnt_syntax_input( t2 ).
        t29 = zcl_lnt_sy_target=>run_syntax( i_node = t30 i_input_967e = t32 ).
      ENDIF.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t34) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t33 = t34->find_direct_expressions( i_type_9913 = t35 ).
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
    LOOP AT t33->items INTO t37.
      t36 ?= t37.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA(t41) = CAST zcl_lnt_expression_node( t36 ).
        t39 = t41.
      ELSE.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t42.
        t39 = t42.
      ENDIF.
      DATA(t43) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t44 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t45.
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t47.
      t38 = zcl_lnt_sy_source=>run_syntax( i_node = t39 i_input_967e = t43 i_target_type = t44 i_write_reference = t45 i_allow_generic_deference = t46 i_read_reference = t47 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d887_f705e396b8f6.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
