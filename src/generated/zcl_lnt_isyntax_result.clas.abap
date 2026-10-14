* TS: src/abap/5_syntax/_spaghetti_scope.ts:76:1 ISyntaxResult
CLASS zcl_lnt_isyntax_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA spaghetti TYPE REF TO zif_lnt_spaghetti_scope.
    METHODS constructor IMPORTING i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_spaghetti TYPE REF TO zif_lnt_spaghetti_scope.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_isyntax_result IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t2) = CAST zif_lnt_spaghetti_scope( i_spaghetti ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->issues = t3.
    DATA(t4) = CAST zif_lnt_spaghetti_scope( t2 ).
    me->spaghetti = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d758_f1cb57e59f66.
  ENDMETHOD.
ENDCLASS.
