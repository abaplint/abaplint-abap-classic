* TS: src/abap/1_lexer/tokens/wparen_rightw.ts:4:1 WParenRightW
CLASS zcl_lnt_w_paren_right_w DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_token CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_24b9bfb5.
    METHODS constructor IMPORTING i_start TYPE REF TO zcl_lnt_position i_str TYPE string.
    CLASS-METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_w_paren_right_w IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_start.
    DATA(t2) = i_str.
    DATA(t3) = t1.
    DATA(t4) = t2.
    super->constructor( i_start = t3 i_str = t4 ).
  ENDMETHOD.

  METHOD railroad.
    DATA(t1) = | ) |.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
  ENDMETHOD.

  METHOD zif_lnt_union_24b9bfb5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_24b9bfb5~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_24b9bfb5~get_col.
    result = me->get_col( ).
  ENDMETHOD.

  METHOD zif_lnt_union_24b9bfb5~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_union_24b9bfb5~get_row.
    result = me->get_row( ).
  ENDMETHOD.

  METHOD zif_lnt_union_24b9bfb5~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_union_24b9bfb5~get_str.
    result = me->get_str( ).
  ENDMETHOD.

  METHOD zif_lnt_union_24b9bfb5~get_upper_str.
    result = me->get_upper_str( ).
  ENDMETHOD.
ENDCLASS.
