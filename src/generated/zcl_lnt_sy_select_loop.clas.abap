* TS: src/abap/5_syntax/statements/select_loop.ts:7:1 SelectLoop
CLASS zcl_lnt_sy_select_loop DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_select_loop IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d254_c290c4a7bfe3 ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zcl_lnt_expression_node( t3 ).
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA(t10) = CAST zcl_lnt_expression_node( t3 ).
      t9 = t10.
      DATA(t11) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = abap_false.
        DATA(t15) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t15->has = abap_true.
        t15->value = t14.
        t12 = t15.
      ELSE.
        DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t16.
        t12 = t16.
      ENDIF.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = abap_true.
        DATA(t20) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t21.
        t17 = t21.
      ENDIF.
      zcl_lnt_sy_expres_select=>run_syntax( i_node = t9 i_input_967e = t11 i_skip_implicit_into = t12 i_select_loop_6767 = t17 ).
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d935_eacefec0aaae.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
