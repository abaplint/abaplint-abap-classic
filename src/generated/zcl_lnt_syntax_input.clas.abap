* TS: src/abap/5_syntax/_syntax_input.ts:11:1 SyntaxInput
CLASS zcl_lnt_syntax_input DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA scope TYPE REF TO zcl_lnt_current_scope.
    DATA filename TYPE string.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA deferred TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_scope TYPE REF TO zcl_lnt_current_scope i_filename TYPE string i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_deferred TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_syntax_input IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_current_scope( i_scope ).
    DATA(t2) = i_filename.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( i_deferred ).
    DATA(t5) = CAST zcl_lnt_current_scope( t1 ).
    me->scope = t5.
    DATA(t6) = t2.
    me->filename = t6.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    me->issues = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    me->deferred = t8.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1728_920c1ac79cd3.
  ENDMETHOD.
ENDCLASS.
