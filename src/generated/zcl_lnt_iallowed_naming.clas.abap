* TS: src/objects/_iobject.ts:7:1 IAllowedNaming
CLASS zcl_lnt_iallowed_naming DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA max_length TYPE int8.
    DATA allow_namespace TYPE abap_bool.
    DATA custom_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    METHODS constructor IMPORTING i_max_length TYPE int8 i_allow_namespace TYPE abap_bool i_custom_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iallowed_naming IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_max_length.
    DATA(t2) = i_allow_namespace.
    DATA(t3) = i_custom_regex.
    DATA(t4) = t1.
    me->max_length = t4.
    DATA(t5) = t2.
    me->allow_namespace = t5.
    DATA(t6) = t3.
    me->custom_regex = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1087_967f7f7eef4c.
  ENDMETHOD.
ENDCLASS.
