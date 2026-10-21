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
    me->node = i_top.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `node`.
  ENDMETHOD.

  METHOD list_definitions.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->all_nodes( ) ).
    DATA t5 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t6 TYPE REF TO object.
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
      IF xsdbool( t5->identifier->filename = t1 ) = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA t21 TYPE REF TO zcl_lnt_scope_data.
        t21 = t5.
        t18 = t21->data_56cc->vars.
        DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t25 = t18->keys( ).
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
          DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
          t31 = t18->get( p0 = t27 ).
          IF xsdbool( t31->filename = t1 ) = abap_true.
            DATA t40 TYPE REF TO zcl_lnt_iscope_variable.
            t40 = NEW zcl_lnt_iscope_variable( i_name = t27 i_identifier = t18->get( p0 = t27 ) ).
            CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
            t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t48.
            t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t48 ).
            DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t49.
            IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t49 ).
            ENDIF.
            CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
            t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t51.
            t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t51 ).
            DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t53.
            IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |identifier| p1 = t53 ).
            ENDIF.
            t2->load( ).
            APPEND t40 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD list_read_positions.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->all_nodes( ) ).
    DATA t5 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t6 TYPE REF TO object.
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
      IF xsdbool( t5->identifier->filename = t1 ) = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t20 TYPE REF TO zcl_lnt_scope_data.
        t20 = t5.
        t18 = t20->data_56cc->references.
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
          t30 = xsdbool( t24->reference_type = |Read From| ).
          t29 = t30.
          IF t30 = abap_true.
            t29 = xsdbool( t24->position_7b94->filename = t1 ).
          ENDIF.
          IF t29 = abap_true.
            DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
            t43 = t24->position_7b94.
            t2->load( ).
            APPEND t43 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->all_nodes( ) ).
    DATA t5 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t6 TYPE REF TO object.
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
      IF xsdbool( t5->identifier->filename = t1 ) = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t20 TYPE REF TO zcl_lnt_scope_data.
        t20 = t5.
        t18 = t20->data_56cc->references.
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
          t30 = xsdbool( t24->reference_type = |Write To| ).
          t29 = t30.
          IF t30 = abap_true.
            t29 = xsdbool( t24->position_7b94->filename = t1 ).
          ENDIF.
          IF t29 = abap_true.
            DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
            t43 = t24->position_7b94.
            t2->load( ).
            APPEND t43 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD l_p_i_s_ab_5_sy_sp_sc_ts_sp_sc.
    DATA(t1) = i_p.
    DATA(t2) = i_filename.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    t3 = t4.
    IF t4 = abap_false.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t3 = t16.
    ENDIF.
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_position.
    t20 = t1.
    DATA t22 TYPE string.
    t22 = t2->value.
    DATA(t24) = me->node.
    result = me->lookup_position_traverse( i_p = t20 i_filename = t22 i_node = t24 ).

  ENDMETHOD.

  METHOD g_f_c_i_s_a_5_s_sp_sc_ts_sp_sc.
    result = me->node->g_f_c_i_s_a_5_s_s_s_t_sp_sc_nd( ).

  ENDMETHOD.

  METHOD g_t_i_s_ab_5_sy_sp_sc_ts_sp_sc.
    result = me->node.

  ENDMETHOD.

  METHOD all_nodes.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA(t8) = me->node.
    t5->load( ).
    APPEND t8 TO t5->items.
    t5->save( ).
    t3 = t5.
    DO.
      t3->load( ).
      IF xsdbool( lines( t3->items ) > 0 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t14.
      DATA t16 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t16.
      DATA t18 TYPE REF TO object.
      t18 = t3->pop( ).
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
      t14 = t16.
      t1->load( ).
      APPEND t14 TO t1->items.
      t1->save( ).
      DATA(t23) = VALUE i( ).
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t24 = t14->g_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
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
        t3->load( ).
        APPEND t26 TO t3->items.
        t3->save( ).
      ENDDO.
      t3->load( ).
      t23 = lines( t3->items ).
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD lookup_position_traverse.
    DATA(t1) = i_p.
    DATA(t2) = i_filename.
    DATA(t3) = i_node.
    DATA t4 TYPE REF TO zcl_lnt_irange.
    t4 = t3->calc_coverage( ).
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE abap_bool.
    t8 = xsdbool( t3->identifier->filename = t2 ).
    t7 = t8.
    IF t8 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_position.
      t18 = t1.
      DATA t21 TYPE REF TO zcl_lnt_position.
      t21 = t4->start.
      DATA t24 TYPE REF TO zcl_lnt_position.
      t24 = t4->end.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE abap_bool.
      t27 = t18->is_after( i_p = t21 ).
      t26 = t27.
      IF t27 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_position.
        t31 = t24.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE abap_bool.
        t34 = xsdbool( t18->row < t31->row ).
        t33 = t34.
        IF t34 = abap_false.
          DATA t39 TYPE abap_bool.
          DATA t40 TYPE abap_bool.
          t40 = xsdbool( t18->row = t31->row ).
          t39 = t40.
          IF t40 = abap_true.
            DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t46 = t18->col.
            DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t48 = t31->col.
            t39 = zlnt_runtime_numb_290eb04a9758=>compare( left = t46 right = t48 op = `<` ).
          ENDIF.
          t33 = t39.
        ENDIF.
        t26 = t33.
      ENDIF.
      t7 = xsdbool( t26 = abap_false ).
    ENDIF.
    IF t7 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t52 = t3->g_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t55 TYPE REF TO object.
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
      t59 = me->lookup_position_traverse( i_p = t1 i_filename = t2 i_node = t54 ).
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      IF xsdbool( xsdbool( t59 IS INITIAL ) = abap_false ) = abap_true.
        result = t59.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t77 TYPE abap_bool.
    DATA t78 TYPE abap_bool.
    t78 = xsdbool( t3->identifier->filename = t2 ).
    t77 = t78.
    IF t78 = abap_true.
      DATA t87 TYPE REF TO zcl_lnt_position.
      t87 = t1.
      DATA t90 TYPE REF TO zcl_lnt_position.
      t90 = t4->start.
      DATA t93 TYPE REF TO zcl_lnt_position.
      t93 = t4->end.
      DATA t95 TYPE abap_bool.
      DATA t96 TYPE abap_bool.
      t96 = t87->is_after( i_p = t90 ).
      t95 = t96.
      IF t96 = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_position.
        t100 = t93.
        DATA t102 TYPE abap_bool.
        DATA t103 TYPE abap_bool.
        t103 = xsdbool( t87->row < t100->row ).
        t102 = t103.
        IF t103 = abap_false.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE abap_bool.
          t109 = xsdbool( t87->row = t100->row ).
          t108 = t109.
          IF t109 = abap_true.
            DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t115 = t87->col.
            DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t117 = t100->col.
            t108 = zlnt_runtime_numb_290eb04a9758=>compare( left = t115 right = t117 op = `<` ).
          ENDIF.
          t102 = t108.
        ENDIF.
        t95 = t102.
      ENDIF.
      t77 = t95.
    ENDIF.
    IF t77 = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD lookup_position.
    DATA(t2) = i_filename.
    DATA(t4) = i_p.
    result = me->l_p_i_s_ab_5_sy_sp_sc_ts_sp_sc( i_p = t4 i_filename = t2 ).

  ENDMETHOD.

  METHOD get_first_child.
    result = CAST zcl_lnt_spaghetti_scope_node( me->g_f_c_i_s_a_5_s_sp_sc_ts_sp_sc( ) ).

  ENDMETHOD.

  METHOD get_top.
    result = CAST zcl_lnt_spaghetti_scope_node( me->g_t_i_s_ab_5_sy_sp_sc_ts_sp_sc( ) ).

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
