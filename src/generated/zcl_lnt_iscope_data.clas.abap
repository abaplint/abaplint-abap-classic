* TS: src/abap/5_syntax/_spaghetti_scope.ts:30:1 IScopeData
CLASS zcl_lnt_iscope_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA vars TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA types TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA extra_like_types TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA deferred TYPE REF TO zlnt_runtime_map__f9d623f88b73.
    DATA cdefs TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA idefs TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    DATA forms TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA references TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA sql_conversion TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_vars TYPE REF TO zlnt_runtime_map__126b79e3f8a9 i_types TYPE REF TO zlnt_runtime_map__126b79e3f8a9 i_extra_like_types TYPE REF TO zlnt_runtime_map__126b79e3f8a9 i_deferred TYPE REF TO
    zlnt_runtime_map__f9d623f88b73 i_cdefs TYPE REF TO zlnt_runtime_map__3d720b31a8f8 i_idefs TYPE REF TO zlnt_runtime_map__0fbcc10173b8 i_forms TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_references TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3 i_sql_conversion TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iscope_data IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_vars.
    DATA(t2) = i_types.
    DATA(t3) = i_extra_like_types.
    DATA(t4) = i_deferred.
    DATA(t5) = i_cdefs.
    DATA(t6) = i_idefs.
    DATA(t7) = i_forms.
    DATA(t8) = i_references.
    DATA(t9) = i_sql_conversion.
    DATA(t10) = t1.
    me->vars = t10.
    DATA(t11) = t2.
    me->types = t11.
    DATA(t12) = t3.
    me->extra_like_types = t12.
    DATA(t13) = t4.
    me->deferred = t13.
    DATA(t14) = t5.
    me->cdefs = t14.
    DATA(t15) = t6.
    me->idefs = t15.
    DATA(t16) = t7.
    me->forms = t16.
    DATA(t17) = t8.
    me->references = t17.
    DATA(t18) = t9.
    me->sql_conversion = t18.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d757_84a97e15978e.
  ENDMETHOD.
ENDCLASS.
