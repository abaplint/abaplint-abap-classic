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
    DATA t3 TYPE REF TO zcl_lnt_position.
    t3 = me->identifier->end.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      DATA t9 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t10 TYPE REF TO zcx_lnt_assert_error.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = |internal error, caclCoverage|.
      t10 = NEW zcx_lnt_assert_error( i_message_26cb = t14 ).
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
    t19 = me->identifier->start.
    DATA t24 TYPE REF TO zcl_lnt_position.
    t24 = me->identifier->end.
    t18 = NEW zcl_lnt_irange( i_start = t19 i_end = t24 ).
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
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t29 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t31 ).
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
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t9 ).
    ENDIF.
  ENDMETHOD.

  METHOD find_deferred.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 = me.
    DO.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      IF xsdbool( xsdbool( t2 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zcl_lnt_deferred_information.
      CLEAR t15.
      DATA t17 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
      DATA t19 TYPE REF TO zcl_lnt_scope_data.
      t19 = t2.
      t17 = t19->data_56cc->deferred.
      DATA t24 TYPE string.
      DATA(t26) = strlen( t1 ).
      t24 = t1.
      IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t24 TO UPPER CASE.
      ELSE.
        t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
      ENDIF.
      t15 = t17->get( p0 = t24 ).
      DATA t28 TYPE REF TO zcl_lnt_deferred_information.
      t28 = t15.
      IF xsdbool( t28 IS BOUND ) = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t33.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        t37 = t15->token.
        DATA t40 TYPE string.
        t40 = t2->identifier->filename.
        t33 = NEW zcl_lnt_fi_identifier( i_token = t37 i_filename = t40 ).
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        DATA t48 TYPE string.
        t48 = t15->oo_type.
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
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        t32->zlnt_json_ownkeys_70e5fd461788->put( p0 = |id| p1 = t58 ).
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        IF t32->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t32->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t60 ).
        ENDIF.
        result = t32.
        RETURN.
      ENDIF.
      t2 = t2->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
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
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      IF xsdbool( xsdbool( t2 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zif_lnt_class_definition.
      DATA t23 TYPE REF TO zcl_lnt_scope_data.
      t23 = t2.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      t26 = t23->data_56cc.
      t19 = t26->cdefs->get( p0 = t7 ).
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      IF xsdbool( xsdbool( t19 IS INITIAL ) = abap_false ) = abap_true.
        result = t19.
        RETURN.
      ENDIF.
      t2 = t2->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD list_class_definitions.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t1 = me.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DO.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      IF xsdbool( xsdbool( t1 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t16) = VALUE i( ).
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      t21 = t1.
      t18 = t21->data_56cc->cdefs.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
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
        t33 = t18->get( p0 = t30 ).
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
      t6->load( ).
      t16 = lines( t6->items ).
      t1 = t1->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    ENDDO.
    result = t6.

  ENDMETHOD.

  METHOD list_interface_definitions.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t1 = me.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DO.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      IF xsdbool( xsdbool( t1 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t16) = VALUE i( ).
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      t21 = t1.
      t18 = t21->data_56cc->idefs.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
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
        t33 = t18->get( p0 = t30 ).
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
      t6->load( ).
      t16 = lines( t6->items ).
      t1 = t1->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
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
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      IF xsdbool( xsdbool( t2 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      t21 = t2.
      t19 = t21->data_56cc->forms.
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
        IF xsdbool( t32 = t7 ) = abap_true.
          result = t26.
          RETURN.
        ENDIF.
      ENDDO.
      t2 = t2->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
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
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      IF xsdbool( xsdbool( t2 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zif_lnt_interface_definition.
      DATA t23 TYPE REF TO zcl_lnt_scope_data.
      t23 = t2.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      t26 = t23->data_56cc.
      t19 = t26->idefs->get( p0 = t7 ).
      DATA t30 TYPE REF TO zif_lnt_interface_definition.
      t30 = t19.
      IF xsdbool( t30 IS BOUND ) = abap_true.
        result = t19.
        RETURN.
      ENDIF.
      t2 = t2->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
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
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      IF xsdbool( xsdbool( t2 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t23 TYPE REF TO zcl_lnt_scope_data.
      t23 = t2.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      t26 = t23->data_56cc.
      t19 = t26->types->get( p0 = t7 ).
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      t30 = t19.
      IF xsdbool( t30 IS BOUND ) = abap_true.
        result = t19.
        RETURN.
      ENDIF.
      t2 = t2->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
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
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      IF xsdbool( xsdbool( t2 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zcl_lnt_iscope_data.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      t21 = t2.
      t19 = t21->data_56cc.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      t27 = t19->extra_like_types->get( p0 = t7 ).
      IF xsdbool( t27 IS BOUND ) = abap_true.
        result = t19->extra_like_types->get( p0 = t7 ).
        RETURN.
      ENDIF.
      t2 = t2->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
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
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      IF xsdbool( xsdbool( t2 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zcl_lnt_iscope_data.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      t21 = t2.
      t19 = t21->data_56cc.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      t27 = t19->vars->get( p0 = t7 ).
      IF xsdbool( t27 IS BOUND ) = abap_true.
        result = t19->vars->get( p0 = t7 ).
        RETURN.
      ENDIF.
      t2 = t2->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_write_reference.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_scope_data.
    t4 = me.
    t2 = t4->data_56cc->references.
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
      t14 = xsdbool( t8->reference_type = |Write To| ).
      t13 = t14.
      IF t14 = abap_true.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        t25 = t8->position_7b94->token.
        t13 = t25->start->equals( i_p = t1 ).
      ENDIF.
      IF t13 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
        t31 = t8->resolved.
        IF xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_typed_identifier ) = abap_true.
          DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
          t35 ?= t8->resolved.
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
    DATA t4 TYPE REF TO zcl_lnt_scope_data.
    t4 = me.
    t2 = t4->data_56cc->references.
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
      t15 = xsdbool( t8->reference_type = |Table| ).
      t14 = t15.
      IF t15 = abap_true.
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        t26 = t8->position_7b94->token.
        t14 = t26->start->equals( i_p = t1 ).
      ENDIF.
      t13 = t14.
      IF t14 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
        t32 = t8->resolved.
        t13 = xsdbool( t32 IS BOUND ).
      ENDIF.
      IF t13 = abap_true.
        DATA t42 TYPE string.
        t42 = t8->resolved->token->str.
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
        ELSE.
          IF t53 > t54 - t52.
            t53 = t54 - t52.
          ENDIF.
          t50 = t51+t52(t53).
        ENDIF.
        IF xsdbool( t50 = |!| ) = abap_true.
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
          ELSE.
            IF t62 > t65 - t61.
              t62 = t65 - t61.
            ENDIF.
            t59 = t57+t61(t62).
          ENDIF.
          t42 = t59.
        ENDIF.
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t42.
        result = t67.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_table_void_reference.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_scope_data.
    t4 = me.
    t2 = t4->data_56cc->references.
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
      t14 = xsdbool( t8->reference_type = |Table (Void)| ).
      t13 = t14.
      IF t14 = abap_true.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        t25 = t8->position_7b94->token.
        t13 = t25->start->equals( i_p = t1 ).
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
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      IF xsdbool( xsdbool( t2 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t23 TYPE REF TO zcl_lnt_iscope_data.
      DATA t24 TYPE REF TO zcl_lnt_scope_data.
      t24 = t2.
      t23 = t24->data_56cc.
      t21 = t23->vars->get( p0 = t7 ).
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      IF xsdbool( xsdbool( t21 IS INITIAL ) = abap_false ) = abap_true.
        result = t2->identifier.
        RETURN.
      ENDIF.
      t2 = t2->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_parent.
    result = CAST zcl_lnt_spaghetti_scope_node( me->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ) ).

  ENDMETHOD.

  METHOD add_child.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 ?= i_node.
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
