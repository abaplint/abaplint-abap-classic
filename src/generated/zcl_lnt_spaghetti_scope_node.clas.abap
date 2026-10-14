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
    METHODS find_deferred IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_ca978742.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_spaghetti_scope_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_iscope_identifier( i_identifier ).
    DATA(t2) = CAST zcl_lnt_spaghetti_scope_node( i_parent ).
    super->constructor( ).
    DATA(t3) = CAST zcl_lnt_iscope_identifier( t1 ).
    me->identifier = t3.
    DATA(t4) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
    me->parent = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->children = t5.
  ENDMETHOD.
  METHOD debug_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/spaghetti_scope.ts:37|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd.
    DATA(t1) = CAST zcl_lnt_spaghetti_scope_node( me->parent ).
    result = t1.

  ENDMETHOD.
  METHOD a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd.
    DATA(t1) = CAST zcl_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->children ).
    DATA(t3) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
    APPEND t3 TO t2->items.
  ENDMETHOD.
  METHOD g_c_i_s_a_5_s_s_sc_ts_sp_sc_nd.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->children ).
    result = t1.

  ENDMETHOD.
  METHOD g_f_c_i_s_a_5_s_s_s_t_sp_sc_nd.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t1.
    DATA(t2) = abap_true.
    IF t2 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->children ).
      DATA t5 TYPE REF TO object.
      CLEAR t5.
      READ TABLE t4->items INDEX 1 INTO t5.
      t3 ?= t5.
      t1 = t3.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t6.
      t1 = t6.
    ENDIF.
    result = t1.

  ENDMETHOD.
  METHOD get_identifier.
    DATA(t1) = CAST zcl_lnt_iscope_identifier( me->identifier ).
    result = t1.

  ENDMETHOD.
  METHOD calc_coverage.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/spaghetti_scope.ts:68|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD set_end.
    DATA(t1) = CAST zcl_lnt_position( i_end ).
    DATA(t2) = CAST zcl_lnt_iscope_identifier( me->identifier ).
    DATA t3 TYPE REF TO zcl_lnt_position.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = CAST zcl_lnt_position( t1 ).
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zcl_lnt_position.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    t2->end = t3.
  ENDMETHOD.
  METHOD find_deferred.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( me ).
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
      DATA(t9) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t8 = t9.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      t10 = t11.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = CAST zcl_lnt_spaghetti_scope_node( t8 ).
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
      DATA(t21) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t20 = t21.
      t19 = t20.
      DATA t22 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t23) = CAST zcl_lnt_scope_data( t19 ).
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
      DATA(t29) = CAST zcl_lnt_deferred_information( t15 ).
      t28 = t29.
      t27 = xsdbool( t28 IS BOUND ).
      IF t27 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_shape_ca978742.
        CLEAR t30.
        DATA(t31) = abap_true.
        IF t31 = abap_true.
          DATA t32 TYPE REF TO zcl_lnt_shape_ca978742.
          CLEAR t32.
          DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t33.
          DATA(t34) = abap_true.
          IF t34 = abap_true.
            DATA t35 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t36 TYPE REF TO zcl_lnt_abstract_token.
            DATA t37 TYPE REF TO zcl_lnt_deferred_information.
            DATA(t38) = CAST zcl_lnt_deferred_information( t15 ).
            t37 = t38.
            t36 = t37->token.
            DATA t39 TYPE string.
            DATA t40 TYPE REF TO zcl_lnt_iscope_identifier.
            DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t42) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
            t41 = t42.
            t40 = t41->identifier.
            t39 = t40->filename.
            t35 = NEW zcl_lnt_fi_identifier( i_token = t36 i_filename = t39 ).
            t33 = t35.
          ELSE.
            DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t43.
            t33 = t43.
          ENDIF.
          DATA t44 TYPE string.
          DATA t45 TYPE REF TO zcl_lnt_deferred_information.
          DATA(t46) = CAST zcl_lnt_deferred_information( t15 ).
          t45 = t46.
          t44 = t45->oo_type.
          t32 = NEW zcl_lnt_shape_ca978742( i_id = t33 i_oo_type = t44 ).
          t30 = t32.
        ELSE.
          DATA t47 TYPE REF TO zcl_lnt_shape_ca978742.
          CLEAR t47.
          t30 = t47.
        ENDIF.
        result = t30.
        RETURN.
      ENDIF.
      DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t49 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t50) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t49 = t50.
      t48 = t49->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t48.
    ENDDO.
    DATA t51 TYPE REF TO zcl_lnt_shape_ca978742.
    CLEAR t51.
    result = t51.

  ENDMETHOD.
  METHOD find_class_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( me ).
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
      DATA(t13) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
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
      DATA(t25) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t24 = t25.
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t27) = CAST zcl_lnt_scope_data( t23 ).
      t26 = t27->data_56cc.
      t22 = t26.
      t21 = t22->cdefs.
      DATA(t28) = t7.
      t20 = t21->get( p0 = t28 ).
      t19 = t20.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zif_lnt_class_definition.
      DATA(t31) = CAST zif_lnt_class_definition( t19 ).
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      t32 = t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = CAST zif_lnt_class_definition( t30 ).
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
          DATA(t40) = CAST zif_lnt_class_definition( t19 ).
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
      DATA(t44) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t43 = t44.
      t42 = t43->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t42.
    ENDDO.
    DATA t45 TYPE REF TO zif_lnt_class_definition.
    CLEAR t45.
    result = t45.

  ENDMETHOD.
  METHOD list_class_definitions.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/spaghetti_scope.ts:111|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD list_interface_definitions.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/spaghetti_scope.ts:123|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD find_form_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( me ).
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
      DATA(t13) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
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
      DATA(t23) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t22 = t23.
      t21 = t22.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t25) = CAST zcl_lnt_scope_data( t21 ).
      t24 = t25->data_56cc.
      t20 = t24.
      t19 = t20->forms.
      DATA t26 TYPE REF TO zif_lnt_form_definition.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      LOOP AT t19->items INTO t27.
        t26 ?= t27.
        DATA(t28) = VALUE abap_bool( ).
        DATA t29 TYPE string.
        DATA t30 TYPE string.
        DATA(t31) = CAST zif_lnt_form_definition( t26 ).
        t30 = t31->get_name( ).
        DATA(t32) = strlen( t30 ).
        t29 = t30.
        IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t29 TO UPPER CASE.
        ELSE.
          t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
        ENDIF.
        DATA(t33) = t7.
        t28 = xsdbool( t29 = t33 ).
        IF t28 = abap_true.
          DATA t34 TYPE REF TO zif_lnt_form_definition.
          CLEAR t34.
          DATA(t35) = abap_true.
          IF t35 = abap_true.
            DATA(t36) = CAST zif_lnt_form_definition( t26 ).
            t34 = t36.
          ELSE.
            DATA t37 TYPE REF TO zif_lnt_form_definition.
            CLEAR t37.
            t34 = t37.
          ENDIF.
          result = t34.
          RETURN.
        ENDIF.
      ENDLOOP.
      DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t39 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t40) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t39 = t40.
      t38 = t39->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t38.
    ENDDO.
    DATA t41 TYPE REF TO zif_lnt_form_definition.
    CLEAR t41.
    result = t41.

  ENDMETHOD.
  METHOD find_interface_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( me ).
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
      DATA(t13) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
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
      DATA(t25) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t24 = t25.
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t27) = CAST zcl_lnt_scope_data( t23 ).
      t26 = t27->data_56cc.
      t22 = t26.
      t21 = t22->idefs.
      DATA(t28) = t7.
      t20 = t21->get( p0 = t28 ).
      t19 = t20.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE REF TO zif_lnt_interface_definition.
      DATA(t31) = CAST zif_lnt_interface_definition( t19 ).
      t30 = t31.
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        DATA t32 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA t34 TYPE REF TO zif_lnt_interface_definition.
          DATA(t35) = CAST zif_lnt_interface_definition( t19 ).
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
      DATA(t39) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
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
      DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( me ).
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
      DATA(t13) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
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
      DATA(t25) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t24 = t25.
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t27) = CAST zcl_lnt_scope_data( t23 ).
      t26 = t27->data_56cc.
      t22 = t26.
      t21 = t22->types.
      DATA(t28) = t7.
      t20 = t21->get( p0 = t28 ).
      t19 = t20.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t31) = CAST zcl_lnt_typed_identifier( t19 ).
      t30 = t31.
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t35) = CAST zcl_lnt_typed_identifier( t19 ).
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
      DATA(t39) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
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
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/spaghetti_scope.ts:181|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_variable.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( me ).
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
      DATA(t13) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
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
      DATA(t23) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t22 = t23.
      t21 = t22.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t25) = CAST zcl_lnt_scope_data( t21 ).
      t24 = t25->data_56cc.
      t20 = t24.
      t19 = t20.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t28 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA(t29) = CAST zcl_lnt_iscope_data( t19 ).
      t28 = t29->vars.
      DATA(t30) = t7.
      t27 = t28->get( p0 = t30 ).
      t26 = xsdbool( t27 IS BOUND ).
      IF t26 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t32 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA(t33) = CAST zcl_lnt_iscope_data( t19 ).
        t32 = t33->vars.
        DATA(t34) = t7.
        t31 = t32->get( p0 = t34 ).
        result = t31.
        RETURN.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t37) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t36 = t37.
      t35 = t36->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t35.
    ENDDO.
    DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t38.
    result = t38.

  ENDMETHOD.
  METHOD find_write_reference.
    DATA(t1) = CAST zcl_lnt_position( i_pos ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/spaghetti_scope.ts:211|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_table_reference.
    DATA(t1) = CAST zcl_lnt_position( i_pos ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/spaghetti_scope.ts:224|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_table_void_reference.
    DATA(t1) = CAST zcl_lnt_position( i_pos ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/spaghetti_scope.ts:236|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_scope_for_variable.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/spaghetti_scope.ts:248|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_parent.
    DATA(t1) = CAST zcl_lnt_spaghetti_scope_node( me->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ) ).
    result = t1.

  ENDMETHOD.
  METHOD add_child.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t3) = CAST zif_lnt_spaghetti_scope_node( t1 ).
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
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d829_3c9ea8646df0.
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
