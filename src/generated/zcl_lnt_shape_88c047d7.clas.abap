* TS: src/macro_references.ts:6:54 shape.d1af9b53af41f16b2201e9e1571934153b5cf79cd0bd15339451ee2ece24bc9a
CLASS zcl_lnt_shape_88c047d7 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA token TYPE REF TO zcl_lnt_abstract_token.
    DATA start TYPE REF TO zcl_lnt_position.
    DATA end TYPE REF TO zcl_lnt_position.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token OPTIONAL i_start TYPE REF TO zcl_lnt_position OPTIONAL i_end TYPE REF TO zcl_lnt_position OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_88c047d7 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_token.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t5) = t1.
    t4 = t5.
    me->token = t4.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA(t7) = t2.
    t6 = t7.
    me->start = t6.
    DATA t8 TYPE REF TO zcl_lnt_position.
    DATA(t9) = t3.
    t8 = t9.
    me->end = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1774_35e7701b5a0b.
  ENDMETHOD.
ENDCLASS.
