* TS: src/utils/name_validator.ts:3:1 NameValidator
CLASS zcl_lnt_name_validator DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS violates_rule IMPORTING i_name TYPE string i_pattern TYPE REF TO zlnt_runtime_rege_5a210f82384e i_params_4c59 TYPE REF TO zcl_lnt_naming_rule_config RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_name_validator IMPLEMENTATION.
  METHOD violates_rule.
    DATA(t1) = i_name.
    DATA(t2) = i_pattern.
    DATA(t3) = i_params_4c59.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t7) = t3.
    t6 = t7->ignore_names.
    t5 = xsdbool( t6 IS BOUND ).
    t4 = t5.
    IF t5 = abap_true.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE i( ).
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t12) = t3.
      t11 = t12->ignore_names.
      t10 = t11.
      DATA t13 TYPE string.
      DATA(t14) = t1.
      DATA(t15) = strlen( t14 ).
      t13 = t14.
      IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t13 TO UPPER CASE.
      ELSE.
        t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
      ENDIF.
      t9 = t10->indexof( p0 = t13 ).
      DATA(t16) = 0.
      t8 = xsdbool( t9 >= t16 ).
      t4 = t8.
    ENDIF.
    IF t4 = abap_true.
      DATA(t17) = abap_false.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t21) = t3.
    t20 = t21->ignore_patterns.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t22.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t19.
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t26) = t19.
      t25 = t26.
      t22 = t25.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t27.
      t22 = t27.
    ENDIF.
    t18 = t22.
    DATA(t28) = VALUE string( ).
    LOOP AT t18->items INTO t28.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t30.
      DATA(t31) = t28.
      DATA(t32) = |i|.
      CREATE OBJECT t30 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t31 flags = t32.
      DATA(t33) = t1.
      t29 = t30->test( p0 = t33 ).
      IF t29 = abap_true.
        DATA(t34) = abap_false.
        result = t34.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t40) = t3.
    t39 = t40->pattern_kind.
    IF t39 IS BOUND.
      IF t39->has = abap_true.
        t38 = xsdbool( strlen( t39->value ) > 0 ).
      ENDIF.
    ENDIF.
    t37 = xsdbool( t38 = abap_false ).
    t36 = t37.
    IF t37 = abap_false.
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE string.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t44) = t3.
      t43 = t44->pattern_kind.
      t42 = t43->value.
      DATA(t45) = |required|.
      t41 = xsdbool( t42 = t45 ).
      t36 = t41.
    ENDIF.
    IF t36 = abap_true.
      DATA t46 TYPE abap_bool.
      DATA t47 TYPE abap_bool.
      DATA(t48) = t2.
      DATA(t49) = t1.
      t47 = t48->test( p0 = t49 ).
      DATA(t50) = abap_false.
      t46 = xsdbool( t47 = t50 ).
      t35 = t46.
    ELSE.
      DATA t51 TYPE abap_bool.
      DATA t52 TYPE abap_bool.
      DATA(t53) = t2.
      DATA(t54) = t1.
      t52 = t53->test( p0 = t54 ).
      DATA(t55) = abap_true.
      t51 = xsdbool( t52 = t55 ).
      t35 = t51.
    ENDIF.
    result = t35.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1696_5cbcc15e2edc.
  ENDMETHOD.
ENDCLASS.
