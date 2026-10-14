* TS: src/abap/2_statements/expressions/sql_path_segment.ts:10:1 SQLPathSegment
CLASS zcl_lnt_sql_path_segment DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    DATA nws TYPE abap_bool.
    METHODS constructor IMPORTING i_nws TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_path_segment IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_7f2541396f43( i_nws ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    IF t3 IS INITIAL.
      t2 = abap_true.
    ELSEIF t3->has = abap_false.
      t2 = abap_true.
    ENDIF.
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA(t6) = abap_false.
        DATA(t7) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t7->has = abap_true.
        t7->value = t6.
        t4 = t7.
      ELSE.
        DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t8.
        t4 = t8.
      ENDIF.
      t1 = t4.
    ENDIF.
    super->constructor( ).
    DATA t9 TYPE abap_bool.
    DATA(t10) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    t9 = t10->value.
    me->nws = t9.
  ENDMETHOD.

  METHOD get_runnable.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/expressions/sql_path_segment.ts:18|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d326_f861243d7542.
  ENDMETHOD.
ENDCLASS.
