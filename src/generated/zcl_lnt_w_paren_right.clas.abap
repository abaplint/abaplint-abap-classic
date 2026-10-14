* TS: src/abap/1_lexer/tokens/wparen_right.ts:4:1 WParenRight
CLASS zcl_lnt_w_paren_right DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_token CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_start TYPE REF TO zcl_lnt_position i_str TYPE string.
    CLASS-METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_w_paren_right IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_position( i_start ).
    DATA(t2) = i_str.
    DATA(t3) = CAST zcl_lnt_position( t1 ).
    DATA(t4) = t2.
    super->constructor( i_start = t3 i_str = t4 ).
  ENDMETHOD.

  METHOD railroad.
    DATA(t1) = | )|.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
  ENDMETHOD.
ENDCLASS.
