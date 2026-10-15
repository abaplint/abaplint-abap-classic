* TS: src/abap/2_statements/expressions/message_type_and_number.ts:4:1 MessageTypeAndNumber
CLASS zcl_lnt_mssg_typ_and_nmbr DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mssg_typ_and_nmbr IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t2.
    DATA(t3) = `^[iweaxs]\d\d\d$`.
    DATA(t4) = |^[iweaxs][0-9][0-9][0-9]$|.
    DATA(t5) = |i|.
    CREATE OBJECT t2 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t4 flags = t5.
    t2->source = t3.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t2 ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d217_b89e20eef6cb.
  ENDMETHOD.
ENDCLASS.
