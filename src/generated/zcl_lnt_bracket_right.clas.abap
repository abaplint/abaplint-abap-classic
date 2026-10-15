* TS: src/abap/1_lexer/tokens/bracket_right.ts:3:1 BracketRight
CLASS zcl_lnt_bracket_right DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_token CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_start TYPE REF TO zcl_lnt_position i_str TYPE string.
    CLASS-METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_bracket_right IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_start.
    DATA(t2) = i_str.
    DATA(t3) = t1.
    DATA(t4) = t2.
    super->constructor( i_start = t3 i_str = t4 ).
  ENDMETHOD.

  METHOD railroad.
    DATA(t1) = |]|.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d18_19680539f6df90.
  ENDMETHOD.
ENDCLASS.
