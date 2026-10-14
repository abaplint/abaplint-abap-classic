* TS: src/abap/2_statements/expressions/behavior_definition_name.ts:4:1 BehaviorDefinitionName
CLASS zcl_lnt_bhvr_dfntn_nm DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_bhvr_dfntn_nm IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/expressions/behavior_definition_name.t|.
    t2 = t2 && |s:5|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
  ENDMETHOD.
ENDCLASS.
