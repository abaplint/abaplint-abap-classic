* TS: src/abap/5_syntax/_builtin.ts:23:1 BuiltInMethod
CLASS zcl_lnt_built_in_method DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_method_definition.
    INTERFACES zif_lnt_method_parameters.
    INTERFACES zif_lnt_union_8cd68e5e.
    INTERFACES zif_lnt_union_b6d4892d.
    DATA method TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA row TYPE f.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_filename TYPE string i_method TYPE REF TO zcl_lnt_ibuiltin_method i_row TYPE f.
    METHODS get_required_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_optional RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_all RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_event_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_event_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_importing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_default_importing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_exporting RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_raising RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_changing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_returning RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS get_exceptions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_visibility RETURNING VALUE(result) TYPE f.
    METHODS is_redefinition RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_abstract RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_static_4685 RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_event_handler RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_parameters RETURNING VALUE(result) TYPE REF TO zif_lnt_method_parameters.
    METHODS g_p_d_i_s_a_5_s_bl_ts_bl_in_mt IMPORTING i_parameter_d485 TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS get_parameter_default IMPORTING i_parameter_5406 TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_built_in_method IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_token.
    DATA(t2) = i_filename.
    DATA(t3) = i_method.
    DATA(t4) = i_row.
    DATA(t5) = t1.
    DATA(t6) = t2.
    super->constructor( i_token = t5 i_filename = t6 ).
    DATA(t7) = t3.
    me->method = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `method`.
    DATA(t8) = t4.
    me->row = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
  ENDMETHOD.

  METHOD get_required_parameters.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t5) = me->method.
    t4 = t5->mandatory.
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t6 = xsdbool( t7 = abap_false ).
    IF t6 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t10 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->keys( ).
      DATA(t12) = VALUE string( ).
      t9->dense( ).
      DATA(t13) = VALUE i( ).
      DO.
        t9->load( ).
        IF t13 >= lines( t9->items ).
          EXIT.
        ENDIF.
        CLEAR t12.
        READ TABLE t9->items INDEX t13 + 1 INTO t12.
        IF t9->has( t13 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t13 = t13 + 1.
        DATA t14 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t15 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t16 TYPE REF TO zcl_lnt_position.
        DATA(t17) = CONV f( me->row ).
        DATA(t18) = CONV f( 1 ).
        DATA(t19) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t19->has = abap_true.
        t19->value = t18.
        t16 = NEW zcl_lnt_position( i_row = t17 i_col = t19 ).
        DATA(t20) = t12.
        t15 = NEW zcl_lnt_lx_identifier( i_start = t16 i_str = t20 ).
        t14 = t15.
        DATA(t21) = t1.
        DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t23) = t14.
        DATA(t24) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t25 TYPE REF TO zcl_lnt_abstract_type.
        DATA t26 TYPE REF TO zcl_lnt_abstract_type.
        DATA t27 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA t28 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t29) = me->method.
        t28 = t29->mandatory.
        t27 = t28.
        DATA(t30) = t12.
        t26 = t27->get( p0 = t30 ).
        t25 = t26.
        DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        t22 = NEW zcl_lnt_typed_identifier( i_token = t23 i_filename = t24 i_type_9913 = t25 i_meta = t31 i_value = t32 ).
        t21->load( ).
        APPEND t22 TO t21->items.
        t21->save( ).
      ENDDO.
    ENDIF.
    DATA(t33) = t1.
    result = t33.

  ENDMETHOD.

  METHOD get_optional.
    DATA t1 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = |BuiltInMethod->Method not implemented|.
      DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t6->has = abap_true.
      t6->value = t5.
      t3 = t6.
    ELSE.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t3 = t7.
    ENDIF.
    t2 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t3 ).
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    IF t2 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
      t9 = t2.
      TRY.
          t1->source_value ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1->source_value IS NOT BOUND.
        TRY.
            t8 ?= t2.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t1->source_value = t8->source( ).
        ENDIF.
        IF t1->source_value IS NOT BOUND.
          CREATE OBJECT t1->source_value.
          t1->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1->source_value->oval = t2.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_all.
    DATA t1 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = |BuiltInMethod->getAll, Method not implemented|.
      DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t6->has = abap_true.
      t6->value = t5.
      t3 = t6.
    ELSE.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t3 = t7.
    ENDIF.
    t2 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t3 ).
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    IF t2 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
      t9 = t2.
      TRY.
          t1->source_value ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1->source_value IS NOT BOUND.
        TRY.
            t8 ?= t2.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t1->source_value = t8->source( ).
        ENDIF.
        IF t1->source_value IS NOT BOUND.
          CREATE OBJECT t1->source_value.
          t1->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1->source_value->oval = t2.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_event_name.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    result = t1.

  ENDMETHOD.

  METHOD get_event_class.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    result = t1.

  ENDMETHOD.

  METHOD get_importing.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t5) = me->method.
    t4 = t5->mandatory.
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t6 = xsdbool( t7 = abap_false ).
    IF t6 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t10 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->keys( ).
      DATA(t12) = VALUE string( ).
      t9->dense( ).
      DATA(t13) = VALUE i( ).
      DO.
        t9->load( ).
        IF t13 >= lines( t9->items ).
          EXIT.
        ENDIF.
        CLEAR t12.
        READ TABLE t9->items INDEX t13 + 1 INTO t12.
        IF t9->has( t13 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t13 = t13 + 1.
        DATA t14 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t15 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t16 TYPE REF TO zcl_lnt_position.
        DATA(t17) = CONV f( me->row ).
        DATA(t18) = CONV f( 1 ).
        DATA(t19) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t19->has = abap_true.
        t19->value = t18.
        t16 = NEW zcl_lnt_position( i_row = t17 i_col = t19 ).
        DATA(t20) = t12.
        t15 = NEW zcl_lnt_lx_identifier( i_start = t16 i_str = t20 ).
        t14 = t15.
        DATA(t21) = t1.
        DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t23) = t14.
        DATA(t24) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t25 TYPE REF TO zcl_lnt_abstract_type.
        DATA t26 TYPE REF TO zcl_lnt_abstract_type.
        DATA t27 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA t28 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t29) = me->method.
        t28 = t29->mandatory.
        t27 = t28.
        DATA(t30) = t12.
        t26 = t27->get( p0 = t30 ).
        t25 = t26.
        DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        t22 = NEW zcl_lnt_typed_identifier( i_token = t23 i_filename = t24 i_type_9913 = t25 i_meta = t31 i_value = t32 ).
        t21->load( ).
        APPEND t22 TO t21->items.
        t21->save( ).
      ENDDO.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t34 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t35) = me->method.
    t34 = t35->optional.
    t33 = t34.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = t33.
    IF t38 IS INITIAL.
      t37 = abap_true.
    ENDIF.
    t36 = xsdbool( t37 = abap_false ).
    IF t36 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t40 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t41) = t33.
      t40 = t41.
      t39 = t40->keys( ).
      DATA(t42) = VALUE string( ).
      t39->dense( ).
      DATA(t43) = VALUE i( ).
      DO.
        t39->load( ).
        IF t43 >= lines( t39->items ).
          EXIT.
        ENDIF.
        CLEAR t42.
        READ TABLE t39->items INDEX t43 + 1 INTO t42.
        IF t39->has( t43 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t43 = t43 + 1.
        DATA t44 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t45 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t46 TYPE REF TO zcl_lnt_position.
        DATA(t47) = CONV f( me->row ).
        DATA(t48) = CONV f( 1 ).
        DATA(t49) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t49->has = abap_true.
        t49->value = t48.
        t46 = NEW zcl_lnt_position( i_row = t47 i_col = t49 ).
        DATA(t50) = t42.
        t45 = NEW zcl_lnt_lx_identifier( i_start = t46 i_str = t50 ).
        t44 = t45.
        DATA(t51) = t1.
        DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t53) = t44.
        DATA(t54) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t55 TYPE REF TO zcl_lnt_abstract_type.
        DATA t56 TYPE REF TO zcl_lnt_abstract_type.
        DATA t57 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA t58 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t59) = me->method.
        t58 = t59->optional.
        t57 = t58.
        DATA(t60) = t42.
        t56 = t57->get( p0 = t60 ).
        t55 = t56.
        DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t61.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        t52 = NEW zcl_lnt_typed_identifier( i_token = t53 i_filename = t54 i_type_9913 = t55 i_meta = t61 i_value = t62 ).
        t51->load( ).
        APPEND t52 TO t51->items.
        t51->save( ).
      ENDDO.
    ENDIF.
    DATA(t63) = t1.
    result = t63.

  ENDMETHOD.

  METHOD get_default_importing.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4) = me->method.
    t3 = t4->mandatory.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t2.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t1 = t7.
    IF t1 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t13 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t14) = me->method.
    t13 = t14->mandatory.
    t12 = t13.
    t11 = t12->keys( ).
    t10 = t11.
    DATA t15 TYPE abap_bool.
    DATA t16 TYPE i.
    DATA(t17) = t10.
    t17->load( ).
    t16 = lines( t17->items ).
    DATA(t18) = 1.
    t15 = xsdbool( t16 = t18 ).
    IF t15 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA(t21) = VALUE string( ).
        DATA(t22) = VALUE string( ).
        DATA(t23) = t10.
        IF t23->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t23->load( ).
        CLEAR t22.
        READ TABLE t23->items INDEX 1 INTO t22.
        DATA(t24) = strlen( t22 ).
        t21 = t22.
        IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t21 TO UPPER CASE.
        ELSE.
          t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
        ENDIF.
        DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t25->has = abap_true.
        t25->value = t21.
        t19 = t25.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t26.
        t19 = t26.
      ENDIF.
      result = t19.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    result = t27.

  ENDMETHOD.

  METHOD get_exporting.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    result = t1.

  ENDMETHOD.

  METHOD get_raising.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    result = t1.

  ENDMETHOD.

  METHOD get_changing.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    result = t1.

  ENDMETHOD.

  METHOD get_returning.
    DATA t1 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t2 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA(t4) = CONV f( me->row ).
    DATA(t5) = CONV f( 1 ).
    DATA(t6) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t6->has = abap_true.
    t6->value = t5.
    t3 = NEW zcl_lnt_position( i_row = t4 i_col = t6 ).
    DATA(t7) = |ret|.
    t2 = NEW zcl_lnt_lx_identifier( i_start = t3 i_str = t7 ).
    t1 = t2.
    DATA t8 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t11) = t1.
      DATA(t12) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t13 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t14) = me->method.
      t13 = t14->return_5392.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      t10 = NEW zcl_lnt_typed_identifier( i_token = t11 i_filename = t12 i_type_9913 = t13 i_meta = t15 i_value = t16 ).
      t8 = t10.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t17.
      t8 = t17.
    ENDIF.
    result = t8.

  ENDMETHOD.

  METHOD get_exceptions.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    result = t1.

  ENDMETHOD.

  METHOD get_visibility.
    DATA(t1) = CONV f( 3 ).
    result = t1.

  ENDMETHOD.

  METHOD is_redefinition.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD is_abstract.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD is_static_4685.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD is_event_handler.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = me.
    result = t1.

  ENDMETHOD.

  METHOD g_p_d_i_s_a_5_s_bl_ts_bl_in_mt.
    DATA(t1) = i_parameter_d485.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t2.
    result = t2.

  ENDMETHOD.

  METHOD get_parameter_default.
    DATA(t1) = i_parameter_5406.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA(t3) = t1.
    t2 = me->g_p_d_i_s_a_5_s_bl_ts_bl_in_mt( i_parameter_d485 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d770_90fdda94af24.
  ENDMETHOD.

  METHOD zif_lnt_method_definition~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_visibility.
    result = me->get_visibility( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~is_redefinition.
    result = me->is_redefinition( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~is_abstract.
    result = me->is_abstract( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~is_static_4685.
    result = me->is_static_4685( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~is_event_handler.
    result = me->is_event_handler( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_event_name.
    result = me->get_event_name( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_event_class.
    result = me->get_event_class( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_parameters.
    result = me->get_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_raising.
    result = me->get_raising( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_exceptions.
    result = me->get_exceptions( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_token.
    result = me->get_token( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_all.
    result = me->get_all( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_importing.
    result = me->get_importing( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_required_parameters.
    result = me->get_required_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_exporting.
    result = me->get_exporting( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_changing.
    result = me->get_changing( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_optional.
    result = me->get_optional( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_returning.
    result = me->get_returning( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_exceptions.
    result = me->get_exceptions( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_default_importing.
    result = me->get_default_importing( ).
  ENDMETHOD.

  METHOD zif_lnt_method_parameters~get_parameter_default.
    result = me->get_parameter_default( i_parameter_5406 = i_parameter_5406 ).
  ENDMETHOD.

  METHOD zif_lnt_union_8cd68e5e~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_b6d4892d~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
