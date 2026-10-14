* TS: src/abap/2_statements/expressions/sql_typed_literal.ts.module module
CLASS zcl_lnt_sql_typd_ltrl_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA typed_literal_types TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_e2b55c8dcc51 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_527ecce2c635.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t5) = |CHAR|.
    APPEND t5 TO t4->items.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t7) = |CLNT|.
    APPEND t7 TO t6->items.
    DATA(t8) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t9) = |CUKY|.
    APPEND t9 TO t8->items.
    DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t11) = |CURR|.
    APPEND t11 TO t10->items.
    DATA(t12) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t13) = |DATN|.
    APPEND t13 TO t12->items.
    DATA(t14) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t15) = |DATS|.
    APPEND t15 TO t14->items.
    DATA(t16) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t17) = |DEC|.
    APPEND t17 TO t16->items.
    DATA(t18) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t19) = |DECFLOAT16|.
    APPEND t19 TO t18->items.
    DATA(t20) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t21) = |DECFLOAT34|.
    APPEND t21 TO t20->items.
    DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t23) = |D16N|.
    APPEND t23 TO t22->items.
    DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t25) = |D34N|.
    APPEND t25 TO t24->items.
    DATA(t26) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t27) = |D16D|.
    APPEND t27 TO t26->items.
    DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t29) = |D34D|.
    APPEND t29 TO t28->items.
    DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t31) = |D16R|.
    APPEND t31 TO t30->items.
    DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t33) = |D34R|.
    APPEND t33 TO t32->items.
    DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t35) = |FLTP|.
    APPEND t35 TO t34->items.
    DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t37) = |INT1|.
    APPEND t37 TO t36->items.
    DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t39) = |INT2|.
    APPEND t39 TO t38->items.
    DATA(t40) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t41) = |INT4|.
    APPEND t41 TO t40->items.
    DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t43) = |INT8|.
    APPEND t43 TO t42->items.
    DATA(t44) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t45) = |LANG|.
    APPEND t45 TO t44->items.
    DATA(t46) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t47) = |NUMC|.
    APPEND t47 TO t46->items.
    DATA(t48) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t49) = |QUAN|.
    APPEND t49 TO t48->items.
    DATA(t50) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t51) = |RAW|.
    APPEND t51 TO t50->items.
    DATA(t52) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t53) = |RAWSTRING|.
    APPEND t53 TO t52->items.
    DATA(t54) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t55) = |SSTRING|.
    APPEND t55 TO t54->items.
    DATA(t56) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t57) = |STRING|.
    APPEND t57 TO t56->items.
    DATA(t58) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t59) = |TIMN|.
    APPEND t59 TO t58->items.
    DATA(t60) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t61) = |TIMS|.
    APPEND t61 TO t60->items.
    DATA(t62) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t63) = |UNIT|.
    APPEND t63 TO t62->items.
    DATA(t64) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t65) = |UTCLONG|.
    APPEND t65 TO t64->items.
    DATA(t66) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    t1 = t66.
    zcl_lnt_sql_typd_ltrl_mdl=>typed_literal_types = t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1848_94973780c8f3.
  ENDMETHOD.
ENDCLASS.
