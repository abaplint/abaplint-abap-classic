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
    DATA(t3) = t1.
    me->identifier = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `identifier`.
    DATA(t4) = t2.
    me->parent = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parent`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->children = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `children`.
  ENDMETHOD.

  METHOD debug_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/spaghetti_scope.ts:37|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd.
    DATA(t1) = me->parent.
    result = t1.

  ENDMETHOD.

  METHOD a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd.
    DATA(t1) = i_node.
    DATA(t2) = me->children.
    DATA(t3) = t1.
    t2->load( ).
    APPEND t3 TO t2->items.
    t2->save( ).
  ENDMETHOD.

  METHOD g_c_i_s_a_5_s_s_sc_ts_sp_sc_nd.
    DATA(t1) = me->children.
    result = t1.

  ENDMETHOD.

  METHOD g_f_c_i_s_a_5_s_s_s_t_sp_sc_nd.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t1.
    DATA(t2) = abap_true.
    IF t2 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t3.
      DATA(t4) = me->children.
      DATA t5 TYPE REF TO object.
      CLEAR t5.
      t4->load( ).
      CLEAR t5.
      READ TABLE t4->items INDEX 1 INTO t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t5.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t5.
      ENDIF.
      t1 = t3.
    ELSE.
      DATA t8 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t8.
      t1 = t8.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_identifier.
    DATA(t1) = me->identifier.
    result = t1.

  ENDMETHOD.

  METHOD calc_coverage.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_position.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_position.
    CLEAR t3.
    DATA(t4) = me->identifier.
    t3 = t4->end.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
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
      DATA t9 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t9.
      DATA t10 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      DATA(t12) = abap_true.
      IF t12 = abap_true.
        DATA(t13) = |internal error, caclCoverage|.
        DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t14->has = abap_true.
        t14->value = t13.
        t11 = t14.
      ELSE.
        DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t15.
        t11 = t15.
      ENDIF.
      t10 = NEW zcx_lnt_assert_error( i_message_26cb = t11 ).
      t9 = NEW #( ).
      t9->payload = t10.
      CLEAR t9->source_value.
      IF t10 IS BOUND.
        DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t16.
        DATA t17 TYPE REF TO object.
        CLEAR t17.
        CLEAR t16.
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
      ENDIF.
      RAISE EXCEPTION t9.
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_irange.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_position.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_position.
    CLEAR t20.
    DATA(t21) = me->identifier.
    t20 = t21->start.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_position.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_position.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_position.
    CLEAR t24.
    DATA(t25) = me->identifier.
    t24 = t25->end.
    t23 = t24.
    t22 = t23.
    t18 = NEW zcl_lnt_irange( i_start = t19 i_end = t22 ).
    CREATE OBJECT t18->zlnt_view_ownkeys_b0e8086400eb.
    t18->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t18->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t18->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t18->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t18->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t18->zlnt_json_ownkeys_70e5fd461788.
    t18->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t28) = |start|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t18->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = |end|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t18->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    result = t18.

  ENDMETHOD.

  METHOD set_end.
    DATA(t1) = i_end.
    DATA(t2) = me->identifier.
    DATA t3 TYPE REF TO zcl_lnt_position.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = t1.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_position.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2->end = t3.
    DELETE t2->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t7 ).
    ENDIF.
    DATA(t8) = |end|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t8 p1 = t9 ).
    ENDIF.
  ENDMETHOD.

  METHOD find_deferred.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = me.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2 = t3.
    DO.
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t9) = t2.
      t8 = t9.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      t10 = t11.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = t8.
      IF t14 IS INITIAL.
        t13 = abap_true.
      ENDIF.
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
      DATA t20 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t21) = t2.
      t20 = t21.
      t19 = t20.
      DATA t22 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t23) = t19.
      t22 = t23->data_56cc.
      t18 = t22.
      t17 = t18->deferred.
      DATA t24 TYPE string.
      DATA(t25) = t1.
      DATA(t26) = strlen( t25 ).
      t24 = t25.
      IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t24 TO UPPER CASE.
      ELSE.
        t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
      ENDIF.
      t16 = t17->get( p0 = t24 ).
      t15 = t16.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE REF TO zcl_lnt_deferred_information.
      DATA(t29) = t15.
      t28 = t29.
      t27 = xsdbool( t28 IS BOUND ).
      IF t27 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t30.
        DATA(t31) = abap_true.
        IF t31 = abap_true.
          DATA t32 TYPE REF TO zcl_lnt_shape_59e28496.
          CLEAR t32.
          DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t33.
          DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t34.
          DATA(t35) = abap_true.
          IF t35 = abap_true.
            DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t37 TYPE REF TO zcl_lnt_abstract_token.
            DATA t38 TYPE REF TO zcl_lnt_deferred_information.
            DATA(t39) = t15.
            t38 = t39.
            t37 = t38->token.
            DATA t40 TYPE string.
            DATA t41 TYPE REF TO zcl_lnt_iscope_identifier.
            DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t43) = t2.
            t42 = t43.
            t41 = t42->identifier.
            t40 = t41->filename.
            t36 = NEW zcl_lnt_fi_identifier( i_token = t37 i_filename = t40 ).
            t34 = t36.
          ELSE.
            DATA t44 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t44.
            t34 = t44.
          ENDIF.
          t33 = t34.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t45.
          DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t46.
          DATA(t47) = abap_true.
          IF t47 = abap_true.
            DATA t48 TYPE string.
            DATA t49 TYPE REF TO zcl_lnt_deferred_information.
            DATA(t50) = t15.
            t49 = t50.
            t48 = t49->oo_type.
            DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t51->has = abap_true.
            t51->value = t48.
            t46 = t51.
          ELSE.
            DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t52.
            t46 = t52.
          ENDIF.
          t45 = t46.
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t54.
          t53 = t54.
          t32 = NEW zcl_lnt_shape_59e28496( i_id = t33 i_oo_type = t45 i_rtti_name = t53 ).
          CREATE OBJECT t32->zlnt_view_ownkeys_b0e8086400eb.
          t32->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t55.
          IF t32->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t32->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t55 ).
          ENDIF.
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
          IF t32->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t32->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
          ENDIF.
          DATA(t59) = |ooType|.
          DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t60.
          IF t32->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t32->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
          ENDIF.
          t30 = t32.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_shape_59e28496.
          CLEAR t61.
          t30 = t61.
        ENDIF.
        result = t30.
        RETURN.
      ENDIF.
      DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t64) = t2.
      t63 = t64.
      t62 = t63->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t62.
    ENDDO.
    DATA t65 TYPE REF TO zcl_lnt_shape_59e28496.
    CLEAR t65.
    result = t65.

  ENDMETHOD.

  METHOD find_class_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = me.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t9) = t1.
    DATA(t10) = strlen( t9 ).
    t8 = t9.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t12.
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
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
      DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t25) = t2.
      t24 = t25.
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t27) = t23.
      t26 = t27->data_56cc.
      t22 = t26.
      t21 = t22->cdefs.
      DATA(t28) = t7.
      t20 = t21->get( p0 = t28 ).
      t19 = t20.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zif_lnt_class_definition.
      DATA(t31) = t19.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      t32 = t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = t30.
      IF t36 IS INITIAL.
        t35 = abap_true.
      ENDIF.
      t34 = xsdbool( t35 = abap_false ).
      t29 = t34.
      IF t29 = abap_true.
        DATA t37 TYPE REF TO zif_lnt_class_definition.
        CLEAR t37.
        DATA(t38) = abap_true.
        IF t38 = abap_true.
          DATA t39 TYPE REF TO zif_lnt_class_definition.
          DATA(t40) = t19.
          t39 = t40.
          t37 = t39.
        ELSE.
          DATA t41 TYPE REF TO zif_lnt_class_definition.
          CLEAR t41.
          t37 = t41.
        ENDIF.
        result = t37.
        RETURN.
      ENDIF.
      DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t44) = t2.
      t43 = t44.
      t42 = t43->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t42.
    ENDDO.
    DATA t45 TYPE REF TO zif_lnt_class_definition.
    CLEAR t45.
    result = t45.

  ENDMETHOD.

  METHOD list_class_definitions.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA(t4) = me.
      t2 = t4.
    ELSE.
      DATA t5 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t5.
      t2 = t5.
    ENDIF.
    t1 = t2.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DO.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t10) = t1.
      t9 = t10.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      t11 = t12.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t9.
      IF t15 IS INITIAL.
        t14 = abap_true.
      ENDIF.
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
      DATA t22 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t23) = t1.
      t22 = t23.
      t21 = t22.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t25) = t21.
      t24 = t25->data_56cc.
      t20 = t24.
      t19 = t20->cdefs.
      t18 = t19.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t27.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t29) = t18.
      t28 = t29->keys( ).
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
        DATA(t32) = t26.
        DATA t33 TYPE REF TO zif_lnt_class_definition.
        DATA t34 TYPE REF TO zif_lnt_class_definition.
        DATA(t35) = t18.
        DATA(t36) = t30.
        t34 = t35->get( p0 = t36 ).
        t33 = t34.
        t32->load( ).
        APPEND t33 TO t32->items.
        t32->save( ).
      ENDDO.
      DATA(t37) = t26.
      t17 = t37.
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
        DATA(t43) = t6.
        DATA(t44) = t38.
        t43->load( ).
        APPEND t44 TO t43->items.
        t43->save( ).
      ENDDO.
      DATA t45 TYPE i.
      DATA(t46) = t6.
      t46->load( ).
      t45 = lines( t46->items ).
      t16 = t45.
      DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t49) = t1.
      t48 = t49.
      t47 = t48->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t47.
    ENDDO.
    DATA(t50) = t6.
    result = t50.

  ENDMETHOD.

  METHOD list_interface_definitions.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA(t4) = me.
      t2 = t4.
    ELSE.
      DATA t5 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t5.
      t2 = t5.
    ENDIF.
    t1 = t2.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DO.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t10) = t1.
      t9 = t10.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      t11 = t12.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t9.
      IF t15 IS INITIAL.
        t14 = abap_true.
      ENDIF.
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
      DATA t22 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t23) = t1.
      t22 = t23.
      t21 = t22.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t25) = t21.
      t24 = t25->data_56cc.
      t20 = t24.
      t19 = t20->idefs.
      t18 = t19.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t27.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t29) = t18.
      t28 = t29->keys( ).
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
        DATA(t32) = t26.
        DATA t33 TYPE REF TO zif_lnt_interface_definition.
        DATA t34 TYPE REF TO zif_lnt_interface_definition.
        DATA(t35) = t18.
        DATA(t36) = t30.
        t34 = t35->get( p0 = t36 ).
        t33 = t34.
        t32->load( ).
        APPEND t33 TO t32->items.
        t32->save( ).
      ENDDO.
      DATA(t37) = t26.
      t17 = t37.
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
        DATA(t43) = t6.
        DATA(t44) = t38.
        t43->load( ).
        APPEND t44 TO t43->items.
        t43->save( ).
      ENDDO.
      DATA t45 TYPE i.
      DATA(t46) = t6.
      t46->load( ).
      t45 = lines( t46->items ).
      t16 = t45.
      DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t49) = t1.
      t48 = t49.
      t47 = t48->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t47.
    ENDDO.
    DATA(t50) = t6.
    result = t50.

  ENDMETHOD.

  METHOD find_form_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = me.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t9) = t1.
    DATA(t10) = strlen( t9 ).
    t8 = t9.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t12.
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zcl_lnt_iscope_data.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      DATA t22 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t23) = t2.
      t22 = t23.
      t21 = t22.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t25) = t21.
      t24 = t25->data_56cc.
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
        DATA(t34) = t26.
        t33 = t34->get_name( ).
        DATA(t35) = strlen( t33 ).
        t32 = t33.
        IF t32 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t32 TO UPPER CASE.
        ELSE.
          t32 = zlnt_runtime_uppe_91169605024d=>full( t32 ).
        ENDIF.
        DATA(t36) = t7.
        t31 = xsdbool( t32 = t36 ).
        IF t31 = abap_true.
          DATA t37 TYPE REF TO zif_lnt_form_definition.
          CLEAR t37.
          DATA(t38) = abap_true.
          IF t38 = abap_true.
            DATA(t39) = t26.
            t37 = t39.
          ELSE.
            DATA t40 TYPE REF TO zif_lnt_form_definition.
            CLEAR t40.
            t37 = t40.
          ENDIF.
          result = t37.
          RETURN.
        ENDIF.
      ENDDO.
      DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t43) = t2.
      t42 = t43.
      t41 = t42->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t41.
    ENDDO.
    DATA t44 TYPE REF TO zif_lnt_form_definition.
    CLEAR t44.
    result = t44.

  ENDMETHOD.

  METHOD find_interface_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = me.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t9) = t1.
    DATA(t10) = strlen( t9 ).
    t8 = t9.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t12.
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
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
      DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t25) = t2.
      t24 = t25.
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t27) = t23.
      t26 = t27->data_56cc.
      t22 = t26.
      t21 = t22->idefs.
      DATA(t28) = t7.
      t20 = t21->get( p0 = t28 ).
      t19 = t20.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE REF TO zif_lnt_interface_definition.
      DATA(t31) = t19.
      t30 = t31.
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        DATA t32 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA t34 TYPE REF TO zif_lnt_interface_definition.
          DATA(t35) = t19.
          t34 = t35.
          t32 = t34.
        ELSE.
          DATA t36 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t36.
          t32 = t36.
        ENDIF.
        result = t32.
        RETURN.
      ENDIF.
      DATA t37 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t39) = t2.
      t38 = t39.
      t37 = t38->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t37.
    ENDDO.
    DATA t40 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t40.
    result = t40.

  ENDMETHOD.

  METHOD find_type.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = me.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t9) = t1.
    DATA(t10) = strlen( t9 ).
    t8 = t9.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t12.
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
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
      DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t25) = t2.
      t24 = t25.
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t27) = t23.
      t26 = t27->data_56cc.
      t22 = t26.
      t21 = t22->types.
      DATA(t28) = t7.
      t20 = t21->get( p0 = t28 ).
      t19 = t20.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t31) = t19.
      t30 = t31.
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t35) = t19.
          t34 = t35.
          t32 = t34.
        ELSE.
          DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t36.
          t32 = t36.
        ENDIF.
        result = t32.
        RETURN.
      ENDIF.
      DATA t37 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t39) = t2.
      t38 = t39.
      t37 = t38->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t37.
    ENDDO.
    DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t40.
    result = t40.

  ENDMETHOD.

  METHOD find_extra_like_type.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = me.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t9) = t1.
    DATA(t10) = strlen( t9 ).
    t8 = t9.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t12.
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zcl_lnt_iscope_data.
      DATA t20 TYPE REF TO zcl_lnt_iscope_data.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      DATA t22 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t23) = t2.
      t22 = t23.
      t21 = t22.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t25) = t21.
      t24 = t25->data_56cc.
      t20 = t24.
      t19 = t20.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t28 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA(t29) = t19.
      t28 = t29->extra_like_types.
      DATA(t30) = t7.
      t27 = t28->get( p0 = t30 ).
      t26 = xsdbool( t27 IS BOUND ).
      IF t26 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t32 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA(t33) = t19.
        t32 = t33->extra_like_types.
        DATA(t34) = t7.
        t31 = t32->get( p0 = t34 ).
        result = t31.
        RETURN.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t37) = t2.
      t36 = t37.
      t35 = t36->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t35.
    ENDDO.
    DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t38.
    result = t38.

  ENDMETHOD.

  METHOD find_variable.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = me.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t9) = t1.
    DATA(t10) = strlen( t9 ).
    t8 = t9.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t12.
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zcl_lnt_iscope_data.
      DATA t20 TYPE REF TO zcl_lnt_iscope_data.
      DATA t21 TYPE REF TO zcl_lnt_scope_data.
      DATA t22 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t23) = t2.
      t22 = t23.
      t21 = t22.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t25) = t21.
      t24 = t25->data_56cc.
      t20 = t24.
      t19 = t20.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t28 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA(t29) = t19.
      t28 = t29->vars.
      DATA(t30) = t7.
      t27 = t28->get( p0 = t30 ).
      t26 = xsdbool( t27 IS BOUND ).
      IF t26 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t32 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA(t33) = t19.
        t32 = t33->vars.
        DATA(t34) = t7.
        t31 = t32->get( p0 = t34 ).
        result = t31.
        RETURN.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t37) = t2.
      t36 = t37.
      t35 = t36->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t35.
    ENDDO.
    DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t38.
    result = t38.

  ENDMETHOD.

  METHOD find_write_reference.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_iscope_data.
    DATA t4 TYPE REF TO zcl_lnt_scope_data.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t7) = t4.
    t6 = t7->data_56cc.
    t3 = t6.
    t2 = t3->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA(t16) = t8.
      t15 = t16->reference_type.
      DATA(t17) = |Write To|.
      t14 = xsdbool( t15 = t17 ).
      t13 = t14.
      IF t14 = abap_true.
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE REF TO zcl_lnt_position.
        DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t22) = t8.
        t21 = t22->position_7b94.
        t20 = t21.
        DATA t23 TYPE REF TO zcl_lnt_position.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t26) = t20.
        t25 = t26->token.
        t24 = t25.
        DATA t27 TYPE REF TO zcl_lnt_position.
        DATA(t28) = t24.
        t27 = t28->start.
        t23 = t27.
        t19 = t23.
        DATA(t29) = t1.
        t18 = t19->equals( i_p = t29 ).
        t13 = t18.
      ENDIF.
      IF t13 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t32) = t8.
        t31 = t32->resolved.
        t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_typed_identifier ).
        IF t30 = abap_true.
          DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t33.
          DATA(t34) = abap_true.
          IF t34 = abap_true.
            DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t37) = t8.
            t36 = t37->resolved.
            t35 ?= t36.
            t33 = t35.
          ELSE.
            DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t38.
            t33 = t38.
          ENDIF.
          result = t33.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t39.
    result = t39.

  ENDMETHOD.

  METHOD find_table_reference.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_iscope_data.
    DATA t4 TYPE REF TO zcl_lnt_scope_data.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t7) = t4.
    t6 = t7->data_56cc.
    t3 = t6.
    t2 = t3->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA(t17) = t8.
      t16 = t17->reference_type.
      DATA(t18) = |Table|.
      t15 = xsdbool( t16 = t18 ).
      t14 = t15.
      IF t15 = abap_true.
        DATA t19 TYPE abap_bool.
        DATA t20 TYPE REF TO zcl_lnt_position.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t23) = t8.
        t22 = t23->position_7b94.
        t21 = t22.
        DATA t24 TYPE REF TO zcl_lnt_position.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t27) = t21.
        t26 = t27->token.
        t25 = t26.
        DATA t28 TYPE REF TO zcl_lnt_position.
        DATA(t29) = t25.
        t28 = t29->start.
        t24 = t28.
        t20 = t24.
        DATA(t30) = t1.
        t19 = t20->equals( i_p = t30 ).
        t14 = t19.
      ENDIF.
      t13 = t14.
      IF t14 = abap_true.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t33) = t8.
        t32 = t33->resolved.
        t31 = xsdbool( t32 IS BOUND ).
        t13 = t31.
      ENDIF.
      IF t13 = abap_true.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        DATA(t35) = abap_true.
        IF t35 = abap_true.
          DATA(t36) = VALUE string( ).
          DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t40) = t8.
          t39 = t40->resolved.
          t38 = t39.
          t37 = t38.
          DATA(t41) = VALUE string( ).
          DATA t42 TYPE string.
          DATA t43 TYPE string.
          DATA t44 TYPE REF TO zcl_lnt_abstract_token.
          DATA t45 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t46) = t37.
          t45 = t46->token.
          t44 = t45.
          DATA t47 TYPE string.
          DATA(t48) = t44.
          t47 = t48->str.
          t43 = t47.
          t42 = t43.
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
            DATA(t58) = t42.
            t57 = t58.
            DATA(t59) = VALUE string( ).
            DATA(t60) = t57.
            DATA(t61) = 1.
            DATA t62 TYPE i.
            DATA(t63) = t57.
            DATA(t64) = strlen( t63 ).
            t62 = t64.
            DATA(t65) = strlen( t60 ).
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
              t59 = t60+t61(t62).
            ENDIF.
            t56 = t59.
            t42 = t56.
          ENDIF.
          DATA(t66) = t42.
          t41 = t66.
          t36 = t41.
          DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t67->has = abap_true.
          t67->value = t36.
          t34 = t67.
        ELSE.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          t34 = t68.
        ENDIF.
        result = t34.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t69.
    result = t69.

  ENDMETHOD.

  METHOD find_table_void_reference.
    DATA(t1) = i_pos.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_iscope_data.
    DATA t4 TYPE REF TO zcl_lnt_scope_data.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t7) = t4.
    t6 = t7->data_56cc.
    t3 = t6.
    t2 = t3->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA(t16) = t8.
      t15 = t16->reference_type.
      DATA(t17) = |Table (Void)|.
      t14 = xsdbool( t15 = t17 ).
      t13 = t14.
      IF t14 = abap_true.
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE REF TO zcl_lnt_position.
        DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t22) = t8.
        t21 = t22->position_7b94.
        t20 = t21.
        DATA t23 TYPE REF TO zcl_lnt_position.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t26) = t20.
        t25 = t26->token.
        t24 = t25.
        DATA t27 TYPE REF TO zcl_lnt_position.
        DATA(t28) = t24.
        t27 = t28->start.
        t23 = t27.
        t19 = t23.
        DATA(t29) = t1.
        t18 = t19->equals( i_p = t29 ).
        t13 = t18.
      ENDIF.
      IF t13 = abap_true.
        DATA(t30) = abap_true.
        result = t30.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t31) = abap_false.
    result = t31.

  ENDMETHOD.

  METHOD find_scope_for_variable.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = me.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA(t9) = t1.
    DATA(t10) = strlen( t9 ).
    t8 = t9.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t7 = t8.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t12.
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t22 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t23 TYPE REF TO zcl_lnt_iscope_data.
      DATA t24 TYPE REF TO zcl_lnt_scope_data.
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t26) = t2.
      t25 = t26.
      t24 = t25.
      DATA t27 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t28) = t24.
      t27 = t28->data_56cc.
      t23 = t27.
      t22 = t23->vars.
      DATA(t29) = t7.
      t21 = t22->get( p0 = t29 ).
      t20 = t21.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      t30 = t31.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t20.
      IF t34 IS INITIAL.
        t33 = abap_true.
      ENDIF.
      t32 = xsdbool( t33 = abap_false ).
      t19 = t32.
      IF t19 = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t35.
        DATA(t36) = abap_true.
        IF t36 = abap_true.
          DATA t37 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t39 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t40) = t2.
          t39 = t40.
          t38 = t39.
          DATA t41 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA(t42) = t38.
          t41 = t42->identifier.
          t37 = t41.
          t35 = t37.
        ELSE.
          DATA t43 TYPE REF TO zcl_lnt_iscope_identifier.
          CLEAR t43.
          t35 = t43.
        ENDIF.
        result = t35.
        RETURN.
      ENDIF.
      DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t46) = t2.
      t45 = t46.
      t44 = t45->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t44.
    ENDDO.
    DATA t47 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t47.
    result = t47.

  ENDMETHOD.

  METHOD get_parent.
    DATA(t1) = CAST zcl_lnt_spaghetti_scope_node( me->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD add_child.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t3) = t1.
    DATA t4 TYPE REF TO object.
    t4 = t3.
    t2 ?= t4.
    me->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t2 ).
  ENDMETHOD.

  METHOD get_children.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->g_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_first_child.
    DATA(t1) = CAST zcl_lnt_spaghetti_scope_node( me->g_f_c_i_s_a_5_s_s_s_t_sp_sc_nd( ) ).
    result = t1.

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
