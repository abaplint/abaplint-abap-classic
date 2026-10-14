* TS: src/abap/5_syntax/statements/interface_deferred.ts:6:1 InterfaceDeferred
CLASS zcl_lnt_sy_interface_deferred DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_interface_deferred IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db ).
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zcl_lnt_expression_node( t5 ).
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = CAST zcl_lnt_expression_node( t5 ).
      t14 = t15.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA t16 TYPE REF TO zcl_lnt_current_scope.
    DATA t17 TYPE REF TO zcl_lnt_current_scope.
    DATA(t18) = CAST zcl_lnt_syntax_input( t2 ).
    t17 = t18->scope.
    t16 = t17.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t20) = CAST zcl_lnt_abstract_token( t3 ).
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t23) = CAST zcl_lnt_abstract_token( t19 ).
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = CAST zcl_lnt_abstract_token( t22 ).
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    t21 = t26.
    IF t21 = abap_true.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
      DATA t30 TYPE REF TO zcl_lnt_iscope_data.
      DATA t31 TYPE REF TO zcl_lnt_scope_data.
      DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t34) = CAST zcl_lnt_current_scope( t16 ).
      t33 = t34->current.
      t32 = t33.
      t31 = t32.
      DATA t35 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t36) = CAST zcl_lnt_scope_data( t31 ).
      t35 = t36->data_56cc.
      t30 = t35.
      t29 = t30->deferred.
      DATA t37 TYPE string.
      DATA t38 TYPE string.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t41) = CAST zcl_lnt_abstract_token( t19 ).
      t40 = t41.
      t39 = t40.
      DATA t42 TYPE string.
      DATA(t43) = CAST zcl_lnt_abstract_token( t39 ).
      t42 = t43->str.
      t38 = t42.
      DATA(t44) = strlen( t38 ).
      t37 = t38.
      IF t37 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t37 TO UPPER CASE.
      ELSE.
        t37 = zlnt_runtime_uppe_91169605024d=>full( t37 ).
      ENDIF.
      DATA t45 TYPE REF TO zcl_lnt_deferred_information.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t47) = CAST zcl_lnt_abstract_token( t19 ).
      t46 = t47.
      DATA(t48) = |INTF|.
      t45 = NEW zcl_lnt_deferred_information( i_token = t46 i_oo_type = t48 ).
      t28 = t29->set( p0 = t37 p1 = t45 ).
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d902_e823d7f8c705.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
