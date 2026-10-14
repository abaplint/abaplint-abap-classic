* TS: src/version.ts:54:1 ABAPRelease
CLASS zcl_lnt_abap_release DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_0eeefcfe.
    DATA name TYPE string.
    DATA abap TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA kernel TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA op TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA cloud_669f TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA ce TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA ordinal TYPE int8.
    METHODS constructor IMPORTING i_name TYPE string i_abap TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_kernel TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_op TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_cloud_47cd TYPE REF TO
    zlnt_runtime_dyna_a429568d5be8 i_ce TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_ordinal TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_release IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( i_abap ).
    DATA(t3) = CAST zlnt_runtime_dyna_a429568d5be8( i_kernel ).
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( i_op ).
    DATA(t5) = CAST zlnt_runtime_dyna_a429568d5be8( i_cloud_47cd ).
    DATA(t6) = CAST zlnt_runtime_dyna_a429568d5be8( i_ce ).
    DATA(t7) = i_ordinal.
    DATA(t8) = t1.
    me->name = t8.
    DATA(t9) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    me->abap = t9.
    DATA(t10) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    me->kernel = t10.
    DATA(t11) = CAST zlnt_runtime_dyna_a429568d5be8( t4 ).
    me->op = t11.
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    me->cloud_669f = t12.
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    me->ce = t13.
    DATA(t14) = t7.
    me->ordinal = t14.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1697_0b1e263e6eeb.
  ENDMETHOD.

  METHOD zif_lnt_union_0eeefcfe~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
