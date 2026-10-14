* TS: src/abap/2_statements/expressions/parameter_list_s.ts:5:1 ParameterListS
CLASS zcl_lnt_parameter_list_s DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parameter_list_s IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA(t3) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d236_e9f6471ae6bb ).
    IF t3 IS BOUND.
      CREATE OBJECT t2.
      t2->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t2->cval = t3.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>plus_prio( i_first = t2 ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d219_2dee75409f14.
  ENDMETHOD.
ENDCLASS.
