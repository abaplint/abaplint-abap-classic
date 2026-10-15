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
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = |CHAR|.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t6) = t2.
    DATA(t7) = |CLNT|.
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA(t8) = t2.
    DATA(t9) = |CUKY|.
    t8->load( ).
    APPEND t9 TO t8->items.
    t8->save( ).
    DATA(t10) = t2.
    DATA(t11) = |CURR|.
    t10->load( ).
    APPEND t11 TO t10->items.
    t10->save( ).
    DATA(t12) = t2.
    DATA(t13) = |DATN|.
    t12->load( ).
    APPEND t13 TO t12->items.
    t12->save( ).
    DATA(t14) = t2.
    DATA(t15) = |DATS|.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t16) = t2.
    DATA(t17) = |DEC|.
    t16->load( ).
    APPEND t17 TO t16->items.
    t16->save( ).
    DATA(t18) = t2.
    DATA(t19) = |DECFLOAT16|.
    t18->load( ).
    APPEND t19 TO t18->items.
    t18->save( ).
    DATA(t20) = t2.
    DATA(t21) = |DECFLOAT34|.
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA(t22) = t2.
    DATA(t23) = |D16N|.
    t22->load( ).
    APPEND t23 TO t22->items.
    t22->save( ).
    DATA(t24) = t2.
    DATA(t25) = |D34N|.
    t24->load( ).
    APPEND t25 TO t24->items.
    t24->save( ).
    DATA(t26) = t2.
    DATA(t27) = |D16D|.
    t26->load( ).
    APPEND t27 TO t26->items.
    t26->save( ).
    DATA(t28) = t2.
    DATA(t29) = |D34D|.
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA(t30) = t2.
    DATA(t31) = |D16R|.
    t30->load( ).
    APPEND t31 TO t30->items.
    t30->save( ).
    DATA(t32) = t2.
    DATA(t33) = |D34R|.
    t32->load( ).
    APPEND t33 TO t32->items.
    t32->save( ).
    DATA(t34) = t2.
    DATA(t35) = |FLTP|.
    t34->load( ).
    APPEND t35 TO t34->items.
    t34->save( ).
    DATA(t36) = t2.
    DATA(t37) = |INT1|.
    t36->load( ).
    APPEND t37 TO t36->items.
    t36->save( ).
    DATA(t38) = t2.
    DATA(t39) = |INT2|.
    t38->load( ).
    APPEND t39 TO t38->items.
    t38->save( ).
    DATA(t40) = t2.
    DATA(t41) = |INT4|.
    t40->load( ).
    APPEND t41 TO t40->items.
    t40->save( ).
    DATA(t42) = t2.
    DATA(t43) = |INT8|.
    t42->load( ).
    APPEND t43 TO t42->items.
    t42->save( ).
    DATA(t44) = t2.
    DATA(t45) = |LANG|.
    t44->load( ).
    APPEND t45 TO t44->items.
    t44->save( ).
    DATA(t46) = t2.
    DATA(t47) = |NUMC|.
    t46->load( ).
    APPEND t47 TO t46->items.
    t46->save( ).
    DATA(t48) = t2.
    DATA(t49) = |QUAN|.
    t48->load( ).
    APPEND t49 TO t48->items.
    t48->save( ).
    DATA(t50) = t2.
    DATA(t51) = |RAW|.
    t50->load( ).
    APPEND t51 TO t50->items.
    t50->save( ).
    DATA(t52) = t2.
    DATA(t53) = |RAWSTRING|.
    t52->load( ).
    APPEND t53 TO t52->items.
    t52->save( ).
    DATA(t54) = t2.
    DATA(t55) = |SSTRING|.
    t54->load( ).
    APPEND t55 TO t54->items.
    t54->save( ).
    DATA(t56) = t2.
    DATA(t57) = |STRING|.
    t56->load( ).
    APPEND t57 TO t56->items.
    t56->save( ).
    DATA(t58) = t2.
    DATA(t59) = |TIMN|.
    t58->load( ).
    APPEND t59 TO t58->items.
    t58->save( ).
    DATA(t60) = t2.
    DATA(t61) = |TIMS|.
    t60->load( ).
    APPEND t61 TO t60->items.
    t60->save( ).
    DATA(t62) = t2.
    DATA(t63) = |UNIT|.
    t62->load( ).
    APPEND t63 TO t62->items.
    t62->save( ).
    DATA(t64) = t2.
    DATA(t65) = |UTCLONG|.
    t64->load( ).
    APPEND t65 TO t64->items.
    t64->save( ).
    DATA(t66) = t2.
    t1 = t66.
    zcl_lnt_sql_typd_ltrl_mdl=>typed_literal_types = t1.
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
