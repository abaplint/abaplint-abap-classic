* TS: src/_config.ts:43:1 ISyntaxSettings
CLASS zcl_lnt_isyntax_settings DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_builtin_mate_4bfafaf0b5ed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA version TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA error_namespace TYPE string.
    DATA global_constants TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA ambigious_voids TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA global_macros TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_version TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_error_namespace TYPE string i_global_constants TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_ambigious_voids TYPE REF TO
    zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_isyntax_settings IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_version ).
    DATA(t2) = i_error_namespace.
    DATA(t3) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_global_constants ).
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_ambigious_voids ).
    DATA(t5) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_global_macros_5535 ).
    DATA(t6) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    me->version = t6.
    DATA(t7) = t2.
    me->error_namespace = t7.
    DATA(t8) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
    me->global_constants = t8.
    DATA(t9) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
    me->ambigious_voids = t9.
    DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t5 ).
    me->global_macros = t10.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d2_33f63f78ed485d.
  ENDMETHOD.
ENDCLASS.
