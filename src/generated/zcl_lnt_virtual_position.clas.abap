* TS: src/virtual_position.ts:5:1 VirtualPosition
CLASS zcl_lnt_virtual_position DEFINITION PUBLIC INHERITING FROM zcl_lnt_position CREATE PUBLIC.
  PUBLIC SECTION.
    DATA vrow TYPE int8.
    DATA vcol TYPE int8.
    METHODS constructor IMPORTING i_virtual TYPE REF TO zcl_lnt_position i_row TYPE int8 i_col TYPE int8.
    METHODS equals REDEFINITION.
    METHODS is_after REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_virtual_position IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_virtual.
    DATA(t2) = i_row.
    DATA(t3) = i_col.
    DATA t4 TYPE int8.
    DATA t5 TYPE REF TO zcl_lnt_position.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE int8.
    DATA(t8) = t5.
    t7 = t8->row.
    t4 = t7.
    DATA t9 TYPE int8.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = t1.
    t10 = t11.
    DATA t12 TYPE int8.
    DATA(t13) = t10.
    t12 = t13->col.
    t9 = t12.
    super->constructor( i_row = t4 i_col = t9 ).
    DATA(t14) = t2.
    me->vrow = t14.
    DATA(t15) = t3.
    me->vcol = t15.
  ENDMETHOD.

  METHOD equals.
    DATA(t1) = i_p.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/virtual_position.ts:15|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_after.
    DATA(t1) = i_p.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/virtual_position.ts:23|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1698_432cfd4f8410.
  ENDMETHOD.
ENDCLASS.
