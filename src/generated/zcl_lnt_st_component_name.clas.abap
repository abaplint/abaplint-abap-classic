* TS: src/abap/2_statements/expressions/component_name.ts:4:1 ComponentName
CLASS zcl_lnt_st_component_name DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_component_name IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t2 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t2 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^[\/A-Za-z0-9_0-9_%$\*\~]+$` flags = ||.
    t2->source = `^[\/\w\d_%$\*\~]+$`.
    result = zcl_lnt_st_combi_module=>regex( i_r_f634 = t2 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
  ENDMETHOD.
ENDCLASS.
