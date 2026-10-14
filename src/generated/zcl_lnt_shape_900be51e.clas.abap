* TS: src/objects/table_type.ts:11:22 shape.fdbf434f7f7dbe66107f55ec17e8fb62eb662a8c5ce24298759590708e7d888b
CLASS zcl_lnt_shape_900be51e DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA keyname TYPE string.
    DATA accessmode TYPE string.
    DATA kind TYPE string.
    DATA unique TYPE abap_bool.
    METHODS constructor IMPORTING i_keyname TYPE string i_accessmode TYPE string i_kind TYPE string i_unique TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_900be51e IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_keyname.
    DATA(t2) = i_accessmode.
    DATA(t3) = i_kind.
    DATA(t4) = i_unique.
    DATA(t5) = t1.
    me->keyname = t5.
    DATA(t6) = t2.
    me->accessmode = t6.
    DATA(t7) = t3.
    me->kind = t7.
    DATA(t8) = t4.
    me->unique = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1806_59f57e5e4469.
  ENDMETHOD.
ENDCLASS.
