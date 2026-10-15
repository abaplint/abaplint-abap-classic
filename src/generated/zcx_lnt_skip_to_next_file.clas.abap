* TS: src/rules/downport.ts:41:1 SkipToNextFile
CLASS zcx_lnt_skip_to_next_file DEFINITION PUBLIC INHERITING FROM zcl_lnt_builtin_e8b3bd7e CREATE PUBLIC.
  PUBLIC SECTION.
    DATA issue TYPE REF TO zcl_lnt_issue.
    METHODS constructor IMPORTING i_issue TYPE REF TO zcl_lnt_issue.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcx_lnt_skip_to_next_file IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_issue.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    super->constructor( i_message_26cb = t2 ).
    DATA(t3) = t1.
    me->issue = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `issue`.
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_b425d82119de=>zlnt_member_d3_93b114c6beac5f.
  ENDMETHOD.
ENDCLASS.
