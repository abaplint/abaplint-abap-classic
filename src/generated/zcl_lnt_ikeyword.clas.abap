* TS: src/abap/artifacts.ts:8:1 IKeyword
CLASS zcl_lnt_ikeyword DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA word TYPE string.
    DATA source TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_word TYPE string i_source_75cf TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ikeyword IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_word.
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_source_75cf ).
    DATA(t3) = t1.
    me->word = t3.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    me->source = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d980_02fa4094c892.
  ENDMETHOD.
ENDCLASS.
