* TS: src/cds/expressions/cds_name.ts.module module
CLASS zcl_lnt_cds_name_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA keywords_36a7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_2f4438a19ed8 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_dfb42c40df8c.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_name_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_dfb42c40df8c.
    IF zlnt_builtin_init_2f4438a19ed8 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_2f4438a19ed8 = abap_true.
    IF zcl_lnt_cds_name_module=>zlnt_builtin_init_2f4438a19ed8 = abap_false.
      zcl_lnt_cds_name_module=>zlnt_builtin_init_dfb42c40df8c( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t5) = |AS|.
    APPEND t5 TO t4->items.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t7) = |ON|.
    APPEND t7 TO t6->items.
    DATA(t8) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t9) = |WHERE|.
    APPEND t9 TO t8->items.
    DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t11) = |WITH|.
    APPEND t11 TO t10->items.
    DATA(t12) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t13) = |UNION|.
    APPEND t13 TO t12->items.
    DATA(t14) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t15) = |GROUP|.
    APPEND t15 TO t14->items.
    DATA(t16) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t17) = |HAVING|.
    APPEND t17 TO t16->items.
    DATA(t18) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t19) = |AND|.
    APPEND t19 TO t18->items.
    DATA(t20) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t21) = |OR|.
    APPEND t21 TO t20->items.
    DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t23) = |BETWEEN|.
    APPEND t23 TO t22->items.
    DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t25) = |LIKE|.
    APPEND t25 TO t24->items.
    DATA(t26) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t27) = |IN|.
    APPEND t27 TO t26->items.
    DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t29) = |EXISTS|.
    APPEND t29 TO t28->items.
    DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t31) = |WHEN|.
    APPEND t31 TO t30->items.
    DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t33) = |THEN|.
    APPEND t33 TO t32->items.
    DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t35) = |ELSE|.
    APPEND t35 TO t34->items.
    DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t37) = |END|.
    APPEND t37 TO t36->items.
    DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t39) = |CASE|.
    APPEND t39 TO t38->items.
    DATA(t40) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t41) = |CAST|.
    APPEND t41 TO t40->items.
    DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    t1 = t42.
    zcl_lnt_cds_name_module=>keywords_36a7 = t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1855_a5506b3a3f18.
  ENDMETHOD.
ENDCLASS.
