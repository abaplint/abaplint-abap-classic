* TS: src/abap/types/alias.ts:5:1 Alias
CLASS zcl_lnt_alias DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    DATA visibility TYPE f.
    DATA component TYPE string.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_visibility_5c1f TYPE f i_component TYPE string i_filename TYPE string.
    METHODS get_component RETURNING VALUE(result) TYPE string.
    METHODS get_visibility RETURNING VALUE(result) TYPE f.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_alias IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_token.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_component.
    DATA(t4) = i_filename.
    DATA(t5) = t1.
    DATA(t6) = t4.
    super->constructor( i_token = t5 i_filename = t6 ).
    DATA(t7) = t3.
    me->component = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `component`.
    DATA(t8) = t2.
    me->visibility = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `visibility`.
  ENDMETHOD.

  METHOD get_component.
    DATA(t1) = CONV string( me->component ).
    result = t1.

  ENDMETHOD.

  METHOD get_visibility.
    DATA(t1) = CONV f( me->visibility ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1014_35d4c9b56606.
  ENDMETHOD.
ENDCLASS.
