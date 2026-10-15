* TS: src/abap/types/event_definition.ts:12:1 EventDefinition
CLASS zcl_lnt_event_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_event_definition.
    DATA parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA is_static_b389 TYPE abap_bool.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_visibility_33e6 TYPE f i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_static_4685 RETURNING VALUE(result) TYPE abap_bool.
    METHODS parse IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_event_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_33e6.
    DATA(t3) = i_input_967e.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zif_lnt_statement.
    CLEAR t6.
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
      CLEAR t8->source_value.
      IF t9 IS BOUND.
        DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t15.
        DATA t16 TYPE REF TO object.
        CLEAR t16.
        CLEAR t15.
        t16 = t9.
        TRY.
            t8->source_value ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8->source_value IS NOT BOUND.
          TRY.
              t15 ?= t9.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t15 IS BOUND.
            t8->source_value = t15->source( ).
          ENDIF.
          IF t8->source_value IS NOT BOUND.
            CREATE OBJECT t8->source_value.
            t8->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t8->source_value->oval = t9.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t18.
    DATA(t19) = t1.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
    t18 = t19->find_first_expression( i_type_9913 = t20 ).
    t17 = t18.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t22.
    DATA(t23) = t17.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t22.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    t21 = t26.
    IF t21 = abap_true.
      DATA t28 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = |MethodDefinition, expected MethodDef as part of input node|.
        DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t33->has = abap_true.
        t33->value = t32.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        t30 = t34.
      ENDIF.
      t29 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t30 ).
      t28 = NEW #( ).
      t28->payload = t29.
      CLEAR t28->source_value.
      IF t29 IS BOUND.
        DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        CLEAR t35.
        t36 = t29.
        TRY.
            t28->source_value ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28->source_value IS NOT BOUND.
          TRY.
              t35 ?= t29.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t35 IS BOUND.
            t28->source_value = t35->source( ).
          ENDIF.
          IF t28->source_value IS NOT BOUND.
            CREATE OBJECT t28->source_value.
            t28->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t28->source_value->oval = t29.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t37 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t38.
    DATA(t39) = t17.
    t38 = t39.
    t37 = t38->get_first_token( ).
    DATA(t40) = VALUE string( ).
    DATA(t41) = t3.
    t40 = t41->filename.
    super->constructor( i_token = t37 i_filename = t40 ).
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    CREATE OBJECT t42.
    me->parameters = t42.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parameters`.
    DATA(t43) = t1.
    DATA(t44) = t3.
    me->parse( i_node = t43 i_input_967e = t44 ).
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = VALUE string( ).
    DATA(t47) = VALUE string( ).
    DATA t48 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t49.
    DATA(t50) = t1.
    t49 = t50->get_first_token( ).
    t48 = t49.
    DATA(t51) = VALUE string( ).
    DATA(t52) = t48.
    t51 = t52->str.
    t47 = t51.
    DATA(t53) = strlen( t47 ).
    t46 = t47.
    IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t46 TO UPPER CASE.
    ELSE.
      t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
    ENDIF.
    DATA(t54) = |CLASS|.
    t45 = xsdbool( t46 = t54 ).
    me->is_static_b389 = t45.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `is_static`.
  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = me->parameters.
    result = t1.

  ENDMETHOD.

  METHOD is_static_4685.
    DATA(t1) = CONV abap_bool( me->is_static_b389 ).
    result = t1.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
    t3 = t4->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA(t11) = me->parameters.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t13) = t6.
      DATA(t14) = t2.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t15.
      t12 = zcl_lnt_sy_method_param=>run_syntax( i_node = t13 i_input_967e = t14 i_meta = t15 ).
      t11->load( ).
      APPEND t12 TO t11->items.
      t11->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1056_72dc81e49d9c.
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
