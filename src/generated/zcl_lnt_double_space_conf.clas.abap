* TS: src/rules/double_space.ts:14:1 DoubleSpaceConf
CLASS zcl_lnt_double_space_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA keywords_835e TYPE abap_bool.
    DATA skip_keywords TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA start_paren TYPE abap_bool.
    DATA end_paren TYPE abap_bool.
    DATA after_colon TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_double_space_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_true.
    me->keywords_835e = t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
    DATA(t6) = |CHANGING|.
    APPEND t6 TO t5->items.
    DATA(t7) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
    DATA(t8) = |EXPORTING|.
    APPEND t8 TO t7->items.
    DATA(t9) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
    DATA(t10) = |OTHERS|.
    APPEND t10 TO t9->items.
    DATA(t11) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
    t2 = t11.
    me->skip_keywords = t2.
    DATA(t12) = abap_true.
    me->start_paren = t12.
    DATA(t13) = abap_true.
    me->end_paren = t13.
    DATA(t14) = abap_true.
    me->after_colon = t14.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1381_f38c7a4d0777.
  ENDMETHOD.
ENDCLASS.
