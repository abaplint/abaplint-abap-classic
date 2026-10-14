* TS: src/abap/types/event_definition.ts:12:1 EventDefinition
CLASS zcl_lnt_event_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_event_definition.
    DATA parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA is_static_b389 TYPE abap_bool.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_visibility_33e6 TYPE int8 i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_static_4685 RETURNING VALUE(result) TYPE abap_bool.
    METHODS parse IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_event_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_33e6.
    DATA(t3) = i_input_967e.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE REF TO zif_lnt_statement.
    DATA(t7) = t1.
    t6 = t7->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_events ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA(t12) = |MethodDefinition, expected MethodDef as part of input node|.
        DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t13->has = abap_true.
        t13->value = t12.
        t10 = t13.
      ELSE.
        DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t14.
        t10 = t14.
      ENDIF.
      t9 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t10 ).
      t8 = NEW #( ).
      t8->payload = t9.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t1.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
    t16 = t17->find_first_expression( i_type_9913 = t18 ).
    t15 = t16.
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = t15.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t20.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t19 = t24.
    IF t19 = abap_true.
      DATA t26 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA(t30) = |MethodDefinition, expected MethodDef as part of input node|.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t30.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t28 = t32.
      ENDIF.
      t27 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t28 ).
      t26 = NEW #( ).
      t26->payload = t27.
      RAISE EXCEPTION t26.
    ENDIF.
    DATA t33 TYPE REF TO zcl_lnt_abstract_token.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA(t35) = t15.
    t34 = t35.
    t33 = t34->get_first_token( ).
    DATA t36 TYPE string.
    DATA(t37) = t3.
    t36 = t37->filename.
    super->constructor( i_token = t33 i_filename = t36 ).
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    me->parameters = t38.
    DATA(t39) = t1.
    DATA(t40) = t3.
    me->parse( i_node = t39 i_input_967e = t40 ).
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE string.
    DATA t43 TYPE string.
    DATA t44 TYPE REF TO zcl_lnt_abstract_token.
    DATA t45 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t46) = t1.
    t45 = t46->get_first_token( ).
    t44 = t45.
    DATA t47 TYPE string.
    DATA(t48) = t44.
    t47 = t48->str.
    t43 = t47.
    DATA(t49) = strlen( t43 ).
    t42 = t43.
    IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t42 TO UPPER CASE.
    ELSE.
      t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
    ENDIF.
    DATA(t50) = |CLASS|.
    t41 = xsdbool( t42 = t50 ).
    me->is_static_b389 = t41.
  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = me->parameters.
    result = t1.

  ENDMETHOD.

  METHOD is_static_4685.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/event_definition.ts:36|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
    t3 = t4->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA(t8) = me->parameters.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t10) = t6.
      DATA(t11) = t2.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t9 = zcl_lnt_sy_method_param=>run_syntax( i_node = t10 i_input_967e = t11 i_meta = t12 ).
      APPEND t9 TO t8->items.
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1034_d68bf50add4f.
  ENDMETHOD.

  METHOD zif_lnt_event_definition~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_event_definition~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_event_definition~get_parameters.
    result = me->get_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_event_definition~is_static_4685.
    result = me->is_static_4685( ).
  ENDMETHOD.
ENDCLASS.
