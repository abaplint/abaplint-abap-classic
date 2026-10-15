* TS: src/rules/sy_read_restriction.ts.module module
CLASS zcl_lnt_sy_rd_rstrctn_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA cloud_allowed TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLASS-DATA keyuser_allowed TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLASS-DATA zlnt_builtin_init_56bea28f17d9 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_d81bf6eacb03.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_rd_rstrctn_mdl IMPLEMENTATION.
  METHOD zlnt_builtin_init_d81bf6eacb03.
    IF zlnt_builtin_init_56bea28f17d9 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_56bea28f17d9 = abap_true.
    DATA t1 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t2) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t4) = t1.
    DATA(t5) = |SY-BATCH|.
    t3 = t4->add( p0 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t7) = t1.
    DATA(t8) = |SY-DBCNT|.
    t6 = t7->add( p0 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t10) = t1.
    DATA(t11) = |SY-FDPOS|.
    t9 = t10->add( p0 = t11 ).
    DATA t12 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t13) = t1.
    DATA(t14) = |SY-INDEX|.
    t12 = t13->add( p0 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t16) = t1.
    DATA(t17) = |SY-LANGU|.
    t15 = t16->add( p0 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t19) = t1.
    DATA(t20) = |SY-MANDT|.
    t18 = t19->add( p0 = t20 ).
    DATA t21 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t22) = t1.
    DATA(t23) = |SY-MSGID|.
    t21 = t22->add( p0 = t23 ).
    DATA t24 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t25) = t1.
    DATA(t26) = |SY-MSGNO|.
    t24 = t25->add( p0 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t28) = t1.
    DATA(t29) = |SY-MSGTY|.
    t27 = t28->add( p0 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t31) = t1.
    DATA(t32) = |SY-MSGV1|.
    t30 = t31->add( p0 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t34) = t1.
    DATA(t35) = |SY-MSGV2|.
    t33 = t34->add( p0 = t35 ).
    DATA t36 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t37) = t1.
    DATA(t38) = |SY-MSGV3|.
    t36 = t37->add( p0 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t40) = t1.
    DATA(t41) = |SY-MSGV4|.
    t39 = t40->add( p0 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t43) = t1.
    DATA(t44) = |SY-SUBRC|.
    t42 = t43->add( p0 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t46) = t1.
    DATA(t47) = |SY-SYSID|.
    t45 = t46->add( p0 = t47 ).
    DATA t48 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t49) = t1.
    DATA(t50) = |SY-TABIX|.
    t48 = t49->add( p0 = t50 ).
    DATA t51 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t52) = t1.
    DATA(t53) = |SY-UNAME|.
    t51 = t52->add( p0 = t53 ).
    IF zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_56bea28f17d9 = abap_false.
      zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_d81bf6eacb03( ).
    ENDIF.
    DATA(t54) = t1.
    zcl_lnt_sy_rd_rstrctn_mdl=>cloud_allowed = t54.
    DATA t55 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t56) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t55 = t56.
    DATA t57 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t58) = t55.
    DATA(t59) = |SY-DBCNT|.
    t57 = t58->add( p0 = t59 ).
    DATA t60 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t61) = t55.
    DATA(t62) = |SY-FDPOS|.
    t60 = t61->add( p0 = t62 ).
    DATA t63 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t64) = t55.
    DATA(t65) = |SY-INDEX|.
    t63 = t64->add( p0 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t67) = t55.
    DATA(t68) = |SY-SUBRC|.
    t66 = t67->add( p0 = t68 ).
    DATA t69 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t70) = t55.
    DATA(t71) = |SY-TABIX|.
    t69 = t70->add( p0 = t71 ).
    IF zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_56bea28f17d9 = abap_false.
      zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_d81bf6eacb03( ).
    ENDIF.
    DATA(t72) = t55.
    zcl_lnt_sy_rd_rstrctn_mdl=>keyuser_allowed = t72.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1959_a62ae2d521aa.
  ENDMETHOD.
ENDCLASS.
