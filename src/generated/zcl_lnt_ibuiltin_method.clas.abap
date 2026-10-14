* TS: src/abap/5_syntax/_builtin.ts:13:1 IBuiltinMethod
CLASS zcl_lnt_ibuiltin_method DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA counter TYPE int8.
    DATA mandatory TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA optional TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA release_3664 TYPE REF TO zcl_lnt_abap_release.
    DATA predicate TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA return_5392 TYPE REF TO zcl_lnt_abstract_type.
    DATA cache TYPE REF TO zcl_lnt_built_in_method.
    METHODS constructor IMPORTING i_counter TYPE int8 i_mandatory TYPE REF TO zlnt_runtime_map__41b3bb94df3d OPTIONAL i_optional TYPE REF TO zlnt_runtime_map__41b3bb94df3d OPTIONAL i_release_7928 TYPE REF TO zcl_lnt_abap_release OPTIONAL
    i_predicate TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_return_fa63 TYPE REF TO zcl_lnt_abstract_type i_cache TYPE REF TO zcl_lnt_built_in_method OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ibuiltin_method IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_counter.
    DATA(t2) = CAST zlnt_runtime_map__41b3bb94df3d( i_mandatory ).
    DATA(t3) = CAST zlnt_runtime_map__41b3bb94df3d( i_optional ).
    DATA(t4) = CAST zcl_lnt_abap_release( i_release_7928 ).
    DATA(t5) = CAST zlnt_runtime_opti_7f2541396f43( i_predicate ).
    DATA(t6) = CAST zcl_lnt_abstract_type( i_return_fa63 ).
    DATA(t7) = CAST zcl_lnt_built_in_method( i_cache ).
    DATA(t8) = t1.
    me->counter = t8.
    DATA(t9) = CAST zlnt_runtime_map__41b3bb94df3d( t2 ).
    me->mandatory = t9.
    DATA(t10) = CAST zlnt_runtime_map__41b3bb94df3d( t3 ).
    me->optional = t10.
    DATA(t11) = CAST zcl_lnt_abap_release( t4 ).
    me->release_3664 = t11.
    DATA(t12) = CAST zlnt_runtime_opti_7f2541396f43( t5 ).
    me->predicate = t12.
    DATA(t13) = CAST zcl_lnt_abstract_type( t6 ).
    me->return_5392 = t13.
    DATA(t14) = CAST zcl_lnt_built_in_method( t7 ).
    me->cache = t14.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d747_68112758b030.
  ENDMETHOD.
ENDCLASS.
