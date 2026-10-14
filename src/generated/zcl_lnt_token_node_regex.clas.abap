* TS: src/abap/nodes/token_node_regex.ts:4:1 TokenNodeRegex
CLASS zcl_lnt_token_node_regex DEFINITION PUBLIC INHERITING FROM zcl_lnt_token_node CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_token_node_regex IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_token.
    DATA(t2) = t1.
    super->constructor( i_token = t2 ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d989_baefa774021f.
  ENDMETHOD.
ENDCLASS.
