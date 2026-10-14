* TS: src/abap/types/alias.ts:5:1 Alias
CLASS zcl_lnt_alias DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    DATA visibility TYPE int8.
    DATA component TYPE string.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_visibility_5c1f TYPE int8 i_component TYPE string i_filename TYPE string.
    METHODS get_component RETURNING VALUE(result) TYPE string.
    METHODS get_visibility RETURNING VALUE(result) TYPE int8.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_alias IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_component.
    DATA(t4) = i_filename.
    DATA(t5) = CAST zcl_lnt_abstract_token( t1 ).
    DATA(t6) = t4.
    super->constructor( i_token = t5 i_filename = t6 ).
    DATA(t7) = t3.
    me->component = t7.
    DATA(t8) = t2.
    me->visibility = t8.
  ENDMETHOD.
  METHOD get_component.
    DATA(t1) = CONV string( me->component ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_visibility.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/alias.ts:19|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d992_23ce209550cb.
  ENDMETHOD.
ENDCLASS.
