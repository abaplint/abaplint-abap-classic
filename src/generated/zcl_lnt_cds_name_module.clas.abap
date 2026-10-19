* TS: src/cds/expressions/cds_name.ts.module module
CLASS zcl_lnt_cds_name_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA keywords_36a7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_2f4438a19ed8 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_dfb42c40df8c.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t5) = |AS|.
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    DATA(t7) = |ON|.
    t2->load( ).
    APPEND t7 TO t2->items.
    t2->save( ).
    DATA(t9) = |WHERE|.
    t2->load( ).
    APPEND t9 TO t2->items.
    t2->save( ).
    DATA(t11) = |WITH|.
    t2->load( ).
    APPEND t11 TO t2->items.
    t2->save( ).
    DATA(t13) = |UNION|.
    t2->load( ).
    APPEND t13 TO t2->items.
    t2->save( ).
    DATA(t15) = |GROUP|.
    t2->load( ).
    APPEND t15 TO t2->items.
    t2->save( ).
    DATA(t17) = |HAVING|.
    t2->load( ).
    APPEND t17 TO t2->items.
    t2->save( ).
    DATA(t19) = |AND|.
    t2->load( ).
    APPEND t19 TO t2->items.
    t2->save( ).
    DATA(t21) = |OR|.
    t2->load( ).
    APPEND t21 TO t2->items.
    t2->save( ).
    DATA(t23) = |BETWEEN|.
    t2->load( ).
    APPEND t23 TO t2->items.
    t2->save( ).
    DATA(t25) = |LIKE|.
    t2->load( ).
    APPEND t25 TO t2->items.
    t2->save( ).
    DATA(t27) = |IN|.
    t2->load( ).
    APPEND t27 TO t2->items.
    t2->save( ).
    DATA(t29) = |EXISTS|.
    t2->load( ).
    APPEND t29 TO t2->items.
    t2->save( ).
    DATA(t31) = |WHEN|.
    t2->load( ).
    APPEND t31 TO t2->items.
    t2->save( ).
    DATA(t33) = |THEN|.
    t2->load( ).
    APPEND t33 TO t2->items.
    t2->save( ).
    DATA(t35) = |ELSE|.
    t2->load( ).
    APPEND t35 TO t2->items.
    t2->save( ).
    DATA(t37) = |END|.
    t2->load( ).
    APPEND t37 TO t2->items.
    t2->save( ).
    DATA(t39) = |CASE|.
    t2->load( ).
    APPEND t39 TO t2->items.
    t2->save( ).
    DATA(t41) = |CAST|.
    t2->load( ).
    APPEND t41 TO t2->items.
    t2->save( ).
    zcl_lnt_cds_name_module=>keywords_36a7 = t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1950_b4123d6fa7ae.
  ENDMETHOD.
ENDCLASS.
