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
    zcl_lnt_reference_module=>reference_type_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t2 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |ObjectOrientedReference| p1 = |Object| ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t6 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |ObjectOrientedVoidReference| p1 = |Object (Void)| ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t10 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |ObjectOrientedUnknownReference| p1 = |Object (Unknown)| ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t14 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |TableReference| p1 = |Table| ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t18 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |TableVoidReference| p1 = |Table (Void)| ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t22 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |MethodReference| p1 = |Method| ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t26 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |BuiltinMethodReference| p1 = |Builtin Method| ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t30 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |ConstructorReference| p1 = |Constructor Reference| ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t34 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |MethodImplementationReference| p1 = |Method Implementation| ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t38 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |TypeReference| p1 = |Type| ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t42 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |BuiltinTypeReference| p1 = |Builtin Type| ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t46 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |VoidType| p1 = |Type (Void)| ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t50 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |InferredType| p1 = |Inferred Type| ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t54 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |FormReference| p1 = |Form| ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t58 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |DataReadReference| p1 = |Read From| ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_reference_module=>zlnt_builtin_init_38ac8d5ee955 = abap_false.
      zcl_lnt_reference_module=>zlnt_builtin_init_6f85eeba361a( ).
    ENDIF.
    t62 = zcl_lnt_reference_module=>reference_type_namespace->set( p0 = |DataWriteReference| p1 = |Write To| ).
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
