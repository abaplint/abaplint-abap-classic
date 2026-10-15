* TS: src/abap/5_syntax/spaghetti_scope.ts:264:1 SpaghettiScope
CLASS zcl_lnt_spaghetti_scope DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_spaghetti_scope.
    DATA node TYPE REF TO zcl_lnt_spaghetti_scope_node.
    METHODS constructor IMPORTING i_top TYPE REF TO zcl_lnt_spaghetti_scope_node.
    METHODS list_definitions IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_read_positions IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_write_positions IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS l_p_i_s_ab_5_sy_sp_sc_ts_sp_sc IMPORTING i_p TYPE REF TO zcl_lnt_position i_filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_spaghetti_scope_node.
    METHODS g_f_c_i_s_a_5_s_sp_sc_ts_sp_sc RETURNING VALUE(result) TYPE REF TO zcl_lnt_spaghetti_scope_node.
    METHODS g_t_i_s_ab_5_sy_sp_sc_ts_sp_sc RETURNING VALUE(result) TYPE REF TO zcl_lnt_spaghetti_scope_node.
    METHODS all_nodes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS lookup_position_traverse IMPORTING i_p TYPE REF TO zcl_lnt_position i_filename TYPE string i_node TYPE REF TO zcl_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_spaghetti_scope_node.
    METHODS lookup_position IMPORTING i_p TYPE REF TO zcl_lnt_position i_filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS get_first_child RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS get_top RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope_node.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_spaghetti_scope IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_top.
    DATA(t2) = t1.
    me->node = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `node`.
  ENDMETHOD.

  METHOD list_definitions.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->all_nodes( ) ).
    DATA t5 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t13 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t14) = t5.
      t13 = t14.
      DATA t15 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t16) = t13.
      t15 = t16->identifier.
      t12 = t15.
      t11 = t12->filename.
      DATA(t17) = t1.
      t10 = xsdbool( t11 = t17 ).
      IF t10 = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA t19 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA t20 TYPE REF TO zcl_lnt_iscope_data.
        DATA t21 TYPE REF TO zcl_lnt_scope_data.
        DATA(t22) = t5.
        t21 = t22.
        DATA t23 TYPE REF TO zcl_lnt_iscope_data.
        DATA(t24) = t21.
        t23 = t24->data_56cc.
        t20 = t23.
        t19 = t20->vars.
        t18 = t19.
        DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t26) = t18.
        t25 = t26->keys( ).
        DATA(t27) = VALUE string( ).
        t25->dense( ).
        DATA(t28) = VALUE i( ).
        DO.
          t25->load( ).
          IF t28 >= lines( t25->items ).
            EXIT.
          ENDIF.
          CLEAR t27.
          READ TABLE t25->items INDEX t28 + 1 INTO t27.
          IF t25->has( t28 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t28 = t28 + 1.
          DATA t29 TYPE abap_bool.
          DATA t30 TYPE string.
          DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t34) = t18.
          DATA(t35) = t27.
          t33 = t34->get( p0 = t35 ).
          t32 = t33.
          t31 = t32.
          DATA t36 TYPE string.
          DATA(t37) = t31.
          t36 = t37->filename.
          t30 = t36.
          DATA(t38) = t1.
          t29 = xsdbool( t30 = t38 ).
          IF t29 = abap_true.
            DATA(t39) = t2.
            DATA t40 TYPE REF TO zcl_lnt_iscope_variable.
            DATA t41 TYPE string.
            DATA(t42) = t27.
            t41 = t42.
            DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t44 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t46) = t18.
            DATA(t47) = t27.
            t45 = t46->get( p0 = t47 ).
            t44 = t45.
            t43 = t44.
            t40 = NEW zcl_lnt_iscope_variable( i_name = t41 i_identifier = t43 ).
            CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
            t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t48.
            IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t48 ).
            ENDIF.
            DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t49.
            IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t49 ).
            ENDIF.
            CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
            t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t50) = |name|.
            DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t51.
            IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
            ENDIF.
            DATA(t52) = |identifier|.
            DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t53.
            IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
            ENDIF.
            t39->load( ).
            APPEND t40 TO t39->items.
            t39->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA(t54) = t2.
    result = t54.

  ENDMETHOD.

  METHOD list_read_positions.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->all_nodes( ) ).
    DATA t5 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t13 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t14) = t5.
      t13 = t14.
      DATA t15 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t16) = t13.
      t15 = t16->identifier.
      t12 = t15.
      t11 = t12->filename.
      DATA(t17) = t1.
      t10 = xsdbool( t11 = t17 ).
      IF t10 = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t19 TYPE REF TO zcl_lnt_iscope_data.
        DATA t20 TYPE REF TO zcl_lnt_scope_data.
        DATA(t21) = t5.
        t20 = t21.
        DATA t22 TYPE REF TO zcl_lnt_iscope_data.
        DATA(t23) = t20.
        t22 = t23->data_56cc.
        t19 = t22.
        t18 = t19->references.
        DATA t24 TYPE REF TO zcl_lnt_ireference.
        CLEAR t24.
        DATA t25 TYPE REF TO object.
        CLEAR t25.
        DATA(t26) = VALUE i( ).
        DO.
          t18->load( ).
          IF t26 >= lines( t18->items ).
            EXIT.
          ENDIF.
          CLEAR t25.
          READ TABLE t18->items INDEX t26 + 1 INTO t25.
          t26 = t26 + 1.
          DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t27.
          CLEAR t24.
          IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t27 ?= t25.
            DATA t28 TYPE REF TO object.
            t28 = t27->as_ref( ).
            t24 ?= t28.
          ELSE.
            t24 ?= t25.
          ENDIF.
          DATA t29 TYPE abap_bool.
          DATA t30 TYPE abap_bool.
          DATA t31 TYPE string.
          DATA(t32) = t24.
          t31 = t32->reference_type.
          DATA(t33) = |Read From|.
          t30 = xsdbool( t31 = t33 ).
          t29 = t30.
          IF t30 = abap_true.
            DATA t34 TYPE abap_bool.
            DATA t35 TYPE string.
            DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t38) = t24.
            t37 = t38->position_7b94.
            t36 = t37.
            DATA t39 TYPE string.
            DATA(t40) = t36.
            t39 = t40->filename.
            t35 = t39.
            DATA(t41) = t1.
            t34 = xsdbool( t35 = t41 ).
            t29 = t34.
          ENDIF.
          IF t29 = abap_true.
            DATA(t42) = t2.
            DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t44) = t24.
            t43 = t44->position_7b94.
            t42->load( ).
            APPEND t43 TO t42->items.
            t42->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA(t45) = t2.
    result = t45.

  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->all_nodes( ) ).
    DATA t5 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t13 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t14) = t5.
      t13 = t14.
      DATA t15 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t16) = t13.
      t15 = t16->identifier.
      t12 = t15.
      t11 = t12->filename.
      DATA(t17) = t1.
      t10 = xsdbool( t11 = t17 ).
      IF t10 = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t19 TYPE REF TO zcl_lnt_iscope_data.
        DATA t20 TYPE REF TO zcl_lnt_scope_data.
        DATA(t21) = t5.
        t20 = t21.
        DATA t22 TYPE REF TO zcl_lnt_iscope_data.
        DATA(t23) = t20.
        t22 = t23->data_56cc.
        t19 = t22.
        t18 = t19->references.
        DATA t24 TYPE REF TO zcl_lnt_ireference.
        CLEAR t24.
        DATA t25 TYPE REF TO object.
        CLEAR t25.
        DATA(t26) = VALUE i( ).
        DO.
          t18->load( ).
          IF t26 >= lines( t18->items ).
            EXIT.
          ENDIF.
          CLEAR t25.
          READ TABLE t18->items INDEX t26 + 1 INTO t25.
          t26 = t26 + 1.
          DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t27.
          CLEAR t24.
          IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t27 ?= t25.
            DATA t28 TYPE REF TO object.
            t28 = t27->as_ref( ).
            t24 ?= t28.
          ELSE.
            t24 ?= t25.
          ENDIF.
          DATA t29 TYPE abap_bool.
          DATA t30 TYPE abap_bool.
          DATA t31 TYPE string.
          DATA(t32) = t24.
          t31 = t32->reference_type.
          DATA(t33) = |Write To|.
          t30 = xsdbool( t31 = t33 ).
          t29 = t30.
          IF t30 = abap_true.
            DATA t34 TYPE abap_bool.
            DATA t35 TYPE string.
            DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t38) = t24.
            t37 = t38->position_7b94.
            t36 = t37.
            DATA t39 TYPE string.
            DATA(t40) = t36.
            t39 = t40->filename.
            t35 = t39.
            DATA(t41) = t1.
            t34 = xsdbool( t35 = t41 ).
            t29 = t34.
          ENDIF.
          IF t29 = abap_true.
            DATA(t42) = t2.
            DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t44) = t24.
            t43 = t44->position_7b94.
            t42->load( ).
            APPEND t43 TO t42->items.
            t42->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA(t45) = t2.
    result = t45.

  ENDMETHOD.

  METHOD l_p_i_s_ab_5_sy_sp_sc_ts_sp_sc.
    DATA(t1) = i_p.
    DATA(t2) = i_filename.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_position.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ELSEIF t17->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t18.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t20 TYPE REF TO zcl_lnt_position.
    DATA(t21) = t1.
    t20 = t21.
    DATA t22 TYPE string.
    DATA(t23) = t2.
    t22 = t23->value.
    DATA(t24) = me->node.
    t19 = me->lookup_position_traverse( i_p = t20 i_filename = t22 i_node = t24 ).
    result = t19.

  ENDMETHOD.

  METHOD g_f_c_i_s_a_5_s_sp_sc_ts_sp_sc.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t2) = me->node.
    t1 = t2->g_f_c_i_s_a_5_s_s_s_t_sp_sc_nd( ).
    result = t1.

  ENDMETHOD.

  METHOD g_t_i_s_ab_5_sy_sp_sc_ts_sp_sc.
    DATA(t1) = me->node.
    result = t1.

  ENDMETHOD.

  METHOD all_nodes.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = t5.
    DATA(t8) = me->node.
    t7->load( ).
    APPEND t8 TO t7->items.
    t7->save( ).
    DATA(t9) = t5.
    t4 = t9.
    t3 = t4.
    DO.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE i.
      DATA(t12) = t3.
      t12->load( ).
      t11 = lines( t12->items ).
      DATA(t13) = 0.
      t10 = xsdbool( t11 > t13 ).
      IF t10 = abap_false.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t16.
      DATA(t17) = t3.
      DATA t18 TYPE REF TO object.
      t18 = t17->pop( ).
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t18.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t18.
      ENDIF.
      t15 = t16.
      t14 = t15.
      DATA(t21) = t1.
      DATA(t22) = t14.
      t21->load( ).
      APPEND t22 TO t21->items.
      t21->save( ).
      DATA(t23) = VALUE i( ).
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t25) = t14.
      t24 = t25->g_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      DATA t26 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      DATA(t28) = VALUE i( ).
      DO.
        t24->load( ).
        IF t28 >= lines( t24->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t24->items INDEX t28 + 1 INTO t27.
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
        DATA(t31) = t3.
        DATA(t32) = t26.
        t31->load( ).
        APPEND t32 TO t31->items.
        t31->save( ).
      ENDDO.
      DATA t33 TYPE i.
      DATA(t34) = t3.
      t34->load( ).
      t33 = lines( t34->items ).
      t23 = t33.
    ENDDO.
    DATA(t35) = t1.
    result = t35.

  ENDMETHOD.

  METHOD lookup_position_traverse.
    DATA(t1) = i_p.
    DATA(t2) = i_filename.
    DATA(t3) = i_node.
    DATA t4 TYPE REF TO zcl_lnt_irange.
    DATA t5 TYPE REF TO zcl_lnt_irange.
    DATA(t6) = t3.
    t5 = t6->calc_coverage( ).
    t4 = t5.
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE string.
    DATA t10 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t12) = t3.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t14) = t11.
    t13 = t14->identifier.
    t10 = t13.
    t9 = t10->filename.
    DATA(t15) = t2.
    t8 = xsdbool( t9 = t15 ).
    t7 = t8.
    IF t8 = abap_true.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zcl_lnt_position.
      DATA(t19) = t1.
      t18 = t19.
      DATA t20 TYPE REF TO zcl_lnt_position.
      DATA t21 TYPE REF TO zcl_lnt_position.
      DATA(t22) = t4.
      t21 = t22->start.
      t20 = t21.
      DATA t23 TYPE REF TO zcl_lnt_position.
      DATA t24 TYPE REF TO zcl_lnt_position.
      DATA(t25) = t4.
      t24 = t25->end.
      t23 = t24.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE abap_bool.
      DATA(t28) = t18.
      DATA(t29) = t20.
      t27 = t28->is_after( i_p = t29 ).
      t26 = t27.
      IF t27 = abap_true.
        DATA(t30) = VALUE abap_bool( ).
        DATA t31 TYPE REF TO zcl_lnt_position.
        DATA(t32) = t23.
        t31 = t32.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE f.
        DATA(t36) = t18.
        t35 = t36->row.
        DATA t37 TYPE f.
        DATA(t38) = t31.
        t37 = t38->row.
        t34 = xsdbool( t35 < t37 ).
        t33 = t34.
        IF t34 = abap_false.
          DATA t39 TYPE abap_bool.
          DATA t40 TYPE abap_bool.
          DATA t41 TYPE f.
          DATA(t42) = t18.
          t41 = t42->row.
          DATA t43 TYPE f.
          DATA(t44) = t31.
          t43 = t44->row.
          t40 = xsdbool( t41 = t43 ).
          t39 = t40.
          IF t40 = abap_true.
            DATA t45 TYPE abap_bool.
            DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t47) = t18.
            t46 = t47->col.
            DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t49) = t31.
            t48 = t49->col.
            t45 = zlnt_runtime_numb_290eb04a9758=>compare( left = t46 right = t48 op = `<` ).
            t39 = t45.
          ENDIF.
          t33 = t39.
        ENDIF.
        t30 = t33.
        t26 = t30.
      ENDIF.
      t17 = t26.
      DATA(t50) = abap_false.
      t16 = xsdbool( t17 = t50 ).
      t7 = t16.
    ENDIF.
    IF t7 = abap_true.
      DATA t51 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t51.
      result = t51.
      RETURN.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t53) = t3.
    t52 = t53->g_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t54.
    DATA t55 TYPE REF TO object.
    CLEAR t55.
    DATA(t56) = VALUE i( ).
    DO.
      t52->load( ).
      IF t56 >= lines( t52->items ).
        EXIT.
      ENDIF.
      CLEAR t55.
      READ TABLE t52->items INDEX t56 + 1 INTO t55.
      t56 = t56 + 1.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      CLEAR t54.
      IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t57 ?= t55.
        DATA t58 TYPE REF TO object.
        t58 = t57->as_ref( ).
        t54 ?= t58.
      ELSE.
        t54 ?= t55.
      ENDIF.
      DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t60 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t61) = t1.
      DATA(t62) = t2.
      DATA(t63) = t54.
      t60 = me->lookup_position_traverse( i_p = t61 i_filename = t62 i_node = t63 ).
      t59 = t60.
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t66) = t59.
      t65 = t66.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      t67 = t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t65.
      IF t71 IS INITIAL.
        t70 = abap_true.
      ENDIF.
      t69 = xsdbool( t70 = abap_false ).
      t64 = t69.
      IF t64 = abap_true.
        DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t72.
        DATA(t73) = abap_true.
        IF t73 = abap_true.
          DATA t74 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t75) = t59.
          t74 = t75.
          t72 = t74.
        ELSE.
          DATA t76 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t76.
          t72 = t76.
        ENDIF.
        result = t72.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t77 TYPE abap_bool.
    DATA t78 TYPE abap_bool.
    DATA t79 TYPE string.
    DATA t80 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t82) = t3.
    t81 = t82.
    DATA t83 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t84) = t81.
    t83 = t84->identifier.
    t80 = t83.
    t79 = t80->filename.
    DATA(t85) = t2.
    t78 = xsdbool( t79 = t85 ).
    t77 = t78.
    IF t78 = abap_true.
      DATA(t86) = VALUE abap_bool( ).
      DATA t87 TYPE REF TO zcl_lnt_position.
      DATA(t88) = t1.
      t87 = t88.
      DATA t89 TYPE REF TO zcl_lnt_position.
      DATA t90 TYPE REF TO zcl_lnt_position.
      DATA(t91) = t4.
      t90 = t91->start.
      t89 = t90.
      DATA t92 TYPE REF TO zcl_lnt_position.
      DATA t93 TYPE REF TO zcl_lnt_position.
      DATA(t94) = t4.
      t93 = t94->end.
      t92 = t93.
      DATA t95 TYPE abap_bool.
      DATA t96 TYPE abap_bool.
      DATA(t97) = t87.
      DATA(t98) = t89.
      t96 = t97->is_after( i_p = t98 ).
      t95 = t96.
      IF t96 = abap_true.
        DATA(t99) = VALUE abap_bool( ).
        DATA t100 TYPE REF TO zcl_lnt_position.
        DATA(t101) = t92.
        t100 = t101.
        DATA t102 TYPE abap_bool.
        DATA t103 TYPE abap_bool.
        DATA t104 TYPE f.
        DATA(t105) = t87.
        t104 = t105->row.
        DATA t106 TYPE f.
        DATA(t107) = t100.
        t106 = t107->row.
        t103 = xsdbool( t104 < t106 ).
        t102 = t103.
        IF t103 = abap_false.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE abap_bool.
          DATA t110 TYPE f.
          DATA(t111) = t87.
          t110 = t111->row.
          DATA t112 TYPE f.
          DATA(t113) = t100.
          t112 = t113->row.
          t109 = xsdbool( t110 = t112 ).
          t108 = t109.
          IF t109 = abap_true.
            DATA t114 TYPE abap_bool.
            DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t116) = t87.
            t115 = t116->col.
            DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t118) = t100.
            t117 = t118->col.
            t114 = zlnt_runtime_numb_290eb04a9758=>compare( left = t115 right = t117 op = `<` ).
            t108 = t114.
          ENDIF.
          t102 = t108.
        ENDIF.
        t99 = t102.
        t95 = t99.
      ENDIF.
      t86 = t95.
      t77 = t86.
    ENDIF.
    IF t77 = abap_true.
      DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t119.
      DATA(t120) = abap_true.
      IF t120 = abap_true.
        DATA(t121) = t3.
        t119 = t121.
      ELSE.
        DATA t122 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t122.
        t119 = t122.
      ENDIF.
      result = t119.
      RETURN.
    ENDIF.
    DATA t123 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t123.
    result = t123.

  ENDMETHOD.

  METHOD lookup_position.
    DATA(t1) = i_p.
    DATA(t2) = i_filename.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t4) = t1.
    DATA(t5) = t2.
    t3 = me->l_p_i_s_ab_5_sy_sp_sc_ts_sp_sc( i_p = t4 i_filename = t5 ).
    result = t3.

  ENDMETHOD.

  METHOD get_first_child.
    DATA(t1) = CAST zcl_lnt_spaghetti_scope_node( me->g_f_c_i_s_a_5_s_sp_sc_ts_sp_sc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_top.
    DATA(t1) = CAST zcl_lnt_spaghetti_scope_node( me->g_t_i_s_ab_5_sy_sp_sc_ts_sp_sc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d852_032afa29edf8.
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope~list_definitions.
    result = me->list_definitions( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope~list_read_positions.
    result = me->list_read_positions( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope~list_write_positions.
    result = me->list_write_positions( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope~lookup_position.
    result = me->lookup_position( i_p = i_p i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope~get_top.
    result = me->get_top( ).
  ENDMETHOD.

  METHOD zif_lnt_spaghetti_scope~get_first_child.
    result = me->get_first_child( ).
  ENDMETHOD.
ENDCLASS.
