* TS: src/abap/5_syntax/spaghetti_scope.ts:264:1 SpaghettiScope
CLASS zcl_lnt_spaghetti_scope DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_spaghetti_scope IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_top.
    DATA(t2) = t1.
    me->node = t2.
  ENDMETHOD.

  METHOD list_definitions.
    DATA(t1) = i_filename.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/spaghetti_scope.ts:272|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD list_read_positions.
    DATA(t1) = i_filename.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/spaghetti_scope.ts:289|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = i_filename.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/spaghetti_scope.ts:305|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD l_p_i_s_ab_5_sy_sp_sc_ts_sp_sc.
    DATA(t1) = i_p.
    DATA(t2) = i_filename.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/spaghetti_scope.ts:321|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
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
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/spaghetti_scope.ts:338|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD lookup_position_traverse.
    DATA(t1) = i_p.
    DATA(t2) = i_filename.
    DATA(t3) = i_node.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/abap/5_syntax/spaghetti_scope.ts:351|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD lookup_position.
    DATA(t1) = i_p.
    DATA(t2) = i_filename.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/spaghetti_scope.ts:321|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
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

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d830_ed01ba5bf6b6.
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
