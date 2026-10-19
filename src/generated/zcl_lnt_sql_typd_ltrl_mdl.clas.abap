* TS: src/abap/2_statements/expressions/sql_typed_literal.ts.module module
CLASS zcl_lnt_sql_typd_ltrl_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA typed_literal_types TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_e2b55c8dcc51 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_527ecce2c635.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_typd_ltrl_mdl IMPLEMENTATION.
  METHOD zlnt_builtin_init_527ecce2c635.
    IF zlnt_builtin_init_e2b55c8dcc51 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_e2b55c8dcc51 = abap_true.
    IF zcl_lnt_sql_typd_ltrl_mdl=>zlnt_builtin_init_e2b55c8dcc51 = abap_false.
      zcl_lnt_sql_typd_ltrl_mdl=>zlnt_builtin_init_527ecce2c635( ).
    ENDIF.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t5) = |CHAR|.
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    DATA(t7) = |CLNT|.
    t2->load( ).
    APPEND t7 TO t2->items.
    t2->save( ).
    DATA(t9) = |CUKY|.
    t2->load( ).
    APPEND t9 TO t2->items.
    t2->save( ).
    DATA(t11) = |CURR|.
    t2->load( ).
    APPEND t11 TO t2->items.
    t2->save( ).
    DATA(t13) = |DATN|.
    t2->load( ).
    APPEND t13 TO t2->items.
    t2->save( ).
    DATA(t15) = |DATS|.
    t2->load( ).
    APPEND t15 TO t2->items.
    t2->save( ).
    DATA(t17) = |DEC|.
    t2->load( ).
    APPEND t17 TO t2->items.
    t2->save( ).
    DATA(t19) = |DECFLOAT16|.
    t2->load( ).
    APPEND t19 TO t2->items.
    t2->save( ).
    DATA(t21) = |DECFLOAT34|.
    t2->load( ).
    APPEND t21 TO t2->items.
    t2->save( ).
    DATA(t23) = |D16N|.
    t2->load( ).
    APPEND t23 TO t2->items.
    t2->save( ).
    DATA(t25) = |D34N|.
    t2->load( ).
    APPEND t25 TO t2->items.
    t2->save( ).
    DATA(t27) = |D16D|.
    t2->load( ).
    APPEND t27 TO t2->items.
    t2->save( ).
    DATA(t29) = |D34D|.
    t2->load( ).
    APPEND t29 TO t2->items.
    t2->save( ).
    DATA(t31) = |D16R|.
    t2->load( ).
    APPEND t31 TO t2->items.
    t2->save( ).
    DATA(t33) = |D34R|.
    t2->load( ).
    APPEND t33 TO t2->items.
    t2->save( ).
    DATA(t35) = |FLTP|.
    t2->load( ).
    APPEND t35 TO t2->items.
    t2->save( ).
    DATA(t37) = |INT1|.
    t2->load( ).
    APPEND t37 TO t2->items.
    t2->save( ).
    DATA(t39) = |INT2|.
    t2->load( ).
    APPEND t39 TO t2->items.
    t2->save( ).
    DATA(t41) = |INT4|.
    t2->load( ).
    APPEND t41 TO t2->items.
    t2->save( ).
    DATA(t43) = |INT8|.
    t2->load( ).
    APPEND t43 TO t2->items.
    t2->save( ).
    DATA(t45) = |LANG|.
    t2->load( ).
    APPEND t45 TO t2->items.
    t2->save( ).
    DATA(t47) = |NUMC|.
    t2->load( ).
    APPEND t47 TO t2->items.
    t2->save( ).
    DATA(t49) = |QUAN|.
    t2->load( ).
    APPEND t49 TO t2->items.
    t2->save( ).
    DATA(t51) = |RAW|.
    t2->load( ).
    APPEND t51 TO t2->items.
    t2->save( ).
    DATA(t53) = |RAWSTRING|.
    t2->load( ).
    APPEND t53 TO t2->items.
    t2->save( ).
    DATA(t55) = |SSTRING|.
    t2->load( ).
    APPEND t55 TO t2->items.
    t2->save( ).
    DATA(t57) = |STRING|.
    t2->load( ).
    APPEND t57 TO t2->items.
    t2->save( ).
    DATA(t59) = |TIMN|.
    t2->load( ).
    APPEND t59 TO t2->items.
    t2->save( ).
    DATA(t61) = |TIMS|.
    t2->load( ).
    APPEND t61 TO t2->items.
    t2->save( ).
    DATA(t63) = |UNIT|.
    t2->load( ).
    APPEND t63 TO t2->items.
    t2->save( ).
    DATA(t65) = |UTCLONG|.
    t2->load( ).
    APPEND t65 TO t2->items.
    t2->save( ).
    zcl_lnt_sql_typd_ltrl_mdl=>typed_literal_types = t2.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1943_672e300060ea.
  ENDMETHOD.
ENDCLASS.
