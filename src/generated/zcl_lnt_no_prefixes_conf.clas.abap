* TS: src/rules/no_prefixes.ts:11:1 NoPrefixesConf
CLASS zcl_lnt_no_prefixes_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA data_56cc TYPE string.
    DATA statics TYPE string.
    DATA field_symbols TYPE string.
    DATA constants TYPE string.
    DATA types TYPE string.
    DATA method_parameters TYPE string.
    DATA allow_is_prefix_boolean TYPE abap_bool.
    DATA max_issues_per_file TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_prefixes_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = |^[LGM].?_|.
    me->data_56cc = t1.
    DATA(t2) = |^S.?_|.
    me->statics = t2.
    DATA(t3) = |^<[LGM].?_|.
    me->field_symbols = t3.
    DATA(t4) = |^[LGM]?C.?_|.
    me->constants = t4.
    DATA(t5) = |^TY_|.
    me->types = t5.
    DATA(t6) = |^[ICER].?_|.
    me->method_parameters = t6.
    DATA(t7) = abap_true.
    me->allow_is_prefix_boolean = t7.
    DATA(t8) = CONV int8( 10 ).
    DATA(t9) = NEW zlnt_runtime_opti_4a236cd5714d( ).
    t9->has = abap_true.
    t9->value = t8.
    me->max_issues_per_file = t9.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1523_69b421e5aaca.
  ENDMETHOD.
ENDCLASS.
