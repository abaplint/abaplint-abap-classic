* TS: src/abap/2_statements/expressions/source_field_symbol.ts:5:1 SourceFieldSymbol
CLASS zcl_lnt_st_source_field_symbol DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_source_field_symbol IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA(t1) = NEW zcl_lnt_st_expres_field_symbol( ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d166_95d94e882be8.
  ENDMETHOD.
ENDCLASS.
