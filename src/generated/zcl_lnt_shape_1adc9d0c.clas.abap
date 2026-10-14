* TS: src/abap/2_statements/statement_parser.ts:25:43 shape.7e8c4203d26cc50517941a28b5cbce37cdb0fb6abdee06ebaa72071cab7d32db
CLASS zcl_lnt_shape_1adc9d0c DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA statement TYPE REF TO zif_lnt_statement.
    DATA matcher TYPE REF TO zif_lnt_statement_runnable.
    METHODS constructor IMPORTING i_statement TYPE REF TO zif_lnt_statement OPTIONAL i_matcher TYPE REF TO zif_lnt_statement_runnable OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_1adc9d0c IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_statement( i_statement ).
    DATA(t2) = CAST zif_lnt_statement_runnable( i_matcher ).
    DATA t3 TYPE REF TO zif_lnt_statement.
    DATA(t4) = CAST zif_lnt_statement( t1 ).
    t3 = t4.
    me->statement = t3.
    DATA(t5) = CAST zif_lnt_statement_runnable( t2 ).
    me->matcher = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1745_30835c17575b.
  ENDMETHOD.
ENDCLASS.
