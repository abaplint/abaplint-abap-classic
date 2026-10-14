* TS: src/abap/5_syntax/_spaghetti_scope.ts:12:1 IScopeIdentifier
CLASS zcl_lnt_iscope_identifier DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA stype TYPE string.
    DATA sname TYPE string.
    DATA filename TYPE string.
    DATA start TYPE REF TO zcl_lnt_position.
    DATA end TYPE REF TO zcl_lnt_position.
    METHODS constructor IMPORTING i_stype TYPE string i_sname TYPE string i_filename TYPE string i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iscope_identifier IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_stype.
    DATA(t2) = i_sname.
    DATA(t3) = i_filename.
    DATA(t4) = CAST zcl_lnt_position( i_start ).
    DATA(t5) = CAST zcl_lnt_position( i_end ).
    DATA(t6) = t1.
    me->stype = t6.
    DATA(t7) = t2.
    me->sname = t7.
    DATA(t8) = t3.
    me->filename = t8.
    DATA(t9) = CAST zcl_lnt_position( t4 ).
    me->start = t9.
    DATA(t10) = CAST zcl_lnt_position( t5 ).
    me->end = t10.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d755_35b4aa2f3460.
  ENDMETHOD.
ENDCLASS.
