* TS: src/abap/5_syntax/_reference.ts.module module
CLASS zcl_lnt_reference_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA reference_type_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_38ac8d5ee955 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_6f85eeba361a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_reference_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_6f85eeba361a.
    IF zlnt_builtin_init_38ac8d5ee955 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_38ac8d5ee955 = abap_true.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_reference_module=>reference_type_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t3 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t4) = |ObjectOrientedReference|.
    DATA(t5) = |Object|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t7 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t8) = |ObjectOrientedVoidReference|.
    DATA(t9) = |Object (Void)|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t11 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t12) = |ObjectOrientedUnknownReference|.
    DATA(t13) = |Object (Unknown)|.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t15.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t15 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t16) = |TableReference|.
    DATA(t17) = |Table|.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t19.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t19 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t20) = |TableVoidReference|.
    DATA(t21) = |Table (Void)|.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t23.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t23 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t24) = |MethodReference|.
    DATA(t25) = |Method|.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t27.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t27 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t28) = |BuiltinMethodReference|.
    DATA(t29) = |Builtin Method|.
    t26 = t27->set( p0 = t28 p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t31.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t31 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t32) = |ConstructorReference|.
    DATA(t33) = |Constructor Reference|.
    t30 = t31->set( p0 = t32 p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t35.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t35 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t36) = |MethodImplementationReference|.
    DATA(t37) = |Method Implementation|.
    t34 = t35->set( p0 = t36 p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t39.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t39 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t40) = |TypeReference|.
    DATA(t41) = |Type|.
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t43.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t43 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t44) = |BuiltinTypeReference|.
    DATA(t45) = |Builtin Type|.
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t47.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t47 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t48) = |VoidType|.
    DATA(t49) = |Type (Void)|.
    t46 = t47->set( p0 = t48 p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t51.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t51 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t52) = |InferredType|.
    DATA(t53) = |Inferred Type|.
    t50 = t51->set( p0 = t52 p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t55.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t55 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t56) = |FormReference|.
    DATA(t57) = |Form|.
    t54 = t55->set( p0 = t56 p1 = t57 ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t59.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t59 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t60) = |DataReadReference|.
    DATA(t61) = |Read From|.
    t58 = t59->set( p0 = t60 p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t63.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t63 = zcl_lnt_reference_module=>reference_type_namespace.
    DATA(t64) = |DataWriteReference|.
    DATA(t65) = |Write To|.
    t62 = t63->set( p0 = t64 p1 = t65 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1963_cf74a695a571.
  ENDMETHOD.
ENDCLASS.
