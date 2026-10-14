* TS: src/rules/keyword_case.ts:108:1 TokenAndKeyword
CLASS zcl_lnt_token_and_keyword DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA token TYPE REF TO zcl_lnt_abstract_token.
    DATA keyword TYPE abap_bool.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_keyword TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_token_and_keyword IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t2) = i_keyword.
    DATA(t3) = CAST zcl_lnt_abstract_token( t1 ).
    me->token = t3.
    DATA(t4) = t2.
    me->keyword = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1821_2ed0998b658e.
  ENDMETHOD.
ENDCLASS.
