* TS: src/abap/5_syntax/spaghetti_scope.ts:33:1 SpaghettiScopeNode
CLASS zcl_lnt_spaghetti_scope_node DEFINITION PUBLIC INHERITING FROM zcl_lnt_scope_data CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_spaghetti_scope_node.
    DATA identifier TYPE REF TO zcl_lnt_iscope_identifier.
    DATA children TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA parent TYPE REF TO zcl_lnt_spaghetti_scope_node.
    METHODS constructor IMPORTING i_identifier TYPE REF TO zcl_lnt_iscope_identifier i_parent TYPE REF TO zcl_lnt_spaghetti_scope_node OPTIONAL.
    METHODS debug_description RETURNING VALUE(result) TYPE string.
    METHODS g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd RETURNING VALUE(result) TYPE REF TO zcl_lnt_spaghetti_scope_node.
    METHODS a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd IMPORTING i_node TYPE REF TO zcl_lnt_spaghetti_scope_node.
    METHODS g_c_i_s_a_5_s_s_sc_ts_sp_sc_nd RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS g_f_c_i_s_a_5_s_s_s_t_sp_sc_nd RETURNING VALUE(result) TYPE REF TO zcl_lnt_spaghetti_scope_node.
    METHODS get_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_iscope_identifier.
    METHODS calc_coverage RETURNING VALUE(result) TYPE REF TO zcl_lnt_irange.
    METHODS set_end IMPORTING i_end TYPE REF TO zcl_lnt_position.
    METHODS find_deferred IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_59e28496.
    METHODS find_class_definition IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_class_definition.
    METHODS list_class_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_interface_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_form_definition IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_form_definition.
    METHODS find_interface_definition IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_interface_definition.
    METHODS find_type IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS find_extra_like_type IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS find_variable IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS find_write_reference IMPORTING i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS find_table_reference IMPORTING i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS find_table_void_reference IMPORTING i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_scope_for_variable IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_iscope_identifier.
    METHODS get_parent RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS add_child IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS get_children RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_first_child RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_spaghetti_scope_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_identifier.
    DATA(t2) = i_parent.
    super->constructor( ).
    me->identifier = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `identifier`.
    me->parent = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parent`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->children = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `children`.
  ENDMETHOD.

  METHOD debug_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    t1->source_location = |src/abap/5_syntax/spaghetti_scope.ts:37|.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd.
    result = me->parent.

  ENDMETHOD.

  METHOD a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd.
    DATA(t2) = me->children.
    DATA(t3) = i_node.
    t2->load( ).
    APPEND t3 TO t2->items.
    t2->save( ).
  ENDMETHOD.

  METHOD g_c_i_s_a_5_s_s_sc_ts_sp_sc_nd.
    result = me->children.

  ENDMETHOD.

  METHOD g_f_c_i_s_a_5_s_s_s_t_sp_sc_nd.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t4) = me->children.
    DATA t5 TYPE REF TO object.
    t4->load( ).
    READ TABLE t4->items INDEX 1 INTO t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t6 ?= t5.
      DATA t7 TYPE REF TO object.
      t7 = t6->as_ref( ).
      t3 ?= t7.
    ELSE.
      t3 ?= t5.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD get_identifier.
    result = me->identifier.

  ENDMETHOD.

  METHOD calc_coverage.
    DATA(t1) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_position.
    t3 = me->identifier->end.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = xsdbool( t3 IS INITIAL ).
    IF t1 = abap_true.
      DATA t9 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t10 TYPE REF TO zcx_lnt_assert_error.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = |internal error, caclCoverage|.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t13.
      t11 = t14.
      t10 = NEW zcx_lnt_assert_error( i_message_26cb = t11 ).
      t9 = NEW #( ).
      t9->payload = t10.
      CLEAR t9->source_value.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t17 TYPE REF TO object.
      t17 = t10.
      TRY.
          t9->source_value ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9->source_value IS NOT BOUND.
        TRY.
            t16 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t9->source_value = t16->source( ).
        ENDIF.
        IF t9->source_value IS NOT BOUND.
          CREATE OBJECT t9->source_value.
          t9->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->source_value->oval = t10.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t9.
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_irange.
    DATA t19 TYPE REF TO zcl_lnt_position.
    DATA t20 TYPE REF TO zcl_lnt_position.
    t20 = me->identifier->start.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_position.
    DATA t24 TYPE REF TO zcl_lnt_position.
    t24 = me->identifier->end.
    t22 = t24.
    t18 = NEW zcl_lnt_irange( i_start = t19 i_end = t22 ).
    CREATE OBJECT t18->zlnt_view_ownkeys_b0e8086400eb.
    t18->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t18->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t18->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t18->zlnt_json_ownkeys_70e5fd461788.
    t18->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t28) = |start|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    DATA(t30) = |end|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    result = t18.

  ENDMETHOD.

  METHOD set_end.
    DATA(t2) = me->identifier.
    t2->end = i_end.
    DELETE t2->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t7 ).
    ENDIF.
    DATA(t8) = |end|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t8 p1 = t9 ).
    ENDIF.
  ENDMETHOD.

  METHOD find_deferred.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 = me.
    DO.
      DATA(t7) = VALUE abap_bool( ).
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = xsdbool( t2 IS INITIAL ).
      t12 = xsdbool( t13 = abap_false ).
      t7 = t12.
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zcl_lnt_deferred_information.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_deferred_information.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
      DATA t18 TYPE REF TO zcl_lnt_iscope_data.
      DATA t19 TYPE REF TO zcl_lnt_scope_data.
      t19 = t2.
      DATA t22 TYPE REF TO zcl_lnt_iscope_data.
      t22 = t19->data_56cc.
      t18 = t22.
      t17 = t18->deferred.
      DATA t24 TYPE string.
      DATA(t26) = strlen( t1 ).
      t24 = t1.
      IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t24 TO UPPER CASE.
      ELSE.
        t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
      ENDIF.
      t16 = t17->get( p0 = t24 ).
      t15 = t16.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE REF TO zcl_lnt_deferred_information.
      t28 = t15.
      t27 = xsdbool( t28 IS BOUND ).
      IF t27 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t33.
        DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        DATA t38 TYPE REF TO zcl_lnt_deferred_information.
        t38 = t15.
        t37 = t38->token.
        DATA t40 TYPE string.
        DATA t41 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t42 = t2.
        t41 = t42->identifier.
        t40 = t41->filename.
        t36 = NEW zcl_lnt_fi_identifier( i_token = t37 i_filename = t40 ).
        t33 = t36.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        DATA t48 TYPE string.
        DATA t49 TYPE REF TO zcl_lnt_deferred_information.
        t49 = t15.
        t48 = t49->oo_type.
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t48.
        t45 = t51.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        t32 = NEW zcl_lnt_shape_59e28496( i_id = t33 i_oo_type = t45 i_rtti_name = t53 ).
        CREATE OBJECT t32->zlnt_view_ownkeys_b0e8086400eb.
        t32->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        t32->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t55 ).
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        IF t32->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t32->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t56 ).
        ENDIF.
        CREATE OBJECT t32->zlnt_json_ownkeys_70e5fd461788.
        t32->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t57) = |id|.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        t32->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
        DATA(t59) = |ooType|.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        IF t32->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t32->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
        ENDIF.
        result = t32.
        RETURN.
      ENDIF.
      DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t63 = t2.
      t62 = t63->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t62.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_class_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 = me.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t10) = strlen( t1 ).
    t8 = t1.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = xsdbool( t2 IS INITIAL ).
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zif_lnt_class_definition.
      DATA t20 TYPE REF TO zif_lnt_class_definition.
      DATA t21 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
      DATA t22 TYPE REF TO zcl_lnt_iscope_data.
      DATA t23 TYPE REF TO zcl_lnt_scope_data.
      t23 = t2.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      t26 = t23->data_56cc.
      t22 = t26.
      t21 = t22->cdefs.
      t20 = t21->get( p0 = t7 ).
      t19 = t20.
      DATA(t29) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = xsdbool( t19 IS INITIAL ).
      t34 = xsdbool( t35 = abap_false ).
      t29 = t34.
      IF t29 = abap_true.
        result = t19.
        RETURN.
      ENDIF.
      DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t43 = t2.
      t42 = t43->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t42.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD list_class_definitions.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t1 = me.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DO.
      DATA(t8) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = xsdbool( t1 IS INITIAL ).
      t13 = xsdbool( t14 = abap_false ).
      t8 = t13.
      IF t8 = abap_false.
        EXIT.
      ENDIF.
      DATA(t16) = VALUE i( ).
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
      DATA t19 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
      DATA t20 TYPE REF TO zcl_lnt_iscope_data.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      t21 = t1.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      t24 = t21->data_56cc.
      t20 = t24.
      t19 = t20->cdefs.
      t18 = t19.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t27.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t28 = t18->keys( ).
      DATA(t30) = VALUE string( ).
      t28->dense( ).
      DATA(t31) = VALUE i( ).
      DO.
        t28->load( ).
        IF t31 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t30.
        READ TABLE t28->items INDEX t31 + 1 INTO t30.
        IF t28->has( t31 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t31 = t31 + 1.
        DATA t33 TYPE REF TO zif_lnt_class_definition.
        DATA t34 TYPE REF TO zif_lnt_class_definition.
        t34 = t18->get( p0 = t30 ).
        t33 = t34.
        t26->load( ).
        APPEND t33 TO t26->items.
        t26->save( ).
      ENDDO.
      t17 = t26.
      DATA t38 TYPE REF TO zif_lnt_class_definition.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      DATA(t40) = VALUE i( ).
      DO.
        t17->load( ).
        IF t40 >= lines( t17->items ).
          EXIT.
        ENDIF.
        CLEAR t39.
        READ TABLE t17->items INDEX t40 + 1 INTO t39.
        t40 = t40 + 1.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        CLEAR t38.
        IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t41 ?= t39.
          DATA t42 TYPE REF TO object.
          t42 = t41->as_ref( ).
          t38 ?= t42.
        ELSE.
          t38 ?= t39.
        ENDIF.
        t6->load( ).
        APPEND t38 TO t6->items.
        t6->save( ).
      ENDDO.
      DATA t45 TYPE i.
      t6->load( ).
      t45 = lines( t6->items ).
      t16 = t45.
      DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t48 = t1.
      t47 = t48->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t47.
    ENDDO.
    result = t6.

  ENDMETHOD.

  METHOD list_interface_definitions.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t1 = me.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DO.
      DATA(t8) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = xsdbool( t1 IS INITIAL ).
      t13 = xsdbool( t14 = abap_false ).
      t8 = t13.
      IF t8 = abap_false.
        EXIT.
      ENDIF.
      DATA(t16) = VALUE i( ).
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
      DATA t19 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
      DATA t20 TYPE REF TO zcl_lnt_iscope_data.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      t21 = t1.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      t24 = t21->data_56cc.
      t20 = t24.
      t19 = t20->idefs.
      t18 = t19.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t27.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t28 = t18->keys( ).
      DATA(t30) = VALUE string( ).
      t28->dense( ).
      DATA(t31) = VALUE i( ).
      DO.
        t28->load( ).
        IF t31 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t30.
        READ TABLE t28->items INDEX t31 + 1 INTO t30.
        IF t28->has( t31 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t31 = t31 + 1.
        DATA t33 TYPE REF TO zif_lnt_interface_definition.
        DATA t34 TYPE REF TO zif_lnt_interface_definition.
        t34 = t18->get( p0 = t30 ).
        t33 = t34.
        t26->load( ).
        APPEND t33 TO t26->items.
        t26->save( ).
      ENDDO.
      t17 = t26.
      DATA t38 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      DATA(t40) = VALUE i( ).
      DO.
        t17->load( ).
        IF t40 >= lines( t17->items ).
          EXIT.
        ENDIF.
        CLEAR t39.
        READ TABLE t17->items INDEX t40 + 1 INTO t39.
        t40 = t40 + 1.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        CLEAR t38.
        IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t41 ?= t39.
          DATA t42 TYPE REF TO object.
          t42 = t41->as_ref( ).
          t38 ?= t42.
        ELSE.
          t38 ?= t39.
        ENDIF.
        t6->load( ).
        APPEND t38 TO t6->items.
        t6->save( ).
      ENDDO.
      DATA t45 TYPE i.
      t6->load( ).
      t45 = lines( t6->items ).
      t16 = t45.
      DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t48 = t1.
      t47 = t48->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t47.
    ENDDO.
    result = t6.

  ENDMETHOD.

  METHOD find_form_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 = me.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t10) = strlen( t1 ).
    t8 = t1.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = xsdbool( t2 IS INITIAL ).
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zcl_lnt_iscope_data.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      t21 = t2.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      t24 = t21->data_56cc.
      t20 = t24.
      t19 = t20->forms.
      DATA t26 TYPE REF TO zif_lnt_form_definition.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      DATA(t28) = VALUE i( ).
      DO.
        t19->load( ).
        IF t28 >= lines( t19->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t19->items INDEX t28 + 1 INTO t27.
        t28 = t28 + 1.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        CLEAR t26.
        IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t29 ?= t27.
          DATA t30 TYPE REF TO object.
          t30 = t29->as_ref( ).
          t26 ?= t30.
        ELSE.
          t26 ?= t27.
        ENDIF.
        DATA(t31) = VALUE abap_bool( ).
        DATA t32 TYPE string.
        DATA t33 TYPE string.
        t33 = t26->get_name( ).
        DATA(t35) = strlen( t33 ).
        t32 = t33.
        IF t32 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t32 TO UPPER CASE.
        ELSE.
          t32 = zlnt_runtime_uppe_91169605024d=>full( t32 ).
        ENDIF.
        t31 = xsdbool( t32 = t7 ).
        IF t31 = abap_true.
          result = t26.
          RETURN.
        ENDIF.
      ENDDO.
      DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t42 = t2.
      t41 = t42->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t41.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_interface_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 = me.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t10) = strlen( t1 ).
    t8 = t1.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = xsdbool( t2 IS INITIAL ).
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zif_lnt_interface_definition.
      DATA t20 TYPE REF TO zif_lnt_interface_definition.
      DATA t21 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
      DATA t22 TYPE REF TO zcl_lnt_iscope_data.
      DATA t23 TYPE REF TO zcl_lnt_scope_data.
      t23 = t2.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      t26 = t23->data_56cc.
      t22 = t26.
      t21 = t22->idefs.
      t20 = t21->get( p0 = t7 ).
      t19 = t20.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE REF TO zif_lnt_interface_definition.
      t30 = t19.
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        result = t19.
        RETURN.
      ENDIF.
      DATA t37 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t38 = t2.
      t37 = t38->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t37.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_type.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 = me.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t10) = strlen( t1 ).
    t8 = t1.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = xsdbool( t2 IS INITIAL ).
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t21 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t22 TYPE REF TO zcl_lnt_iscope_data.
      DATA t23 TYPE REF TO zcl_lnt_scope_data.
      t23 = t2.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      t26 = t23->data_56cc.
      t22 = t26.
      t21 = t22->types.
      t20 = t21->get( p0 = t7 ).
      t19 = t20.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      t30 = t19.
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        result = t19.
        RETURN.
      ENDIF.
      DATA t37 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t38 = t2.
      t37 = t38->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t37.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_extra_like_type.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 = me.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t10) = strlen( t1 ).
    t8 = t1.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = xsdbool( t2 IS INITIAL ).
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zcl_lnt_iscope_data.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      t21 = t2.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      t24 = t21->data_56cc.
      t19 = t24.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t28 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      t28 = t19->extra_like_types.
      t27 = t28->get( p0 = t7 ).
      t26 = xsdbool( t27 IS BOUND ).
      IF t26 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t32 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        t32 = t19->extra_like_types.
        t31 = t32->get( p0 = t7 ).
        result = t31.
        RETURN.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t36 = t2.
      t35 = t36->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t35.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_variable.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 = me.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t10) = strlen( t1 ).
    t8 = t1.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = xsdbool( t2 IS INITIAL ).
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zcl_lnt_iscope_data.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      t21 = t2.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      t24 = t21->data_56cc.
      t19 = t24.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t28 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      t28 = t19->vars.
      t27 = t28->get( p0 = t7 ).
      t26 = xsdbool( t27 IS BOUND ).
      IF t26 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t32 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        t32 = t19->vars.
        t31 = t32->get( p0 = t7 ).
        result = t31.
        RETURN.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t36 = t2.
      t35 = t36->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t35.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_write_reference.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_iscope_data.
    DATA t4 TYPE REF TO zcl_lnt_scope_data.
    t4 = me.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    t6 = t4->data_56cc.
    t3 = t6.
    t2 = t3->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE string.
      t15 = t8->reference_type.
      DATA(t17) = |Write To|.
      t14 = xsdbool( t15 = t17 ).
      t13 = t14.
      IF t14 = abap_true.
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE REF TO zcl_lnt_position.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        t21 = t8->position_7b94.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        t25 = t21->token.
        DATA t27 TYPE REF TO zcl_lnt_position.
        t27 = t25->start.
        t19 = t27.
        t18 = t19->equals( i_p = t1 ).
        t13 = t18.
      ENDIF.
      IF t13 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
        t31 = t8->resolved.
        t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_typed_identifier ).
        IF t30 = abap_true.
          DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
          t36 = t8->resolved.
          t35 ?= t36.
          result = t35.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_table_reference.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_iscope_data.
    DATA t4 TYPE REF TO zcl_lnt_scope_data.
    t4 = me.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    t6 = t4->data_56cc.
    t3 = t6.
    t2 = t3->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE string.
      t16 = t8->reference_type.
      DATA(t18) = |Table|.
      t15 = xsdbool( t16 = t18 ).
      t14 = t15.
      IF t15 = abap_true.
        DATA t19 TYPE abap_bool.
        DATA t20 TYPE REF TO zcl_lnt_position.
        DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
        t22 = t8->position_7b94.
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        t26 = t22->token.
        DATA t28 TYPE REF TO zcl_lnt_position.
        t28 = t26->start.
        t20 = t28.
        t19 = t20->equals( i_p = t1 ).
        t14 = t19.
      ENDIF.
      t13 = t14.
      IF t14 = abap_true.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
        t32 = t8->resolved.
        t31 = xsdbool( t32 IS BOUND ).
        t13 = t31.
      ENDIF.
      IF t13 = abap_true.
        DATA(t36) = VALUE string( ).
        DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
        t39 = t8->resolved.
        DATA(t41) = VALUE string( ).
        DATA t42 TYPE string.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        t45 = t39->token.
        DATA t47 TYPE string.
        t47 = t45->str.
        t42 = t47.
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = VALUE string( ).
        DATA(t51) = t42.
        DATA(t52) = 0.
        DATA(t53) = 1.
        DATA(t54) = strlen( t51 ).
        IF t52 < 0.
          t52 = t52 + t54.
          IF t52 < 0.
            t52 = 0.
          ENDIF.
        ENDIF.
        IF t52 > t54 OR t53 <= 0.
          CLEAR t50.
        ELSE.
          IF t53 > t54 - t52.
            t53 = t54 - t52.
          ENDIF.
          t50 = t51+t52(t53).
        ENDIF.
        DATA(t55) = |!|.
        t49 = xsdbool( t50 = t55 ).
        IF t49 = abap_true.
          DATA(t56) = VALUE string( ).
          DATA t57 TYPE string.
          t57 = t42.
          DATA(t59) = VALUE string( ).
          DATA(t61) = 1.
          DATA t62 TYPE i.
          t62 = strlen( t57 ).
          DATA(t65) = strlen( t57 ).
          IF t61 < 0.
            t61 = t61 + t65.
            IF t61 < 0.
              t61 = 0.
            ENDIF.
          ENDIF.
          IF t61 > t65 OR t62 <= 0.
            CLEAR t59.
          ELSE.
            IF t62 > t65 - t61.
              t62 = t65 - t61.
            ENDIF.
            t59 = t57+t61(t62).
          ENDIF.
          t56 = t59.
          t42 = t56.
        ENDIF.
        t41 = t42.
        t36 = t41.
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t36.
        result = t67.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_table_void_reference.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_iscope_data.
    DATA t4 TYPE REF TO zcl_lnt_scope_data.
    t4 = me.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    t6 = t4->data_56cc.
    t3 = t6.
    t2 = t3->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE string.
      t15 = t8->reference_type.
      DATA(t17) = |Table (Void)|.
      t14 = xsdbool( t15 = t17 ).
      t13 = t14.
      IF t14 = abap_true.
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE REF TO zcl_lnt_position.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        t21 = t8->position_7b94.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        t25 = t21->token.
        DATA t27 TYPE REF TO zcl_lnt_position.
        t27 = t25->start.
        t19 = t27.
        t18 = t19->equals( i_p = t1 ).
        t13 = t18.
      ENDIF.
      IF t13 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD find_scope_for_variable.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 = me.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t10) = strlen( t1 ).
    t8 = t1.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = xsdbool( t2 IS INITIAL ).
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA(t19) = VALUE abap_bool( ).
      DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t22 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t23 TYPE REF TO zcl_lnt_iscope_data.
      DATA t24 TYPE REF TO zcl_lnt_scope_data.
      t24 = t2.
      DATA t27 TYPE REF TO zcl_lnt_iscope_data.
      t27 = t24->data_56cc.
      t23 = t27.
      t22 = t23->vars.
      t21 = t22->get( p0 = t7 ).
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = xsdbool( t21 IS INITIAL ).
      t32 = xsdbool( t33 = abap_false ).
      t19 = t32.
      IF t19 = abap_true.
        DATA t41 TYPE REF TO zcl_lnt_iscope_identifier.
        t41 = t2->identifier.
        result = t41.
        RETURN.
      ENDIF.
      DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t45 = t2.
      t44 = t45->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t44.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_parent.
    result = CAST zcl_lnt_spaghetti_scope_node( me->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ) ).

  ENDMETHOD.

  METHOD add_child.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t4 TYPE REF TO object.
    t4 = i_node.
    t2 ?= t4.
    me->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t2 ).
  ENDMETHOD.

  METHOD get_children.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->g_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( ) ).

  ENDMETHOD.

  METHOD get_first_child.
    result = CAST zcl_lnt_spaghetti_scope_node( me->g_f_c_i_s_a_5_s_s_s_t_sp_sc_nd( ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d851_69b911d7f452.
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~get_parent.
    result = me->get_parent( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~add_child.
    me->add_child( i_node = i_node ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~get_first_child.
    result = me->get_first_child( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~get_data.
    result = me->get_data( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~calc_coverage.
    result = me->calc_coverage( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~find_class_definition.
    result = me->find_class_definition( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~list_class_definitions.
    result = me->list_class_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~list_interface_definitions.
    result = me->list_interface_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~find_form_definition.
    result = me->find_form_definition( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~find_interface_definition.
    result = me->find_interface_definition( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~find_type.
    result = me->find_type( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~find_variable.
    result = me->find_variable( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~find_scope_for_variable.
    result = me->find_scope_for_variable( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~find_write_reference.
    result = me->find_write_reference( i_pos = i_pos ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~find_table_reference.
    result = me->find_table_reference( i_pos = i_pos ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope_node~find_table_void_reference.
    result = me->find_table_void_reference( i_pos = i_pos ).
  ENDMETHOD.
ENDCLASS.
