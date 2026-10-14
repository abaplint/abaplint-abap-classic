* TS: src/rules/cds_check_syntax.ts:19:1 Source
CLASS zcl_lnt_rl_source DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA entity TYPE string.
    DATA names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA type_cba0 TYPE REF TO zif_lnt_union_48da8d64.
    METHODS constructor IMPORTING i_entity TYPE string i_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_type_9913 TYPE REF TO zif_lnt_union_48da8d64.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rl_source IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_entity.
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_names ).
    DATA(t3) = CAST zif_lnt_union_48da8d64( i_type_9913 ).
    DATA(t4) = t1.
    me->entity = t4.
    DATA(t5) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    me->names = t5.
    DATA(t6) = CAST zif_lnt_union_48da8d64( t3 ).
    me->type_cba0 = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1817_b3f74eb771f7.
  ENDMETHOD.
ENDCLASS.
