* TS: src/abap/5_syntax/_builtin.ts:23:1 BuiltInMethod
CLASS zcl_lnt_built_in_method DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_method_definition.
    INTERFACES zif_lnt_method_parameters.
    INTERFACES zif_lnt_union_8cd68e5e.
    INTERFACES zif_lnt_union_b6d4892d.
    DATA method TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA row TYPE int8.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_filename TYPE string i_method TYPE REF TO zcl_lnt_ibuiltin_method i_row TYPE int8.
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
    METHODS get_visibility RETURNING VALUE(result) TYPE int8.
    METHODS is_redefinition RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_abstract RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_static_4685 RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_event_handler RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_parameters RETURNING VALUE(result) TYPE REF TO zif_lnt_method_parameters.
    METHODS g_p_d_i_s_a_5_s_bl_ts_bl_in_mt IMPORTING i_parameter_d485 TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS get_parameter_default IMPORTING i_parameter_5406 TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_built_in_method IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t2) = i_filename.
    DATA(t3) = CAST zcl_lnt_ibuiltin_method( i_method ).
    DATA(t4) = i_row.
    DATA(t5) = CAST zcl_lnt_abstract_token( t1 ).
    DATA(t6) = t2.
    super->constructor( i_token = t5 i_filename = t6 ).
    DATA(t7) = CAST zcl_lnt_ibuiltin_method( t3 ).
    me->method = t7.
    DATA(t8) = t4.
    me->row = t8.
  ENDMETHOD.

  METHOD get_required_parameters.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t5) = CAST zcl_lnt_ibuiltin_method( me->method ).
    t4 = t5->mandatory.
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_map__41b3bb94df3d( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t6 = xsdbool( t7 = abap_false ).
    IF t6 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t10 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t11) = CAST zlnt_runtime_map__41b3bb94df3d( t3 ).
      t10 = t11.
      t9 = t10->keys( ).
      DATA(t12) = VALUE string( ).
      LOOP AT t9->items INTO t12.
        DATA t13 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t14 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t15 TYPE REF TO zcl_lnt_position.
        DATA(t16) = CONV int8( me->row ).
        DATA(t17) = CONV int8( 1 ).
        t15 = NEW zcl_lnt_position( i_row = t16 i_col = t17 ).
        DATA(t18) = t12.
        t14 = NEW zcl_lnt_lx_identifier( i_start = t15 i_str = t18 ).
        t13 = t14.
        DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t21) = CAST zcl_lnt_lx_identifier( t13 ).
        DATA(t22) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t23 TYPE REF TO zcl_lnt_abstract_type.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        DATA t25 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA t26 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t27) = CAST zcl_lnt_ibuiltin_method( me->method ).
        t26 = t27->mandatory.
        t25 = t26.
        DATA(t28) = t12.
        t24 = t25->get( p0 = t28 ).
        t23 = t24.
        DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t29.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        t20 = NEW zcl_lnt_typed_identifier( i_token = t21 i_filename = t22 i_type_9913 = t23 i_meta = t29 i_value = t30 ).
        APPEND t20 TO t19->items.
      ENDLOOP.
    ENDIF.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t31.

  ENDMETHOD.

  METHOD get_optional.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:42|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_all.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:46|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_event_name.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:50|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_event_class.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:54|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_importing.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t5) = CAST zcl_lnt_ibuiltin_method( me->method ).
    t4 = t5->mandatory.
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_map__41b3bb94df3d( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t6 = xsdbool( t7 = abap_false ).
    IF t6 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t10 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t11) = CAST zlnt_runtime_map__41b3bb94df3d( t3 ).
      t10 = t11.
      t9 = t10->keys( ).
      DATA(t12) = VALUE string( ).
      LOOP AT t9->items INTO t12.
        DATA t13 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t14 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t15 TYPE REF TO zcl_lnt_position.
        DATA(t16) = CONV int8( me->row ).
        DATA(t17) = CONV int8( 1 ).
        t15 = NEW zcl_lnt_position( i_row = t16 i_col = t17 ).
        DATA(t18) = t12.
        t14 = NEW zcl_lnt_lx_identifier( i_start = t15 i_str = t18 ).
        t13 = t14.
        DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t21) = CAST zcl_lnt_lx_identifier( t13 ).
        DATA(t22) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t23 TYPE REF TO zcl_lnt_abstract_type.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        DATA t25 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA t26 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t27) = CAST zcl_lnt_ibuiltin_method( me->method ).
        t26 = t27->mandatory.
        t25 = t26.
        DATA(t28) = t12.
        t24 = t25->get( p0 = t28 ).
        t23 = t24.
        DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t29.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        t20 = NEW zcl_lnt_typed_identifier( i_token = t21 i_filename = t22 i_type_9913 = t23 i_meta = t29 i_value = t30 ).
        APPEND t20 TO t19->items.
      ENDLOOP.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t32 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t33) = CAST zcl_lnt_ibuiltin_method( me->method ).
    t32 = t33->optional.
    t31 = t32.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = CAST zlnt_runtime_map__41b3bb94df3d( t31 ).
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    t34 = xsdbool( t35 = abap_false ).
    IF t34 = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t38 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t39) = CAST zlnt_runtime_map__41b3bb94df3d( t31 ).
      t38 = t39.
      t37 = t38->keys( ).
      DATA(t40) = VALUE string( ).
      LOOP AT t37->items INTO t40.
        DATA t41 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t42 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t43 TYPE REF TO zcl_lnt_position.
        DATA(t44) = CONV int8( me->row ).
        DATA(t45) = CONV int8( 1 ).
        t43 = NEW zcl_lnt_position( i_row = t44 i_col = t45 ).
        DATA(t46) = t40.
        t42 = NEW zcl_lnt_lx_identifier( i_start = t43 i_str = t46 ).
        t41 = t42.
        DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t48 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t49) = CAST zcl_lnt_lx_identifier( t41 ).
        DATA(t50) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t51 TYPE REF TO zcl_lnt_abstract_type.
        DATA t52 TYPE REF TO zcl_lnt_abstract_type.
        DATA t53 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA t54 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        DATA(t55) = CAST zcl_lnt_ibuiltin_method( me->method ).
        t54 = t55->optional.
        t53 = t54.
        DATA(t56) = t40.
        t52 = t53->get( p0 = t56 ).
        t51 = t52.
        DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t57.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        t48 = NEW zcl_lnt_typed_identifier( i_token = t49 i_filename = t50 i_type_9913 = t51 i_meta = t57 i_value = t58 ).
        APPEND t48 TO t47->items.
      ENDLOOP.
    ENDIF.
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t59.

  ENDMETHOD.

  METHOD get_default_importing.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4) = CAST zcl_lnt_ibuiltin_method( me->method ).
    t3 = t4->mandatory.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_map__41b3bb94df3d( t2 ).
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
    DATA(t14) = CAST zcl_lnt_ibuiltin_method( me->method ).
    t13 = t14->mandatory.
    t12 = t13.
    t11 = t12->keys( ).
    t10 = t11.
    DATA t15 TYPE abap_bool.
    DATA t16 TYPE i.
    DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t10 ).
    t16 = lines( t17->items ).
    DATA(t18) = 1.
    t15 = xsdbool( t16 = t18 ).
    IF t15 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA t21 TYPE string.
        DATA(t22) = VALUE string( ).
        DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t10 ).
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
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:82|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_raising.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:86|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_changing.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:90|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_returning.
    DATA t1 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t2 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA(t4) = CONV int8( me->row ).
    DATA(t5) = CONV int8( 1 ).
    t3 = NEW zcl_lnt_position( i_row = t4 i_col = t5 ).
    DATA(t6) = |ret|.
    t2 = NEW zcl_lnt_lx_identifier( i_start = t3 i_str = t6 ).
    t1 = t2.
    DATA t7 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t10) = CAST zcl_lnt_lx_identifier( t1 ).
      DATA(t11) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t12 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t13) = CAST zcl_lnt_ibuiltin_method( me->method ).
      t12 = t13->return_5392.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t9 = NEW zcl_lnt_typed_identifier( i_token = t10 i_filename = t11 i_type_9913 = t12 i_meta = t14 i_value = t15 ).
      t7 = t9.
    ELSE.
      DATA t16 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t16.
      t7 = t16.
    ENDIF.
    result = t7.

  ENDMETHOD.

  METHOD get_exceptions.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:99|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_visibility.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:103|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_redefinition.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:107|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_abstract.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:111|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_static_4685.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:115|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_event_handler.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_builtin.ts:119|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = CAST zcl_lnt_built_in_method( me ).
    result = t1.

  ENDMETHOD.

  METHOD g_p_d_i_s_a_5_s_bl_ts_bl_in_mt.
    DATA(t1) = i_parameter_d485.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_builtin.ts:127|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_parameter_default.
    DATA(t1) = i_parameter_5406.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_builtin.ts:127|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d748_9cf6b71481f2.
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
