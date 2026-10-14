* TS: src/rules/forbidden_pseudo_and_pragma.ts:11:1 ForbiddenPseudoAndPragmaConf
CLASS zcl_lnt_frbdd_psd_and_prgm_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA pseudo TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA pragmas TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA ignore_global_class_definition TYPE abap_bool.
    DATA ignore_global_interface TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_frbdd_psd_and_prgm_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = |"#EC *|.
    APPEND t5 TO t4->items.
    DATA(t6) = t2.
    t1 = t6.
    me->pseudo = t1.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t7.
    me->pragmas = t7.
    DATA(t8) = abap_false.
    me->ignore_global_class_definition = t8.
    DATA(t9) = abap_false.
    me->ignore_global_interface = t9.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1408_b50f88496162.
  ENDMETHOD.
ENDCLASS.
