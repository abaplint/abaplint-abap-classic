* TS: src/abap/5_syntax/spaghetti_scope.ts:11:1 ScopeData
CLASS zcl_lnt_scope_data DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA data_56cc TYPE REF TO zcl_lnt_iscope_data.
    METHODS constructor.
    METHODS get_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_iscope_data.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_scope_data IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zcl_lnt_iscope_data.
    DATA t2 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t3 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA(t4) = NEW zlnt_runtime_map__126b79e3f8a9( ).
    t3 = t4.
    DATA(t5) = CAST zlnt_runtime_map__126b79e3f8a9( t3 ).
    t2 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t7 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA(t8) = NEW zlnt_runtime_map__126b79e3f8a9( ).
    t7 = t8.
    DATA(t9) = CAST zlnt_runtime_map__126b79e3f8a9( t7 ).
    t6 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t11 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA(t12) = NEW zlnt_runtime_map__126b79e3f8a9( ).
    t11 = t12.
    DATA(t13) = CAST zlnt_runtime_map__126b79e3f8a9( t11 ).
    t10 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
    DATA t15 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
    DATA(t16) = NEW zlnt_runtime_map__f9d623f88b73( ).
    t15 = t16.
    DATA(t17) = CAST zlnt_runtime_map__f9d623f88b73( t15 ).
    t14 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA t19 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA(t20) = NEW zlnt_runtime_map__3d720b31a8f8( ).
    t19 = t20.
    DATA(t21) = CAST zlnt_runtime_map__3d720b31a8f8( t19 ).
    t18 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    DATA t23 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    DATA(t24) = NEW zlnt_runtime_map__0fbcc10173b8( ).
    t23 = t24.
    DATA(t25) = CAST zlnt_runtime_map__0fbcc10173b8( t23 ).
    t22 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t1 = NEW zcl_lnt_iscope_data( i_vars = t2 i_types = t6 i_extra_like_types = t10 i_deferred = t14 i_cdefs = t18 i_idefs = t22 i_forms = t26 i_references = t27 i_sql_conversion = t28 ).
    me->data_56cc = t1.
  ENDMETHOD.
  METHOD get_data.
    DATA(t1) = CAST zcl_lnt_iscope_data( me->data_56cc ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d828_62bdea10e279.
  ENDMETHOD.
ENDCLASS.
