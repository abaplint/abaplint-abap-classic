* TS: src/abap/5_syntax/_scope_type.ts.module module
CLASS zcl_lnt_scope_type_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA scope_type_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_dfd373a603fc TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_f8ae50df5ce6.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_scope_type_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_f8ae50df5ce6.
    IF zlnt_builtin_init_dfd373a603fc = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_dfd373a603fc = abap_true.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_scope_type_module=>scope_type_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t3 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t4) = |BuiltIn|.
    DATA(t5) = |_builtin|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t7 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t8) = |Dummy|.
    DATA(t9) = |_dummy|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t11 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t12) = |SelectionEvent|.
    DATA(t13) = |selection_event|.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t15.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t15 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t16) = |Global|.
    DATA(t17) = |_global|.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t19.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t19 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t20) = |Program|.
    DATA(t21) = |_program|.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t23.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t23 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t24) = |TypePool|.
    DATA(t25) = |_type_pool|.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t27.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t27 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t28) = |FunctionGroup|.
    DATA(t29) = |_function_group|.
    t26 = t27->set( p0 = t28 p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t31.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t31 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t32) = |ClassDefinition|.
    DATA(t33) = |class_definition|.
    t30 = t31->set( p0 = t32 p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t35.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t35 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t36) = |Interface|.
    DATA(t37) = |interface|.
    t34 = t35->set( p0 = t36 p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t39.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t39 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t40) = |ClassImplementation|.
    DATA(t41) = |class_implementation|.
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t43.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t43 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t44) = |Form|.
    DATA(t45) = |form|.
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t47.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t47 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t48) = |FunctionModule|.
    DATA(t49) = |function|.
    t46 = t47->set( p0 = t48 p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t51.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t51 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t52) = |Method|.
    DATA(t53) = |method|.
    t50 = t51->set( p0 = t52 p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t55.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t55 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t56) = |MethodInstance|.
    DATA(t57) = |method_instance|.
    t54 = t55->set( p0 = t56 p1 = t57 ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t59.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t59 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t60) = |MethodDefinition|.
    DATA(t61) = |method_definition|.
    t58 = t59->set( p0 = t60 p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t63.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t63 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t64) = |For|.
    DATA(t65) = |for|.
    t62 = t63->set( p0 = t64 p1 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t67.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t67 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t68) = |Let|.
    DATA(t69) = |let|.
    t66 = t67->set( p0 = t68 p1 = t69 ).
    DATA t70 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t71.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t71 = zcl_lnt_scope_type_module=>scope_type_namespace.
    DATA(t72) = |OpenSQL|.
    DATA(t73) = |open_sql|.
    t70 = t71->set( p0 = t72 p1 = t73 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1964_fcee8548109b.
  ENDMETHOD.
ENDCLASS.
